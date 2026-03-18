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
        <%= render_slot(@inner_block) %>
      </body>
    </html>
    """
  end
end
