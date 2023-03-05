defmodule Kata do
  def find_outlier(integers) do
    [even, odd] =
      integers
      |> Enum.group_by(&rem(abs(&1), 2))
      |> Enum.map(fn {_, values} -> values end)

    if Enum.count(even) > Enum.count(odd) do
      [result] = odd
      result
    else
      [result] = even
      result
    end
  end
end
