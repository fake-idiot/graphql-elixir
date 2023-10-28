defmodule GraphqlPractise.BlogsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `GraphqlPractise.Blogs` context.
  """

  @doc """
  Generate a post.
  """
  def post_fixture(attrs \\ %{}) do
    {:ok, post} =
      attrs
      |> Enum.into(%{
        body: "some body",
        title: "some title"
      })
      |> GraphqlPractise.Blogs.create_post()

    post
  end
end
