defmodule ElixirDojo do
  def init(size \\ 100) do
    Enum.map(1..size, &fizz_buzz/1)
  end

  def fizz_buzz(number) when rem(number, 15) == 0,
    do: "fizzbuzz"
  def fizz_buzz(number) when rem(number, 3) == 0,
    do: "fizz"
  def fizz_buzz(number) when rem(number, 5) == 0,
    do: "buzz"
  def fizz_buzz(number), do: number

end
