defmodule CalgaryElixirWebsite.Pages.Resources do
  use Phoenix.Component

  import CalgaryElixirWebsite.Components.Layouts

  def render(assigns) do
    ~H"""
    <.root page_title="Helpful Resources - Calgary Elixir">
      <h1>Helpful Resources</h1>

      <h2>Global Resources</h2>
      <ul>
        <li><a href="https://elixir-lang.org/">Elixir Documentation</a></li>
        <li>
          <a href="https://elixirschool.com/en/lessons/basics/basics">Elixir School</a>
          - Step by step guide to getting started with Elixir.
        </li>
        <li>
          <a href="https://elixir-slack.community/">Elixir Slack</a>
          - Many of our local members are active in the <code>#calgary</code> channel.
        </li>
        <li>
          <a href="https://elixirforum.com/">Elixir Forum</a>
          - Great forum for help with Elixir. In many cases, core members of the Elixir team will be contributing to discussions!
        </li>
        <li>
          <a href="https://elixirjobs.net/">Elixir Jobs</a>
          - Global Elixir job board.
        </li>
      </ul>

      <h2>Local Resources</h2>
      <ul>
        <li>
          <a href="https://www.meetup.com/elixir-calgary/">Calgary Elixir Meetup</a>
          - A bi-monthly event hosted by Elixir developers.
        </li>
        <li>Calgary companies using Elixir - Coming soon!</li>
      </ul>

      <h2>Recommended Reading</h2>
      <ul>
        <li><a href="https://www.manning.com/books/elixir-in-action-third-edition">Elixir in Action</a></li>
        <li><a href="https://pragprog.com/titles/elixir16/programming-elixir-1-6/">Programming Elixir</a></li>
      </ul>

      <h2>Mailing Lists</h2>
      <ul>
        <li>
          <a href="https://elixirmerge.com/">Elixir Merge</a>
          - Daily email featuring new Elixir content.
        </li>
        <li>
          <a href="https://elixir-radar.com/">Elixir Radar</a>
          - Weekly newsletter with updates from the Elixir community.
        </li>
      </ul>
    </.root>
    """
  end
end
