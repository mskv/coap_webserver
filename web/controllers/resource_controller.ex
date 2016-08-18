defmodule CoapWebserver.ResourceController do
  use CoapWebserver.Web, :controller

  def update(conn, params) do
    render conn, "update.json", resource: params["resource"]
  end
end
