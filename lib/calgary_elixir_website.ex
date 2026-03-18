defmodule CalgaryElixirWebsite do
  @moduledoc """
  Static site generator for the Calgary Elixir website.
  """

  @output_dir "output"

  def generate do
    File.rm_rf!(@output_dir)
    File.mkdir_p!(@output_dir)

    generate_page("index.html", &CalgaryElixirWebsite.Pages.Home.render/1, %{})
    generate_page("meetup/index.html", &CalgaryElixirWebsite.Pages.Meetup.render/1, %{})
    generate_page("resources/index.html", &CalgaryElixirWebsite.Pages.Resources.render/1, %{})
    generate_page("404.html", &CalgaryElixirWebsite.Pages.NotFound.render/1, %{})

    posts = CalgaryElixirWebsite.Blog.all_posts()
    generate_page("blog/index.html", &CalgaryElixirWebsite.Pages.Blog.index/1, %{posts: posts})

    for post <- posts do
      generate_page("blog/#{post.id}/index.html", &CalgaryElixirWebsite.Pages.Blog.show/1, %{
        post: post
      })
    end

    copy_static_assets()
    File.write!(Path.join(@output_dir, ".nojekyll"), "")

    IO.puts("Site generated in #{@output_dir}/")
  end

  defp generate_page(path, render_fn, assigns) do
    html =
      assigns
      |> render_fn.()
      |> Phoenix.HTML.Safe.to_iodata()
      |> IO.iodata_to_binary()

    full_path = Path.join(@output_dir, path)
    full_path |> Path.dirname() |> File.mkdir_p!()
    File.write!(full_path, html)
  end

  defp copy_static_assets do
    File.cp_r!("priv/static/assets", Path.join(@output_dir, "assets"))
    File.cp_r!("assets/images", Path.join(@output_dir, "assets/images"))
  end
end
