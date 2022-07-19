defmodule MixTestBugWeb.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      MixTestBugWeb.Telemetry,
      # Start the Endpoint (http/https)
      MixTestBugWeb.Endpoint
      # Start a worker by calling: MixTestBugWeb.Worker.start_link(arg)
      # {MixTestBugWeb.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: MixTestBugWeb.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    MixTestBugWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
