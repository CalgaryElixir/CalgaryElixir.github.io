defmodule CalgaryElixirWebsite.Pages.Home do
  use Phoenix.Component

  import CalgaryElixirWebsite.Components.Layouts

  def render(assigns) do
    ~H"""
    <.root page_title="Calgary Elixir Meetup">
      <h1>Calgary Elixir Meetup</h1>
      <p>Welcome to the Wiki for Elixir in Calgary!</p>
      <p>
        Here you can find all sort of helpful links such as resources for learning Elixir,
        a list of local companies using Elixir in production, and info about the Elixir Calgary Meetup.
      </p>
    </.root>
    """
  end
end
