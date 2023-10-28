defmodule GraphqlPractiseWeb.Schema.BlogsTypes do

  use Absinthe.Schema.Notation

  alias GraphqlPractiseWeb.Resolvers

  object :post do
    field :id, :id
    field :title, :string
    field :body, :string
    field :inserted_at, :string
    field :updated_at, :string
    field :user, :user do
      resolve &Resolvers.Blogs.get_post_user/3
    end
  end

end
