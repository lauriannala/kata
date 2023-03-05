defmodule KataTest do
  use ExUnit.Case
  doctest Kata

  test "Find outlier" do
    assert Kata.find_outlier([0, 1, 2]) == 1
    assert Kata.find_outlier([1, 2, 3]) == 2
    assert Kata.find_outlier([2, 6, 8, 10, 3]) == 3
    assert Kata.find_outlier([0, 0, 3, 0, 0]) == 3
    assert Kata.find_outlier([1, 1, 0, 1, 1]) == 0

    hard = [-8115219, -1280311, -4639077, -7445047, -9777903, -5865947, -2089911, -1793945, -3395113, -2691383, -5708585, -4315907, -8645791, -4285771, -8638395, -3141255, -2418779, 5621930, 5358023, 3117857, 1152475, 8130269, 5656083, 4404065, 2209755, 5594395, 4092979, 7849509, 1307203, 1648999, 6647189]
    assert Kata.find_outlier(hard) == 5621930
  end
end
