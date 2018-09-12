defmodule RaspberryPi.Router do
  use Plug.Router
  plug(:match)
  plug(:dispatch)

  get "/" do
    {:ok, new_clock} = HLClock.send_timestamp()
    {:ok, dt} = DateTime.from_unix(new_clock.time, :millisecond)
    # IO.puts (String.slice(DateTime.to_string(dt),0..18))
    page_contents =
      EEx.eval_file("templates/main.eex", date_str: String.slice(DateTime.to_string(dt), 0..18))

    conn
    |> Plug.Conn.put_resp_content_type("text/html")
    |> Plug.Conn.send_resp(200, page_contents)
  end

  get "/result" do
    conn |> ok(to_string(RaspberryPi.CalcServer.result()))
  end

  post "/add" do
    fetch_number(conn) |> RaspberryPi.CalcServer.add()
    conn |> ok
  end

  post "/sub" do
    fetch_number(conn) |> RaspberryPi.CalcServer.sub()
    conn |> ok
  end

  defp fetch_number(conn) do
    Plug.Conn.fetch_query_params(conn).params["number"]
    |> String.to_integer()
  end

  defp ok(conn, data \\ "OK") do
    send_resp(conn, 200, data)
  end
end
