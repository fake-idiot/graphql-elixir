defmodule GraphqlPractiseWeb.Resolvers.Accounts do

  alias GraphqlPractise.Accounts

  def list_users(_, _, _) do
    {:ok, Accounts.list_users()}
  end
end
