defmodule CoapWebserver.ResourceChannel do
  use Phoenix.Channel

  def join("resource:" <> resource_name, _params, socket) do
    IO.puts resource_name
    {:ok, socket}
  end
end
