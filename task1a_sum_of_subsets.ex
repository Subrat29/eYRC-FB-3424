defmodule Task1aSumOfSubsets do
  def valid_sum(matrix_of_sum) do
    matrix_of_sum |> List.flatten() |> Enum.filter(fn x -> is_integer(x) end)
  end

  def sum_of_one(array_of_digits, sum_val) do
    array_of_digits
    |> sub_sets()
    |> Enum.filter(&(Enum.sum(&1) == sum_val))
  end

  defp sub_sets([]), do: [[]]

  defp sub_sets([h | t]) do
    t |> sub_sets() |> Enum.flat_map(&[[h | &1], &1])
  end

  def sum_of_all(array_of_digits, matrix_of_sum) do
    list = Enum.uniq(valid_sum(matrix_of_sum))
    Enum.reduce(list, %{}, fn n, acc -> Map.put(acc, n, sum_of_one(array_of_digits, n)) end)
  end
end
