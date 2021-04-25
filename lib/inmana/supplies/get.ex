defmodule Inmana.Supplies.Get do
  alias Inmana.{Repo, Supply}

  def call(uuid) do
    Supply
    |> Repo.get(uuid)
    |> handle_get()
  end

  defp handle_get(%Supply{} = result), do: {:ok, result}
  defp handle_get(nil), do: {:error, %{result: "Supply not found", status: :not_found}}
end
