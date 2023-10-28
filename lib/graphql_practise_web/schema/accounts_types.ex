defmodule GraphqlPractiseWeb.Schema.AccountsTypes do
  use Absinthe.Schema.Notation

  object(:user) do
    field :id, :id
    field :email, :string
    field :password, :string
    field :hashed_password, :string
    field :confirmed_at, :datetime
    field :inserted_at, :datetime
    field :updated_at, :datetime
  end

  input_object :reister_user do
    field :email, :string
    field :password, :string
  end
end
