defmodule MixTestBug.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      MixTestBug.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: MixTestBug.PubSub}
      # Start a worker by calling: MixTestBug.Worker.start_link(arg)
      # {MixTestBug.Worker, arg}
    ]

    Supervisor.start_link(children, strategy: :one_for_one, name: MixTestBug.Supervisor)
  end
end
