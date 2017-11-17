defmodule Wing do
  
  defp push_left_then_right(n, i, acc), do: if (rem(i, 2) == 1), do: acc ++ [n], else: [n] ++ acc
  defp push_right_then_left(n, i, acc), do: if (rem(i, 2) == 1), do: [n] ++ acc, else: acc ++ [n]

  def wing_sort(a) do
    Enum.sort(a)
    |> Enum.with_index
    |> Enum.reduce([], fn({n,i}, acc) ->
      if(rem(length(a), 2) == 1) do
        push_left_then_right(n, i, acc)
      else
        push_right_then_left(n, i, acc)
      end
    end)
  end

end

#better solution
defmodule Makevalley do
  
    defp _make_valley([]) do
      []
    end
    defp _make_valley([x]) do
      [x]
    end
    defp _make_valley([x, y | xs]) do
      [x] ++ (_make_valley xs) ++ [y]
    end
    def make_valley(a) do
      b = Enum.sort(a, &(&1 > &2))
      _make_valley(b)
    end
    
  end