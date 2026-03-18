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
      </head>
      <body>
        <nav>
          <a href="/">Home</a> |
          <a href="/meetup/">Meetup</a> |
          <a href="/resources/">Resources</a> |
          <a href="/blog/">Blog</a>
        </nav>
        <main>
          <%= render_slot(@inner_block) %>
        </main>
      </body>
    </html>
    """
  end
end
