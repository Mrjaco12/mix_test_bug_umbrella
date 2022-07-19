defmodule MixTestBug.Repo do
  use Ecto.Repo,
    otp_app: :mix_test_bug,
    adapter: Ecto.Adapters.Postgres
end
