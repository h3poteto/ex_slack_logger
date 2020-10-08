defmodule ExSlackLogger.MixProject do
  use Mix.Project

  def project do
    [
      app: :ex_slack_logger,
      version: "0.1.1",
      elixir: "~> 1.5",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      description: "Logger backend module for Slack.",
      package: [
        maintainers: ["h3poteto"],
        licenses: ["MIT"],
        links: %{"GitHub" => "https://github.com/h3poteto/ex_slack_logger"}
      ]
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:httpoison, "~> 1.6"},
      {:poison, "~> 4.0"},
      {:timex, "~> 3.5"},
      {:credo, "~> 1.4.1", only: [:dev, :test], runtime: false},
      {:ex_doc, "~> 0.21", only: :dev, runtime: false}
    ]
  end
end
