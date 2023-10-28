defmodule GraphqlPractiseWeb.Schema.Queries.Post do
  use Absinthe.Schema.Notation

  alias GraphqlPractiseWeb.Resolvers

  object :post_queires do
    @desc "Get all posts"
    field :posts, list_of(:post) do
      resolve &Resolvers.Blogs.list_posts/3
    end
  end
end
