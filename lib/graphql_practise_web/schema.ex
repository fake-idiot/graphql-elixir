defmodule GraphqlPractiseWeb.Schema do
  use Absinthe.Schema

  #Types
  import_types GraphqlPractiseWeb.Schema.Types.User
  import_types GraphqlPractiseWeb.Schema.Types.Post

  #Queries
  import_types GraphqlPractiseWeb.Schema.Queries.User
  import_types GraphqlPractiseWeb.Schema.Queries.Post

  #Mutations
  import_types GraphqlPractiseWeb.Schema.Mutations.User
  import_types GraphqlPractiseWeb.Schema.Mutations.Post

  query do
    import_fields :post_queires
    import_fields :user_queires
  end

  mutation do
    import_fields :user_mutation
    import_fields :post_mutation
  end
end
