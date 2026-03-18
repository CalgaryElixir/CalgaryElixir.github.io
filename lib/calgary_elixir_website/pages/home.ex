defmodule CalgaryElixirWebsite.Pages.Home do
  use Phoenix.Component

  import CalgaryElixirWebsite.Components.Layouts

  def render(assigns) do
    ~H"""
    <.root page_title="Calgary Elixir Meetup">
      <h1>Calgary Elixir Meetup</h1>
    </.root>
    """
  end
end
