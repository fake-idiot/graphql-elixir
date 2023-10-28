defmodule GraphqlPractiseWeb.Resolvers.Blogs do
  alias GraphqlPractise.Accounts
  alias GraphqlPractise.Blogs
  alias GraphqlPractise.Blogs.Post

  def list_posts(_, _, _) do
    {:ok, Blogs.list_posts()}
  end

  def get_post_user(post, _, _) do
    case Accounts.get_user(post.user_id) do
      %Accounts.User{} = user  ->
        {:ok, user}

      _ ->
        {:error, "No User Found Against #{post.user_id}"}
    end
  end

  def create_post(_, %{input: attrs}, _) do
    with %Accounts.User{} <- Accounts.get_user(attrs.user_id),
      {:ok, %Post{} = post} <- Blogs.create_post(attrs) do
        {:ok, post}
    else
      nil ->
        {:error, "No User Found Against #{attrs.user_id}"}
  
      {:error, %Ecto.Changeset{}} ->
        {:error, "Somthing went Wrong"}
    end
  end
end
