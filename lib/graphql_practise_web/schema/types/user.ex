defmodule GraphqlPractiseWeb.Schema.Types.User do
  use Absinthe.Schema.Notation

  object(:user) do
    field :id, :id
    field :email, :string
    field :password, :string
    field :hashed_password, :string
    field :confirmed_at, :string
    field :inserted_at, :string
    field :updated_at, :string
  end

  input_object :reister_user do
    field :email, :string
    field :password, :string
  end
end
