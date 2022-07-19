defmodule MixTestBugWeb.Router do
  use MixTestBugWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", MixTestBugWeb do
    pipe_through :api
  end
end
