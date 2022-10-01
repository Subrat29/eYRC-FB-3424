defmodule Task1aSumOfSubsets do
  def valid_sum(matrix_of_sum) when is_list(matrix_of_sum) do
    Enum.flat_map(matrix_of_sum, fn list ->
      Enum.filter(list, &is_integer/1)
    end)
  end
end

 #iex(1)> matrix_of_sum = [
  #...(1)>       [21 ,"na", "na", "na", 12],
  #...(1)>       ["na", "na", 12, "na", "na"],
  #...(1)>       ["na", "na", "na", "na", "na"],
  #...(1)>       [17, "na", "na", "na", "na"],
  #...(1)>       ["na", 22, "na", "na", "na"]
  #...(1)>     ]

 #iex(2)> Task1aSumOfSubsets.valid_sum(matrix_of_sum)
   #[21, 12, 12, 17, 22]
