defmodule LakeshoreElectric.NavController do
  use LakeshoreElectric.Web, :controller

  def nav(conn, _params) do
    render conn, "nav.html"
  end
end