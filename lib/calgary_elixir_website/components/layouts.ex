defmodule CalgaryElixirWebsite.Components.Layouts do
  use Phoenix.Component

  def root(assigns) do
    ~H"""
    <!DOCTYPE html>
    <html lang="en">
      <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <title><%= @page_title %></title>
        <link rel="stylesheet" href="/assets/css/app.css" />
      </head>
      <body class="min-h-screen bg-white text-gray-900 flex flex-col">
        <nav class="bg-purple-800 text-white px-4 py-3">
          <div class="max-w-3xl mx-auto flex items-center justify-between">
            <a href="/" class="font-bold text-lg tracking-wide">Calgary Elixir</a>
            <div class="flex gap-6 text-sm font-medium">
              <a href="/meetup/" class="hover:text-purple-400">Meetup</a>
              <a href="/resources/" class="hover:text-purple-400">Resources</a>
              <a href="/blog/" class="hover:text-purple-400">Blog</a>
            </div>
          </div>
        </nav>
        <main class="max-w-3xl mx-auto w-full px-4 py-8 flex-1">
          <%= render_slot(@inner_block) %>
        </main>
        <footer class="border-t border-gray-200 py-6 text-center text-sm text-gray-500">
          CC BY-NC 4.0 &mdash; Calgary Elixir. Built with
          <a href="https://elixir-lang.org" class="underline hover:text-purple-800">Elixir</a>.
        </footer>
      </body>
    </html>
    """
  end
end
