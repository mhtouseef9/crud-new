defmodule Abc.Repo do
  use Ecto.Repo,                              # acquires all query functions from ecto
    otp_app: :abc,                           #equals otp_app name to database name
    adapter: Ecto.Adapters.Postgres         #Configures  database adapter
end
