defmodule GraphqlPractiseWeb.Schema.Mutations.User do
  use Absinthe.Schema.Notation


  alias GraphqlPractiseWeb.Resolvers

  object :user_mutation do
    @desc "Create %User{}"
    field :create_user, :user do
      arg(:input, non_null(:reister_user))
      resolve &Resolvers.Accounts.create_user/3
    end
  end
end
