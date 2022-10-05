defmodule Rumbl.Accounts do
  @moduledoc """
  The Accounts context.
  """

  alias Rumbl.Accounts.User

  def list_users do
    [
      %User{id: "1", name: "Tim", username: "tim"},
      %User{id: "2", name: "Mike", username: "mcd"},
      %User{id: "3", name: "Cathy", username: "cathy"},
      %User{id: "3", name: "Joe", username: "joe"},
      %User{id: "4", name: "Heimir", username: "heimir"}
    ]
  end

  def get_user(id) do
    binding()
    Enum.find(list_users(), fn map -> map.id == id end)
  end

  def get_user_by(params) do
    Enum.find(list_users(), fn map ->
      Enum.all?(params, fn {key, val} -> Map.get(map, key) == val end)
    end)
  end
end
