defmodule CoapWebserver.ResourceView do
  use CoapWebserver.Web, :view

  def render("update.json", %{resource: resource}) do
    resource
  end
end
