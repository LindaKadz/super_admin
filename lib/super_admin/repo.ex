defmodule SuperAdmin.Repo do
  use Ecto.Repo,
    otp_app: :super_admin,
    adapter: Ecto.Adapters.Postgres
end
