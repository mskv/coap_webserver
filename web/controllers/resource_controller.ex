defmodule CoapWebserver.ResourceController do
  use CoapWebserver.Web, :controller

  def update(conn, %{"resource" => resource}) do
    CoapWebserver.Endpoint.broadcast!(
      "resource:" <> resource["name"], "resource_state_updated", resource
    )
    render conn, "update.json", resource: resource
  end
end
