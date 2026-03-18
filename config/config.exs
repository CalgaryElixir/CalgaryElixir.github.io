import Config

config :tailwind,
  version: "3.4.17",
  calgary_elixir: [
    args: ~w(
      --config=assets/tailwind.config.js
      --input=assets/css/app.css
      --output=priv/static/assets/css/app.css
    ),
    cd: Path.expand("..", __DIR__)
  ]
