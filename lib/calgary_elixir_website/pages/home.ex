defmodule CalgaryElixirWebsite.Pages.Home do
  use Phoenix.Component

  import CalgaryElixirWebsite.Components.Layouts

  def render(assigns) do
    ~H"""
    <.root page_title="Calgary Elixir Meetup">
      <h1 class="text-3xl font-bold text-purple-800 mb-4">Calgary Elixir Meetup</h1>
      <p class="mb-3">Welcome to the Wiki for Elixir in Calgary!</p>
      <p class="text-gray-700">
        Here you can find all sort of helpful links such as resources for learning Elixir,
        a list of local companies using Elixir in production, and info about the Elixir Calgary Meetup.
      </p>
    </.root>
    """
  end
end
