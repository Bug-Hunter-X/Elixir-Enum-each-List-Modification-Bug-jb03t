```elixir
list = [1, 2, 3, 4, 5]

#Correct approach using List.delete and reassigning the list
list = Enum.reduce(list, [], fn x, acc ->
  if x != 3 do
    [x | acc]
  else
    acc
  end
end)
|> Enum.reverse()
IO.inspect(list)

#Alternative approach using Enum.filter
list2 = [1, 2, 3, 4, 5]
filtered_list = Enum.filter(list2, fn x -> x != 3 end)
IO.inspect(filtered_list)
```