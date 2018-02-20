defmodule TimcodesWeb.PageController do
  use TimcodesWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
