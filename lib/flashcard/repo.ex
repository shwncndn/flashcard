defmodule Flashcard.Repo do
  use Ecto.Repo,
    otp_app: :flashcard,
    adapter: Ecto.Adapters.Postgres
end
