defmodule RaspberryPiWeb.PageControllerTest do
  use RaspberryPiWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get(conn, "/")
    assert html_response(conn, 200) =~ "Welcome to my Awesome App!"
  end
end
