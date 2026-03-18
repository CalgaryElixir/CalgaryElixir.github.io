defmodule CalgaryElixirWebsite.Pages.Resources do
  use Phoenix.Component

  import CalgaryElixirWebsite.Components.Layouts

  def render(assigns) do
    ~H"""
    <.root page_title="Helpful Resources - Calgary Elixir">
      <h1 class="text-3xl font-bold text-purple-800 mb-6">Helpful Resources</h1>

      <section class="mb-6">
        <h2 class="text-xl font-semibold mb-2">Global Resources</h2>
        <ul class="list-disc pl-6 space-y-1">
          <li><a href="https://elixir-lang.org/" class="text-purple-800 underline hover:text-purple-400">Elixir Documentation</a></li>
          <li>
            <a href="https://elixirschool.com/en/lessons/basics/basics" class="text-purple-800 underline hover:text-purple-400">Elixir School</a>
            - Step by step guide to getting started with Elixir.
          </li>
          <li>
            <a href="https://elixir-slack.community/" class="text-purple-800 underline hover:text-purple-400">Elixir Slack</a>
            - Many of our local members are active in the <code class="bg-gray-100 px-1 rounded text-sm">#calgary</code> channel.
          </li>
          <li>
            <a href="https://elixirforum.com/" class="text-purple-800 underline hover:text-purple-400">Elixir Forum</a>
            - Great forum for help with Elixir. In many cases, core members of the Elixir team will be contributing to discussions!
          </li>
          <li>
            <a href="https://elixirjobs.net/" class="text-purple-800 underline hover:text-purple-400">Elixir Jobs</a>
            - Global Elixir job board.
          </li>
        </ul>
      </section>

      <section class="mb-6">
        <h2 class="text-xl font-semibold mb-2">Local Resources</h2>
        <ul class="list-disc pl-6 space-y-1">
          <li>
            <a href="https://www.meetup.com/elixir-calgary/" class="text-purple-800 underline hover:text-purple-400">Calgary Elixir Meetup</a>
            - A bi-monthly event hosted by Elixir developers.
          </li>
          <li>Calgary companies using Elixir - Coming soon!</li>
        </ul>
      </section>

      <section class="mb-6">
        <h2 class="text-xl font-semibold mb-2">Recommended Reading</h2>
        <ul class="list-disc pl-6 space-y-1">
          <li><a href="https://www.manning.com/books/elixir-in-action-third-edition" class="text-purple-800 underline hover:text-purple-400">Elixir in Action</a></li>
          <li><a href="https://pragprog.com/titles/elixir16/programming-elixir-1-6/" class="text-purple-800 underline hover:text-purple-400">Programming Elixir</a></li>
        </ul>
      </section>

      <section class="mb-6">
        <h2 class="text-xl font-semibold mb-2">Mailing Lists</h2>
        <ul class="list-disc pl-6 space-y-1">
          <li>
            <a href="https://elixirmerge.com/" class="text-purple-800 underline hover:text-purple-400">Elixir Merge</a>
            - Daily email featuring new Elixir content.
          </li>
          <li>
            <a href="https://elixir-radar.com/" class="text-purple-800 underline hover:text-purple-400">Elixir Radar</a>
            - Weekly newsletter with updates from the Elixir community.
          </li>
        </ul>
      </section>
    </.root>
    """
  end
end
