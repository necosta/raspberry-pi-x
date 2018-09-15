defmodule RaspberryPiWeb.PageController do
  use RaspberryPiWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
