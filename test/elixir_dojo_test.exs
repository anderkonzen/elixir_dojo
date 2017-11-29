defmodule ElixirDojoTest do
  use ExUnit.Case

  test "deve iniciar com uma lista de 100 elementos" do
    assert ElixirDojo.init() |> Enum.count() == 100
  end

  test "deve iniciar com uma lista de N elementos" do
    assert ElixirDojo.init(50) |> Enum.count() == 50
    assert ElixirDojo.init(60) |> Enum.count() == 60
  end

  test "com 3 elementos deve retornar 1,2,fizz" do
    assert ElixirDojo.init(3) == [1, 2, "fizz"]
  end

  test "com 5 elementos deve retornar 1,2,fizz, 4, buzz" do
    assert ElixirDojo.init(5) == [1, 2, "fizz", 4, "buzz"]
  end

  test "com 15 elementos, o 15º elemento deve ser fizzbuzz" do
    assert Enum.at(ElixirDojo.init(15), 14) == "fizzbuzz"
  end

  test "deve retornar 2 fizz e 1 buzz" do
    result =
      90
      |> ElixirDojo.init()
      |> Enum.slice(82, 6)

    assert result == [83, "fizz", "buzz", 86, "fizz", 88]
  end

  test "numero divisivel por 3 deve imprimir fizz" do
    assert ElixirDojo.fizz_buzz(3) == "fizz"
  end

  test "numero divisivel por 5 deve imprimir fizz" do
    assert ElixirDojo.fizz_buzz(5) == "buzz"
  end

  test "numero divisivel por 3 e 5 deve imprimir fizzbuzz" do
    assert ElixirDojo.fizz_buzz(15) == "fizzbuzz"
    assert ElixirDojo.fizz_buzz(30) == "fizzbuzz"
  end

  test "qualquer outro número deve retornar o próprio número" do
    assert ElixirDojo.fizz_buzz(124) == 124
  end
end
