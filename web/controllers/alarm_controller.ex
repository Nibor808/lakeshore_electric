defmodule LakeshoreElectric.AlarmController do
  use LakeshoreElectric.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end