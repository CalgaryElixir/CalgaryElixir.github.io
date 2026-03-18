defmodule CalgaryElixirWebsite.Pages.NotFound do
  use Phoenix.Component

  import CalgaryElixirWebsite.Components.Layouts

  def render(assigns) do
    ~H"""
    <.root page_title="Page Not Found - Calgary Elixir">
      <div class="text-center py-16">
        <h1 class="text-5xl font-bold text-purple-800 mb-4">404</h1>
        <p class="text-xl text-gray-600 mb-6">Page not found</p>
        <a href="/" class="text-purple-800 underline hover:text-purple-400">Go back home</a>
      </div>
    </.root>
    """
  end
end
