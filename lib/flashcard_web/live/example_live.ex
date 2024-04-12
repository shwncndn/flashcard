defmodule FlashcardWeb.ExampleLive do
  @moduledoc """
  A live view that demonstrates the use of LiveSvelte + LiveView for the Working
  in Elevators presentation.
  """

  use FlashcardWeb, :live_view

  use LiveSvelte.Components

  def mount(_params, _session, socket) do
    {:ok, assign(socket, :count, 0)}
  end

  def render(assigns) do
    ~H"""
    <.Example count={@count} />
    """
  end

  def handle_event("increment", _params, socket) do
    {:noreply, assign(socket, :count, socket.assigns.count + 1)}
  end
end
