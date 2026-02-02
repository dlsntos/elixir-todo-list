defmodule ToDoLogic do
  alias ToDoInterface

  def showToDos(tasks) do
    IO.puts("List of tasks")
    Enum.each(Enum.with_index(tasks), fn {task, index} ->
      unless index == 0 do
        IO.puts("#{index}. #{task}")
      end
    end)
    ToDoInterface.run(tasks)
  end

  def addTask(tasks) do
    task = IO.gets("Add a new task>: ") |> String.trim()
    newTask = tasks ++ [task]
    ToDoInterface.run(newTask)
  end
end
