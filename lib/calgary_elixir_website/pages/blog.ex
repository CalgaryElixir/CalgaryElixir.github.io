defmodule CalgaryElixirWebsite.Pages.Blog do
  use Phoenix.Component

  import CalgaryElixirWebsite.Components.Layouts

  def index(assigns) do
    ~H"""
    <.root page_title="Blog - Calgary Elixir">
      <h1 class="text-3xl font-bold text-purple-800 mb-6">Blog</h1>
      <ul class="space-y-3">
        <li :for={post <- @posts} class="flex items-baseline gap-3">
          <time class="text-sm text-gray-500 shrink-0"><%= post.date %></time>
          <a href={"/blog/#{post.id}/"} class="text-purple-800 underline hover:text-purple-400">
            <%= post.title %>
          </a>
        </li>
      </ul>
    </.root>
    """
  end

  def show(assigns) do
    ~H"""
    <.root page_title={"#{@post.title} - Calgary Elixir"}>
      <article>
        <h1 class="text-3xl font-bold text-purple-800 mb-1"><%= @post.title %></h1>
        <time class="text-sm text-gray-500"><%= @post.date %></time>
        <div class="mt-4 prose prose-purple max-w-none">
          <%= Phoenix.HTML.raw(@post.body) %>
        </div>
      </article>
      <p class="mt-8">
        <a href="/blog/" class="text-purple-800 underline hover:text-purple-400">&larr; Back to blog</a>
      </p>
    </.root>
    """
  end
end
