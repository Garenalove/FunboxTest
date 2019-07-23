defmodule FunboxTest.Repo do
  use Ecto.Repo,
    otp_app: :funboxTest,
    adapter: Ecto.Adapters.Postgres
end
