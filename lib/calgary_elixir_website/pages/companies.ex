defmodule CalgaryElixirWebsite.Pages.Companies do
  use Phoenix.Component

  import CalgaryElixirWebsite.Components.Layouts

  def render(assigns) do
    ~H"""
    <.root page_title="Calgary Companies Using Elixir - Calgary Elixir">
      <h1 class="text-3xl font-bold text-purple-800 mb-6">Calgary Companies Using Elixir</h1>

      <section class="mb-6">
        <h2 class="text-xl font-semibold mb-2">Cold Bore Technology</h2>
        <p>Cold Bore Technology provides real-time completions data solutions for fracking
        operations. Their SmartPAD platform delivers real-time, actionable insights during
        well completion operations, accessible on any device.</p>
        <p>Find them at <a href="https://www.coldboretechnology.com/" class="text-purple-800 underline hover:text-purple-400">coldboretechnology.com</a></p>
      </section>

      <section class="mb-6">
        <h2 class="text-xl font-semibold mb-2">SAGA Wisdom</h2>
        <p>SAGA Wisdom is a digital learning platform delivering on-demand training courses for
        energy industry professionals. Their platform connects oil and gas workers with expert
        instructors, offering accessible and cost-effective professional development.</p>
        <p>Find them at <a href="https://sagawisdom.com/" class="text-purple-800 underline hover:text-purple-400">sagawisdom.com</a></p>
      </section>

      <section class="mb-6">
        <h2 class="text-xl font-semibold mb-2">True North Mortgage</h2>
        <p>True North Mortgage is one of Canada's leading mortgage brokerages, offering competitive
        rates and access to mortgages from multiple lenders. They provide unbiased expert advice
        across online, in-store, and phone channels.</p>
        <p>Find them at <a href="https://www.truenorthmortgage.ca/" class="text-purple-800 underline hover:text-purple-400">truenorthmortgage.ca</a></p>
      </section>
    </.root>
    """
  end
end
