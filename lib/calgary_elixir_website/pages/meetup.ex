defmodule CalgaryElixirWebsite.Pages.Meetup do
  use Phoenix.Component

  import CalgaryElixirWebsite.Components.Layouts

  def render(assigns) do
    ~H"""
    <.root page_title="Meetup - Calgary Elixir">
      <h1 class="text-3xl font-bold text-purple-800 mb-4">Meetup</h1>
      <p class="mb-3">
        The Elixir Calgary Meetup is held on the 3rd Wednesday of every other month starting January.
        Everyone is welcome to join, whether you're a seasoned Elixir pro or just curious to learn more
        about Functional Programming!
      </p>
      <p class="text-gray-700">
        Each meetup, there will be 2-3 technical talks presented by members of the local Elixir community,
        as well as food and drink provided by one of the Meetup's sponsors. You can find more info about
        the meetup and a schedule of upcoming events at
        <a href="https://www.meetup.com/elixir-calgary/" class="text-purple-800 underline hover:text-purple-400">meetup.com</a>.
      </p>
    </.root>
    """
  end
end
