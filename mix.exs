defmodule RaspberryPi.MixProject do
  use Mix.Project

  def project do
    [
      app: :raspberry_pi,
      version: "0.1.0",
      elixir: "~> 1.7",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {RaspberryPi, []}
    ]
  end

  defp deps do
    [
      {:cowboy, "~> 1.1"},
      {:plug, "~> 1.4"},
      {:hlclock, "~> 0.1.5"}
    ]
  end
end
