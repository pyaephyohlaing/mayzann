defmodule Mayzann.AddUsers do
  use Ecto.Schema
  import Ecto.Changeset


  schema "users" do
    field :email, :string
    field :provider, :string
    field :token, :string
    field :username, :string

    timestamps()
  end

  @doc false
  def changeset(add_users, attrs) do
    add_users
    |> cast(attrs, [:username, :email, :provider, :token])
    |> validate_required([:username, :email, :provider, :token])
  end
end
