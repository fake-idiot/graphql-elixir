defmodule GraphqlPractiseWeb.Schema do
  use Absinthe.Schema

  import_types GraphqlPractiseWeb.Schema.AccountsTypes
  import_types GraphqlPractiseWeb.Schema.BlogsTypes

  alias GraphqlPractiseWeb.Resolvers

  query do
    @desc "Get all users"
    field :users, list_of(:user) do
      resolve &Resolvers.Accounts.list_users/3
    end

    @desc "Get user by id"
    field :user_by_id, :user do
      arg :id, non_null(:id)
      resolve &Resolvers.Accounts.get_user/3
    end

    @desc "Get all posts"
    field :posts, list_of(:post) do
      resolve &Resolvers.Blogs.list_posts/3
    end
  end

  mutation do
    @desc "Create %User{}"
    field :create_user, :user do
      arg(:input, non_null(:reister_user))
      resolve &Resolvers.Accounts.create_user/3
    end
  end
end
