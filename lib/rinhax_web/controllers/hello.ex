defmodule RinhaxWeb.Hello do
  use RinhaxWeb, :controller

  def index(conn, _params) do
    conn |> put_resp_content_type("text/plain") |> send_resp(200, "Hello, World!")
  end
end
