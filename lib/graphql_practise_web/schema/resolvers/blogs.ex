defmodule GraphqlPractiseWeb.Resolvers.Blogs do
  alias GraphqlPractise.Accounts
  alias GraphqlPractise.Blogs
  # alias GraphqlPractise.Blogs.Post

  def list_posts(_, _, _) do
    {:ok, Blogs.list_posts()}
  end

  def get_post_user(post, _, _) do
    {:ok, Accounts.get_user!(post.user_id)}
  end
end
