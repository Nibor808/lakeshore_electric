defmodule LakeshoreElectric.HeadController do
  use LakeshoreElectric.Web, :controller

  def nav(conn, _params) do
    render conn, "head.html"
  end
end