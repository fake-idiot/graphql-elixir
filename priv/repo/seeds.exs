# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     GraphqlPractise.Repo.insert!(%GraphqlPractise.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias GraphqlPractise.Accounts

Enum.map(1..20, fn _ ->
  %{
    "email" => Faker.Internet.free_email(),
    "password" => "12345678"
  }
  |> Accounts.register_user()
end)
