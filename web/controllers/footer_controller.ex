defmodule LakeshoreElectric.FooterController do
  use LakeshoreElectric.Web, :controller

  def footer(conn, _params) do
    render conn, "footer.html"
  end
end