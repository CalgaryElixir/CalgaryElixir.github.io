defmodule CalgaryElixirWebsite.Blog.Post do
  @enforce_keys [:id, :title, :body, :date, :tags]
  defstruct [:id, :title, :body, :date, :tags]

  def build(filename, attrs, body) do
    [year, month, day | slug_parts] =
      filename |> Path.rootname() |> Path.basename() |> String.split("-", parts: 4)

    date = Date.from_iso8601!("#{year}-#{month}-#{day}")
    id = List.last(slug_parts)

    struct!(__MODULE__,
      id: id,
      title: Map.fetch!(attrs, :title),
      body: body,
      date: date,
      tags: Map.get(attrs, :tags, [])
    )
  end
end
