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
alias GraphqlPractise.Blogs

Enum.each(1..20, fn _ ->
    %{
      "email" => Faker.Internet.free_email(),
      "password" => "12345678"
    }
    |> Accounts.register_user()
  end)

Enum.each(1..30, fn _ ->
    user = Enum.random(Accounts.list_users())
    %{
      title: Faker.Person.title(),
      body: Faker.Lorem.paragraph(2),
      user_id: user.id
    }
    |> Blogs.create_post()
  end)
