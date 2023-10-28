defmodule GraphqlPractiseWeb.Schema do
  use Absinthe.Schema

  import_types GraphqlPractiseWeb.Schema.AccountsTypes
  alias GraphqlPractiseWeb.Resolvers

  query do
    @desc "Get all users"
    field :users, list_of(:user) do
      resolve &Resolvers.Accounts.list_users/3
    end

  end

  scalar :datetime do
    serialize &DateTime.to_iso8601/1
    parse &parse_datetime/1
  end

  defp parse_datetime(value) when is_binary(value) do
    case DateTime.from_iso8601(value) do
      {:ok, datetime, 0} -> {:ok, datetime}
      _ -> :error
    end
  end
end
