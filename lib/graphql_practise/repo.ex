defmodule GraphqlPractise.Repo do
  use Ecto.Repo,
    otp_app: :graphql_practise,
    adapter: Ecto.Adapters.Postgres
end
