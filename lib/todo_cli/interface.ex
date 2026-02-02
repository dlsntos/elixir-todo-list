defmodule ToDoInterface do
  alias ToDoLogic
  @moduledoc """
    This Module contains the main interface of the program where it
    handles the CLI visual interface and user interactions

    ##Features
      - See All TODOs
      - Add a TODO
      - Delete a TODO

  """
  def run(tasks) do
    IO.puts("
    ________________________________________________________________________________________________________
    [Instructions] - Choose a number
    \n
    [1] See TODO List
    [2] Add a task
    [3] Delete a task
    [4] Quit
    ________________________________________________________________________________________________________
    ")

    choice = IO.gets(">:")  |> String.trim()

    case choice do
      "1" -> ToDoLogic.show_to_dos(tasks)
      "2" -> ToDoLogic.add_task(tasks)
      "3" -> ToDoLogic.delete_task(tasks)
      "4" -> IO.puts(:"Quit")
       _  -> IO.puts("\nOnly choose from [1] - [4]\n")
             run(tasks)
    end

  end
end
