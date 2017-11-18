defmodule EasylineTest do
  use ExUnit.Case
  doctest Easyline

  test " square sum of line numbers" do
    assert Easyline.easyline(4) == 70
  end

end