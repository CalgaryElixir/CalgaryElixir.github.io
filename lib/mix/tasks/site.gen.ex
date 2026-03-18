defmodule Mix.Tasks.Site.Gen do
  use Mix.Task

  @shortdoc "Generate the static site into output/"

  def run(_args) do
    Mix.Task.run("app.start")
    CalgaryElixirWebsite.generate()
  end
end
