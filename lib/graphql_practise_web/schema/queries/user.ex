defmodule GraphqlPractiseWeb.Schema.Queries.User do
  use Absinthe.Schema.Notation

  alias GraphqlPractiseWeb.Resolvers

  object :user_queires do
    @desc "Get all users"
    field :users, list_of(:user) do
      resolve &Resolvers.Accounts.list_users/3
    end

    @desc "Get user by id"
    field :user_by_id, :user do
      arg :id, non_null(:id)
      resolve &Resolvers.Accounts.get_user/3
    end
  end
end
