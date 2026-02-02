defmodule ToDoInterface do
  alias ToDoLogic
  @moduledoc """
    This Module contains the main interface of the program where it
    handles the CLI visual interface and user interactions

    ##Features
      - See All TODOs
      - Add a TODO
      - Modify a TODO
      - Delete a TODO

  """
  def run(tasks) do
    IO.puts("
    [1] See TODO List
    [2] Add a task
    [3] Delete a task
    [4] Quit
    ")

    choice = IO.gets(">:")  |> String.trim()

    case choice do
      "1" -> ToDoLogic.showToDos(tasks)
      "2" -> ToDoLogic.addTask(tasks)
      "3" -> ToDoLogic.deleteTask(tasks)
      "4" -> IO.puts(:"Quit")
    end

  end
end
