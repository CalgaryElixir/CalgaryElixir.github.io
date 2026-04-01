defmodule CalgaryElixirWebsite.Pages.Companies do
  use Phoenix.Component

  import CalgaryElixirWebsite.Components.Layouts

  def render(assigns) do
    ~H"""
    <.root page_title="Calgary Companies Using Elixir - Calgary Elixir">
      <h1 class="text-3xl font-bold text-purple-800 mb-6">Calgary Companies Using Elixir</h1>
    </.root>
    """
  end
end
