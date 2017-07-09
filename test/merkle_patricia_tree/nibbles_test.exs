defmodule MerklePatriciaTree.NibblesTest do
  use ExUnit.Case
  alias MerklePatriciaTree.Nibbles

  test 'converts binary to nibble list' do
    binary = "rock"
    expected_result = [7, 2, 6, 15, 6, 3, 6, 11]

    result = binary |> Nibbles.from_binary

    assert result == expected_result
  end

  test 'convers nibble list to binary' do
    nibble_list = [7, 2, 6, 15, 6, 3, 6, 11]
    expected_result = "rock"

    result = nibble_list |> Nibbles.to_binary

    assert result == expected_result
  end

  test 'adds terminator' do
    nibble_list = [1, 5]
    expected_result = [1, 5, 16]

    result = nibble_list |> Nibbles.add_terminator

    assert result == expected_result
  end

  test 'removes terminator' do
    nibble_list = [11, 15, 16]
    expected_result = [11, 15]

    result = nibble_list |> Nibbles.remove_terminator

    assert result == expected_result
  end
end
