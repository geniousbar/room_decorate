defmodule RoomDecorateWeb.PageController do
  use RoomDecorateWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
