# Calgary Elixir Website

The website for the Calgary Elixir community, built with Elixir and [NimblePublisher](https://github.com/dashbitco/nimble_publisher).

## Setup

```sh
mix deps.get
```

## Generate the site

```sh
mix site.gen
```

Static HTML is written to `output/`. Open `output/index.html` in a browser to preview.

## Deployment

The site is deployed to GitHub Pages via GitHub Actions on push to `main`.
