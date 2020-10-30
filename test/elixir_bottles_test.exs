defmodule ElixirBottlesTest do
  use ExUnit.Case
  doctest ElixirBottles

  test "test the first verse" do
    expected =
      "99 flasks of elixir on the wall, " <>
      "99 flasks of elixir.\n" <>
      "Take one down and pass it around, " <>
      "98 flasks of elixir on the wall.\n"
    assert ElixirBottles.verse(99) == expected
  end

  @tag :skip
  test "test another verse" do
    expected =
      "3 flasks of elixir on the wall, " <>
      "3 flasks of elixir.\n" <>
      "Take one down and pass it around, " <>
      "2 flasks of elixir on the wall.\n"
    assert ElixirBottles.verse(3) == expected
  end

  @tag :skip
  test "test verse 2" do
    expected =
      "2 flasks of elixir on the wall, " <>
      "2 flasks of elixir.\n" <>
      "Take one down and pass it around, " <>
      "1 flask of elixir on the wall.\n"
    assert ElixirBottles.verse(2) == expected
  end

  @tag :skip
  test "test verse 1" do
    expected =
      "1 flask of elixir on the wall, " <>
      "1 flask of elixir.\n" <>
      "Take it down and pass it around, " <>
      "no more flasks of elixir on the wall.\n"
     assert ElixirBottles.verse(1) == expected
  end

  @tag :skip
  test "test verse 0" do
    expected =
      "No more flasks of elixir on the wall, " <>
      "no more flasks of elixir.\n" <>
      "Go to the store and buy some more, " <>
      "99 flasks of elixir on the wall.\n"
    assert ElixirBottles.verse(0) == expected
  end

  @tag :skip
  test "test a couple verses" do
    expected =
      "99 flasks of elixir on the wall, " <>
      "99 flasks of elixir.\n" <>
      "Take one down and pass it around, " <>
      "98 flasks of elixir on the wall.\n" <>
      "\n" <>
      "98 flasks of elixir on the wall, " <>
      "98 flasks of elixir.\n" <>
      "Take one down and pass it around, " <>
      "97 flasks of elixir on the wall.\n"
    assert ElixirBottles.verses(99, 98) == expected
  end

  @tag :skip
  test "test a few verses" do
    expected =
      "2 flasks of elixir on the wall, " <>
      "2 flasks of elixir.\n" <>
      "Take one down and pass it around, " <>
      "1 flask of elixir on the wall.\n" <>
      "\n" <>
      "1 flask of elixir on the wall, " <>
      "1 flask of elixir.\n" <>
      "Take it down and pass it around, " <>
      "no more flasks of elixir on the wall.\n" <>
      "\n" <>
      "No more flasks of elixir on the wall, " <>
      "no more flasks of elixir.\n" <>
      "Go to the store and buy some more, " <>
      "99 flasks of elixir on the wall.\n"
    assert ElixirBottles.verses(2, 0) == expected
  end

  @tag :skip
  test "test the whole song" do
    expected =
      """
      99 flasks of elixir on the wall, 99 flasks of elixir.
      Take one down and pass it around, 98 flasks of elixir on the wall.

      98 flasks of elixir on the wall, 98 flasks of elixir.
      Take one down and pass it around, 97 flasks of elixir on the wall.

      97 flasks of elixir on the wall, 97 flasks of elixir.
      Take one down and pass it around, 96 flasks of elixir on the wall.

      96 flasks of elixir on the wall, 96 flasks of elixir.
      Take one down and pass it around, 95 flasks of elixir on the wall.

      95 flasks of elixir on the wall, 95 flasks of elixir.
      Take one down and pass it around, 94 flasks of elixir on the wall.

      94 flasks of elixir on the wall, 94 flasks of elixir.
      Take one down and pass it around, 93 flasks of elixir on the wall.

      93 flasks of elixir on the wall, 93 flasks of elixir.
      Take one down and pass it around, 92 flasks of elixir on the wall.

      92 flasks of elixir on the wall, 92 flasks of elixir.
      Take one down and pass it around, 91 flasks of elixir on the wall.

      91 flasks of elixir on the wall, 91 flasks of elixir.
      Take one down and pass it around, 90 flasks of elixir on the wall.

      90 flasks of elixir on the wall, 90 flasks of elixir.
      Take one down and pass it around, 89 flasks of elixir on the wall.

      89 flasks of elixir on the wall, 89 flasks of elixir.
      Take one down and pass it around, 88 flasks of elixir on the wall.

      88 flasks of elixir on the wall, 88 flasks of elixir.
      Take one down and pass it around, 87 flasks of elixir on the wall.

      87 flasks of elixir on the wall, 87 flasks of elixir.
      Take one down and pass it around, 86 flasks of elixir on the wall.

      86 flasks of elixir on the wall, 86 flasks of elixir.
      Take one down and pass it around, 85 flasks of elixir on the wall.

      85 flasks of elixir on the wall, 85 flasks of elixir.
      Take one down and pass it around, 84 flasks of elixir on the wall.

      84 flasks of elixir on the wall, 84 flasks of elixir.
      Take one down and pass it around, 83 flasks of elixir on the wall.

      83 flasks of elixir on the wall, 83 flasks of elixir.
      Take one down and pass it around, 82 flasks of elixir on the wall.

      82 flasks of elixir on the wall, 82 flasks of elixir.
      Take one down and pass it around, 81 flasks of elixir on the wall.

      81 flasks of elixir on the wall, 81 flasks of elixir.
      Take one down and pass it around, 80 flasks of elixir on the wall.

      80 flasks of elixir on the wall, 80 flasks of elixir.
      Take one down and pass it around, 79 flasks of elixir on the wall.

      79 flasks of elixir on the wall, 79 flasks of elixir.
      Take one down and pass it around, 78 flasks of elixir on the wall.

      78 flasks of elixir on the wall, 78 flasks of elixir.
      Take one down and pass it around, 77 flasks of elixir on the wall.

      77 flasks of elixir on the wall, 77 flasks of elixir.
      Take one down and pass it around, 76 flasks of elixir on the wall.

      76 flasks of elixir on the wall, 76 flasks of elixir.
      Take one down and pass it around, 75 flasks of elixir on the wall.

      75 flasks of elixir on the wall, 75 flasks of elixir.
      Take one down and pass it around, 74 flasks of elixir on the wall.

      74 flasks of elixir on the wall, 74 flasks of elixir.
      Take one down and pass it around, 73 flasks of elixir on the wall.

      73 flasks of elixir on the wall, 73 flasks of elixir.
      Take one down and pass it around, 72 flasks of elixir on the wall.

      72 flasks of elixir on the wall, 72 flasks of elixir.
      Take one down and pass it around, 71 flasks of elixir on the wall.

      71 flasks of elixir on the wall, 71 flasks of elixir.
      Take one down and pass it around, 70 flasks of elixir on the wall.

      70 flasks of elixir on the wall, 70 flasks of elixir.
      Take one down and pass it around, 69 flasks of elixir on the wall.

      69 flasks of elixir on the wall, 69 flasks of elixir.
      Take one down and pass it around, 68 flasks of elixir on the wall.

      68 flasks of elixir on the wall, 68 flasks of elixir.
      Take one down and pass it around, 67 flasks of elixir on the wall.

      67 flasks of elixir on the wall, 67 flasks of elixir.
      Take one down and pass it around, 66 flasks of elixir on the wall.

      66 flasks of elixir on the wall, 66 flasks of elixir.
      Take one down and pass it around, 65 flasks of elixir on the wall.

      65 flasks of elixir on the wall, 65 flasks of elixir.
      Take one down and pass it around, 64 flasks of elixir on the wall.

      64 flasks of elixir on the wall, 64 flasks of elixir.
      Take one down and pass it around, 63 flasks of elixir on the wall.

      63 flasks of elixir on the wall, 63 flasks of elixir.
      Take one down and pass it around, 62 flasks of elixir on the wall.

      62 flasks of elixir on the wall, 62 flasks of elixir.
      Take one down and pass it around, 61 flasks of elixir on the wall.

      61 flasks of elixir on the wall, 61 flasks of elixir.
      Take one down and pass it around, 60 flasks of elixir on the wall.

      60 flasks of elixir on the wall, 60 flasks of elixir.
      Take one down and pass it around, 59 flasks of elixir on the wall.

      59 flasks of elixir on the wall, 59 flasks of elixir.
      Take one down and pass it around, 58 flasks of elixir on the wall.

      58 flasks of elixir on the wall, 58 flasks of elixir.
      Take one down and pass it around, 57 flasks of elixir on the wall.

      57 flasks of elixir on the wall, 57 flasks of elixir.
      Take one down and pass it around, 56 flasks of elixir on the wall.

      56 flasks of elixir on the wall, 56 flasks of elixir.
      Take one down and pass it around, 55 flasks of elixir on the wall.

      55 flasks of elixir on the wall, 55 flasks of elixir.
      Take one down and pass it around, 54 flasks of elixir on the wall.

      54 flasks of elixir on the wall, 54 flasks of elixir.
      Take one down and pass it around, 53 flasks of elixir on the wall.

      53 flasks of elixir on the wall, 53 flasks of elixir.
      Take one down and pass it around, 52 flasks of elixir on the wall.

      52 flasks of elixir on the wall, 52 flasks of elixir.
      Take one down and pass it around, 51 flasks of elixir on the wall.

      51 flasks of elixir on the wall, 51 flasks of elixir.
      Take one down and pass it around, 50 flasks of elixir on the wall.

      50 flasks of elixir on the wall, 50 flasks of elixir.
      Take one down and pass it around, 49 flasks of elixir on the wall.

      49 flasks of elixir on the wall, 49 flasks of elixir.
      Take one down and pass it around, 48 flasks of elixir on the wall.

      48 flasks of elixir on the wall, 48 flasks of elixir.
      Take one down and pass it around, 47 flasks of elixir on the wall.

      47 flasks of elixir on the wall, 47 flasks of elixir.
      Take one down and pass it around, 46 flasks of elixir on the wall.

      46 flasks of elixir on the wall, 46 flasks of elixir.
      Take one down and pass it around, 45 flasks of elixir on the wall.

      45 flasks of elixir on the wall, 45 flasks of elixir.
      Take one down and pass it around, 44 flasks of elixir on the wall.

      44 flasks of elixir on the wall, 44 flasks of elixir.
      Take one down and pass it around, 43 flasks of elixir on the wall.

      43 flasks of elixir on the wall, 43 flasks of elixir.
      Take one down and pass it around, 42 flasks of elixir on the wall.

      42 flasks of elixir on the wall, 42 flasks of elixir.
      Take one down and pass it around, 41 flasks of elixir on the wall.

      41 flasks of elixir on the wall, 41 flasks of elixir.
      Take one down and pass it around, 40 flasks of elixir on the wall.

      40 flasks of elixir on the wall, 40 flasks of elixir.
      Take one down and pass it around, 39 flasks of elixir on the wall.

      39 flasks of elixir on the wall, 39 flasks of elixir.
      Take one down and pass it around, 38 flasks of elixir on the wall.

      38 flasks of elixir on the wall, 38 flasks of elixir.
      Take one down and pass it around, 37 flasks of elixir on the wall.

      37 flasks of elixir on the wall, 37 flasks of elixir.
      Take one down and pass it around, 36 flasks of elixir on the wall.

      36 flasks of elixir on the wall, 36 flasks of elixir.
      Take one down and pass it around, 35 flasks of elixir on the wall.

      35 flasks of elixir on the wall, 35 flasks of elixir.
      Take one down and pass it around, 34 flasks of elixir on the wall.

      34 flasks of elixir on the wall, 34 flasks of elixir.
      Take one down and pass it around, 33 flasks of elixir on the wall.

      33 flasks of elixir on the wall, 33 flasks of elixir.
      Take one down and pass it around, 32 flasks of elixir on the wall.

      32 flasks of elixir on the wall, 32 flasks of elixir.
      Take one down and pass it around, 31 flasks of elixir on the wall.

      31 flasks of elixir on the wall, 31 flasks of elixir.
      Take one down and pass it around, 30 flasks of elixir on the wall.

      30 flasks of elixir on the wall, 30 flasks of elixir.
      Take one down and pass it around, 29 flasks of elixir on the wall.

      29 flasks of elixir on the wall, 29 flasks of elixir.
      Take one down and pass it around, 28 flasks of elixir on the wall.

      28 flasks of elixir on the wall, 28 flasks of elixir.
      Take one down and pass it around, 27 flasks of elixir on the wall.

      27 flasks of elixir on the wall, 27 flasks of elixir.
      Take one down and pass it around, 26 flasks of elixir on the wall.

      26 flasks of elixir on the wall, 26 flasks of elixir.
      Take one down and pass it around, 25 flasks of elixir on the wall.

      25 flasks of elixir on the wall, 25 flasks of elixir.
      Take one down and pass it around, 24 flasks of elixir on the wall.

      24 flasks of elixir on the wall, 24 flasks of elixir.
      Take one down and pass it around, 23 flasks of elixir on the wall.

      23 flasks of elixir on the wall, 23 flasks of elixir.
      Take one down and pass it around, 22 flasks of elixir on the wall.

      22 flasks of elixir on the wall, 22 flasks of elixir.
      Take one down and pass it around, 21 flasks of elixir on the wall.

      21 flasks of elixir on the wall, 21 flasks of elixir.
      Take one down and pass it around, 20 flasks of elixir on the wall.

      20 flasks of elixir on the wall, 20 flasks of elixir.
      Take one down and pass it around, 19 flasks of elixir on the wall.

      19 flasks of elixir on the wall, 19 flasks of elixir.
      Take one down and pass it around, 18 flasks of elixir on the wall.

      18 flasks of elixir on the wall, 18 flasks of elixir.
      Take one down and pass it around, 17 flasks of elixir on the wall.

      17 flasks of elixir on the wall, 17 flasks of elixir.
      Take one down and pass it around, 16 flasks of elixir on the wall.

      16 flasks of elixir on the wall, 16 flasks of elixir.
      Take one down and pass it around, 15 flasks of elixir on the wall.

      15 flasks of elixir on the wall, 15 flasks of elixir.
      Take one down and pass it around, 14 flasks of elixir on the wall.

      14 flasks of elixir on the wall, 14 flasks of elixir.
      Take one down and pass it around, 13 flasks of elixir on the wall.

      13 flasks of elixir on the wall, 13 flasks of elixir.
      Take one down and pass it around, 12 flasks of elixir on the wall.

      12 flasks of elixir on the wall, 12 flasks of elixir.
      Take one down and pass it around, 11 flasks of elixir on the wall.

      11 flasks of elixir on the wall, 11 flasks of elixir.
      Take one down and pass it around, 10 flasks of elixir on the wall.

      10 flasks of elixir on the wall, 10 flasks of elixir.
      Take one down and pass it around, 9 flasks of elixir on the wall.

      9 flasks of elixir on the wall, 9 flasks of elixir.
      Take one down and pass it around, 8 flasks of elixir on the wall.

      8 flasks of elixir on the wall, 8 flasks of elixir.
      Take one down and pass it around, 7 flasks of elixir on the wall.

      7 flasks of elixir on the wall, 7 flasks of elixir.
      Take one down and pass it around, 6 flasks of elixir on the wall.

      6 flasks of elixir on the wall, 6 flasks of elixir.
      Take one down and pass it around, 5 flasks of elixir on the wall.

      5 flasks of elixir on the wall, 5 flasks of elixir.
      Take one down and pass it around, 4 flasks of elixir on the wall.

      4 flasks of elixir on the wall, 4 flasks of elixir.
      Take one down and pass it around, 3 flasks of elixir on the wall.

      3 flasks of elixir on the wall, 3 flasks of elixir.
      Take one down and pass it around, 2 flasks of elixir on the wall.

      2 flasks of elixir on the wall, 2 flasks of elixir.
      Take one down and pass it around, 1 flask of elixir on the wall.

      1 flask of elixir on the wall, 1 flask of elixir.
      Take it down and pass it around, no more flasks of elixir on the wall.

      No more flasks of elixir on the wall, no more flasks of elixir.
      Go to the store and buy some more, 99 flasks of elixir on the wall.
    """
    assert ElixirBottles.song == expected
  end

end
