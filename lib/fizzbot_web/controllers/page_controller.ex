defmodule FizzbotWeb.PageController do
  use FizzbotWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
