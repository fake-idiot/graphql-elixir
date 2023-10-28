defmodule GraphqlPractiseWeb.Schema.Mutations.Post do
  use Absinthe.Schema.Notation

  alias GraphqlPractiseWeb.Resolvers

  object :post_mutation do
    @desc "Create %Post{}"
    field :create_post, :post do
      arg(:input, non_null(:create_post))
      resolve &Resolvers.Blogs.create_post/3
    end
  end
end
