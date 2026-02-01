defmodule ToDoLogic do
  alias ToDoInterface

  def showToDos(tasks) do
    IO.puts("List of tasks")
    Enum.each(Enum.with_index(tasks), fn {task, index} ->
      IO.puts("#{index}. #{task}")
    end)
    ToDoInterface.run(tasks)
  end
end
