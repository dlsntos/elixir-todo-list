defmodule ToDoInterface do
  def run() do
    IO.puts("
    [1] See All Notes
    [2] Add Note
    [3] Modify Note
    [4] Delete Note
    [5] Quit
    ")

    choice = IO.gets(">:")  |> String.trim()
    IO.puts(choice)

    case choice do
      "1" -> IO.puts(:"See all notes")
      "2" -> IO.puts(:"Add Note")
      "3" -> IO.puts(:"Modify note")
      "4" -> IO.puts(:"Delete Note")
      "5" -> IO.puts(:"Quit")
    end

  end
end
