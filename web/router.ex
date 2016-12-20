defmodule LakeshoreElectric.Router do
  use LakeshoreElectric.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", LakeshoreElectric do
    pipe_through :browser # Use the default browser stack

    get "/", LandingController, :index
    get "/panel", PanelController, :index
    get "/wiring", WiringController, :index
    get "/alarm", AlarmController, :index
    get "/upgrades", UpgradesController, :index
    get "/solar", SolarController, :index
    get "/retrofits", RetrofitsController, :index
    get "/contact", ContactController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", LakeshoreElectric do
  #   pipe_through :api
  # end
end
