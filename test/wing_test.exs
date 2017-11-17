defmodule WingTest do
  use ExUnit.Case
  doctest Wing

  test "quando array tem quantidade ímpar de elementos" do
    assert Wing.wing_sort([1,2,3]) == [3,1,2]
  end

  test "quando array tem quantidade par de elementos" do
    assert Wing.wing_sort([1,2,3,14]) == [14,2,1,3]
  end

end