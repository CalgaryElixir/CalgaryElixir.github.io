defmodule CalgaryElixirWebsite.Pages.Blog do
  use Phoenix.Component

  import CalgaryElixirWebsite.Components.Layouts

  def index(assigns) do
    ~H"""
    <.root page_title="Blog - Calgary Elixir">
      <h1>Blog</h1>
      <ul>
        <li :for={post <- @posts}>
          <a href={"/blog/#{post.id}/"}>
            <%= post.title %>
          </a>
          <time>(<%= post.date %>)</time>
        </li>
      </ul>
    </.root>
    """
  end

  def show(assigns) do
    ~H"""
    <.root page_title={"#{@post.title} - Calgary Elixir"}>
      <article>
        <h1><%= @post.title %></h1>
        <time><%= @post.date %></time>
        <%= Phoenix.HTML.raw(@post.body) %>
      </article>
      <p><a href="/blog/">Back to blog</a></p>
    </.root>
    """
  end
end
