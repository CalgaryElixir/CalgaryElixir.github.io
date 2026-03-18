defmodule CalgaryElixirWebsite do
  @moduledoc """
  Static site generator for the Calgary Elixir website.
  """

  @output_dir "output"

  def generate do
    File.rm_rf!(@output_dir)
    File.mkdir_p!(@output_dir)

    generate_page("index.html", &CalgaryElixirWebsite.Pages.Home.render/1, %{})

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
end
