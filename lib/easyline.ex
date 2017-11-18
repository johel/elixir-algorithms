defmodule Easyline do 
  @moduledoc """
  This is a test for documentation
  """
  
  @doc """
  Determines the line `n` of newton triangle
              1
             1 1
            1 2 1
           1 3 3 1

  ## Examples
      
      iex> Easyline.line(0)
      [1]
      iex> Easyline.line(3)
      [1,3,3,1]

  """
  def line(n) when n == 0, do: [1]
  def line(n) when n == 1, do: [1, 1]
  def line(n) when n >= 2, do: [1] ++ (Enum.chunk(line(n-1), 2,1) |> Enum.map(&Enum.sum/1)) ++ [1]

  @doc """
  Square sum of line `n` in newton triangle

  ## Examples

      iex> Easyline.easyline(3)
      20

  """
  def easyline(n) do
    line(n) |> Enum.map(&(&1 * &1)) |> Enum.sum
  end
  
end


##other clever solution
defmodule Easyline2 do
  
  def easyline(n) do
    div(product(n + 1 .. 2 * n), product(1 .. n))
  end
  
  defp product(xs) do
    Enum.reduce(xs, 1, &(&1 * &2))
  end
end