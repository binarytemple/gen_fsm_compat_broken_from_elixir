defmodule GenFsmCompatBrokenFromElixir.MixProject do
  use Mix.Project

  def project do
    [
      app: :gen_fsm_compat_broken_from_elixir,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps()
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
      {:riak_core, git: "git@github.com:marianoguerra/riak_core.git", branch: "riak_core_lite_ng"},
      {:lager,  [ git: "git://github.com/erlang-lager/lager", tag: "3.5.2", manager: :rebar3, override: true]},
      {:goldrush, "~>0.1.8", [env: :prod, repo: "hexpm", hex: "goldrush", manager: :rebar3, override: true]},
      {:cuttlefish,  [ git: "git://github.com/bryanhuntesl/cuttlefish.git", branch: "develop",  override: true]},
      {:getopt,  [ git: "https://github.com/freeakdb/getopt.git", tag: "r20-rebar3", manager: :rebar, override: true ]}
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"},
    ]
  end
end
