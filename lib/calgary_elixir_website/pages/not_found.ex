defmodule CalgaryElixirWebsite.Pages.NotFound do
  use Phoenix.Component

  import CalgaryElixirWebsite.Components.Layouts

  def render(assigns) do
    ~H"""
    <.root page_title="Page Not Found - Calgary Elixir">
      <h1>404 - Page Not Found</h1>
      <p>Sorry, the page you're looking for doesn't exist.</p>
      <p><a href="/">Go back home</a></p>
    </.root>
    """
  end
end
