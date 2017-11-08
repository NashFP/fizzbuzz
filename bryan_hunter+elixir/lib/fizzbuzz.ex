defmodule Fizzbuzz do
  @doc ~S"""
  Play a delightful round of fizzbuzz. Oh, by the way
  this is a not a regular comment; this is a doc test,
  and the two examples below are unit tests.

  ## Examples
  iex> Fizzbuzz.play(1, 5)
  [1,2,:fizz,4,:buzz]

  iex> Fizzbuzz.play(10,16)
  [:buzz,11,:fizz,13,14,:fizzbuzz,16]
  """
  def play(from, to) do
    from..to
    |> Enum.map(&play/1)
  end

  defp play(num) do
    case {rem(num,3),rem(num,5)} do
      {0,0} -> :fizzbuzz      
      {0,_} -> :fizz
      {_,0} -> :buzz
      {_,_} -> num
    end
  end
end
