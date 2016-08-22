defmodule CoapWebserver.ResourceChannel do
  use Phoenix.Channel
  alias CoapWebserver.ResourceClient

  @callback_path "/api/resource"

  def join("resource:" <> resource_name, _params, socket) do
    case start_observation!(resource_name) do
      :ok -> {:ok, socket}
      {:error, error_msg} -> {:error, %{reason: error_msg}}
    end
  end

  defp start_observation!(resource_name) do
    observation_header = {"observe", callback_url}
    case ResourceClient.get!(resource_name, [observation_header]) do
      %{:status_code => 200, :body => "observation started"} -> :ok
      %{:status_code => _, :body => error_msg} -> {:error, error_msg}
    end
  end

  defp callback_url do
    CoapWebserver.Endpoint.url <> @callback_path
  end
end

defmodule CoapWebserver.ResourceClient do
  use HTTPoison.Base

  @directory_addr "localhost:8080"

  defp process_url(url) do
    "http://" <> @directory_addr <> "/" <> url
  end
end
