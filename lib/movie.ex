defmodule Movie do
@moduledoc """
  System A : buy a ticket (15 dollars) every time

  System B : buy a card (500 dollars) and every time 
  buy a ticket the price of which is 0.90 times the price he paid for the previous one.

  John wants to know how many times he must go to the cinema so that the final result of System B,
  when rounded up to the next dollar, will be cheaper than System A.
"""
  
  defp rec(n, acc, ticket, perc) do
    system_b = acc + :math.pow(perc, n) * ticket
    system_a = n * ticket   
    if Float.ceil(system_b) < system_a, do: n, else: rec(n + 1, system_b, ticket, perc)
  end
  
  def movie(card, ticket, perc), do: rec(1, card, ticket, perc)
  
end