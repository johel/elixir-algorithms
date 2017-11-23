defmodule Multiples do
  def sum_multiples_3_5(n) do
    1..n-1
    |>Enum.filter(&(rem(&1,3) == 0 || rem(&1,5) == 0))
    |>Enum.sum
  end
end