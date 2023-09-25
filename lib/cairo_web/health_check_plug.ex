defmodule CairoWeb.HealthCheckPlug do
  @moduledoc """
  Handles health checks on the "/up" URL
  """

  import Plug.Conn

  @behaviour Plug

  def init(opts),
    do: opts

  def call(%{path_info: ["up"]} = conn, _opts),
    do: conn |> send_resp(200, "ok") |> halt()

  def call(conn, _opts),
    do: conn
end
