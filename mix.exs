defmodule LeftPad.Mixfile do
  use Mix.Project

  def project do
    [app: :left_pad,
     version: "0.0.3",
     elixir: "~> 1.2",
     description: description,
     package: package,
     deps: deps,
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger]]
  end

  defp description do
    """
    Pad a string to the left with any number of characters.
    """
  end

  defp package do
    [maintainers: ["Rodney Folz"],
     licenses: ["MPL-2.0"],
     links: %{"GitHub": "https://github.com/folz/left_pad.ex"}]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [{:ex_doc, ">= 0.11.4", only: [:dev]}]
  end
end
