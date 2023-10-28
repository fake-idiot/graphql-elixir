defmodule GraphqlPractiseWeb.Resolvers.Accounts do

  alias GraphqlPractise.Accounts
  alias GraphqlPractise.Accounts.User

  def list_users(_, _, _) do
    {:ok, Accounts.list_users()}
  end

  def get_user(_, %{id: id}, _) do
    case Accounts.get_user!(id) do
      %User{} = user ->
        {:ok, user}

      _ ->
        {:error, "User ID #{id} not found"}
    end
  end

  def create_user(_, %{input: args}, _) do
    case Accounts.register_user(args) do
      {:ok, %User{} = user} ->
        {:ok, user}

      {:error, %Ecto.Changeset{} = changeset} ->
        {:error, changeset}
    end
  end
end
