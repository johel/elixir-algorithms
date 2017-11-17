defmodule ConsecutiveString do
	
	def longest_consec(arr, n) when n <= 0 or length(arr) < n, do: ""

	def longest_consec(arr, n) do
		[{_v, index}] = arr
		|> Stream.map(&String.length/1)
		|> Stream.chunk(n,1)
		|> Stream.map(&Enum.sum/1)
		|> Stream.with_index
		|> Enum.sort(fn({v1,_i1},{v2,_i2}) -> v1 >= v2 end)
		|> Enum.take(1)

		Enum.slice(arr, index, n) |> Enum.join("")

	end

end


#better solution
defmodule Longestconsec do
  def longest_consec([], _), do: ""
  def longest_consec(strarr, k) when length(strarr) < k or k <= 0, do: ""
  
  def longest_consec(strarr, k) do
    Enum.chunk(strarr, k, 1)
    |> Enum.map(&Enum.join/1)
    |> Enum.max_by(&String.length/1)
  end  
end
