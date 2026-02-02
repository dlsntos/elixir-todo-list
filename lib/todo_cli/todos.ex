defmodule ToDoLogic do
  alias ToDoInterface
  @moduledoc """
  This module contains all the business logic of the TODO list app
  """
  def showToDos(tasks) do
    IO.puts("List of tasks")
    Enum.each(Enum.with_index(tasks), fn {task, index} ->
      if length(tasks) === 1 do
        IO.puts("No Tasks Available right now")
      else
        unless index === 0 do
            IO.puts("#{index}. #{task}")
        end
      end
    end)
    ToDoInterface.run(tasks)
  end

  def addTask(tasks) do
    task = IO.gets("Add a new task>: ") |> String.trim()
    newTask = tasks ++ [task]
    ToDoInterface.run(newTask)
  end

  def deleteTask(tasks) do
    if length(tasks) === 1 do
      IO.puts("There are no tasks available to remove")
      ToDoInterface.run(tasks)
    end

    Enum.each(Enum.with_index(tasks), fn {task, index} ->
      unless index === 0 do
          IO.puts("#{index}. #{task}")
      end
    end)
    task = IO.gets("Enter the number of the task you want to remove:> ") |> String.trim()  |> String.to_integer()
    deletedTask = List.delete_at(tasks, task)
    ToDoInterface.run(deletedTask)
  end
end
