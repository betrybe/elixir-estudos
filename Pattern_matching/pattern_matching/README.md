# Sobre Pattern Matching

Ao escrever funções Elixir, podemos usar um [Assertive Style](http://blog.plataformatec.com.br/2014/09/writing-assertive-code-with-elixir/) usando Pattern Matching.

``` Elixir
def read_file() do
  {:ok, contents} = File.read("hello.txt")
  contents
end
```
- As correspondências são bem-sucedidas quando a forma dos dados no lado esquerdo do operador corresponde ao lado direito.

- Quando as correspondências são bem-sucedidas, as variáveis ​​à esquerda são vinculadas aos valores à direita.

- Usar um sublinhado, _, nos permite desconsiderar os valores nesses lugares.

``` Elixir
{:ok, number, _} = {:ok, 5, [4.5, 6.3]}
number
# => 5 is bound to this variable
```

- O operador pin `^` pode ser usado para impedir se sobre escrever uma variavel e impedir que Pattern Match ocorra em a um valor existente.

```Elixir
number = 10
{:ok, ^number, _} = {:ok, 5, [4.5, 6.3]}
# => ** (MatchError) no match of right hand side value: {:ok, 5, [4.5, 6.3]}
```

- O Pattern Matching também pode ser usada em um cabeçalho de clausula de função, de modo que apenas os argumentos que correspondem ao padrão invocarão a função.

- As variáveis ​​podem ser vinculadas em uma correspondência de padrão de cláusula de função.

``` Elixir
defmodule Example do
  def named_function(:a = atom_variable) do
    {atom_variable, 1}
  end
end

Example.named_function(:a)
# => {:a, 1}
# The first function clause matches, so it is invoked

Example.named_function(:b)
# => ** (FunctionClauseError) no function clause matching in Example.named_function/1
```