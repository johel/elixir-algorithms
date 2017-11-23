defmodule Simpson do
  def sum1(n, a, f, h) do
    1..div(n,2) |> Enum.map(fn(i) -> f.(a + (2 * i - 1) * h) end) |> Enum.sum
  end
  
  def sum2(n, a, f, h) do
    1..(div(n,2) - 1) |> Enum.map(fn(i) -> f.(a + 2 * i * h) end) |> Enum.sum
  end
  
  def func(x), do: (3/2) * :math.sin(x) * :math.sin(x) * :math.sin(x)

  def simpson(n) do
      a = 0
      b = :math.pi
      h = (b - a)/n
      ((b - a)/ (3 * n)) * (func(a) + func(b) + 4 * sum1(n, a, &func/1, h) + 2 * sum2(n, a, &func/1, h))
  end
end