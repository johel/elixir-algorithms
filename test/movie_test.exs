defmodule MovieTest do
  
  use ExUnit.Case

  defp testing(numtest, card, ticket, perc, ans) do 
    IO.puts("Test #{numtest}")
    assert Movie.movie(card, ticket, perc) == ans
  end
  
  test "movie" do 
    testing(1, 500, 15, 0.9, 43)
    testing(2, 100, 10, 0.95, 24)
    testing(3, 0, 10, 0.95, 2)
  end
 
end
