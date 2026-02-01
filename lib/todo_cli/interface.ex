defmodule ToDoInterface do
  def run() do
    IO.puts("
    [1] See All Notes
    [2] Add Note
    [3] Modify Note
    [4] Delete Note
    ")
    choice = IO.gets(">:")  |> String.trim()
    IO.puts(choice)
  end
end
