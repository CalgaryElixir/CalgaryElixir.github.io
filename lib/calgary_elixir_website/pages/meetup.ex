defmodule CalgaryElixirWebsite.Pages.Meetup do
  use Phoenix.Component

  import CalgaryElixirWebsite.Components.Layouts

  def render(assigns) do
    ~H"""
    <.root page_title="Meetup - Calgary Elixir">
      <h1>Meetup</h1>
      <p>
        The Elixir Calgary Meetup is held on the 3rd Wednesday of every other month starting January.
        Everyone is welcome to join, whether you're a seasoned Elixir pro or just curious to learn more
        about Functional Programming!
      </p>
      <p>
        Each meetup, there will be 2-3 technical talks presented by members of the local Elixir community,
        as well as food and drink provided by one of the Meetup's sponsors. You can find more info about
        the meetup and a schedule of upcoming events at
        <a href="https://www.meetup.com/elixir-calgary/">meetup.com</a>.
      </p>
    </.root>
    """
  end
end
