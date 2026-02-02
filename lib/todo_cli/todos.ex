defmodule Todo do
  alias Todo.CLI
  @moduledoc """
  This module contains all the business logic of the TODO list app
  """

  @doc """
      show_to_dos function handles the logic for showing all the available
      tasks in the todo list. If the list is empty, it will prompt a message
      that says "No Tasks Available right now".
    """
  def show_to_dos(tasks) do
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
    CLI.run(tasks)
  end

  @doc """
    The add_task function handles the logic for adding a new task.
  """
  def add_task(tasks) do
    task = IO.gets("Add a new task>: ") |> String.trim()
    newTask = tasks ++ [task]
    Todo.CLI.run(newTask)
  end

  @doc """
    The delete_task function handles the logic for deleting a task.
    if there are no tasks available, it will prompt that
    "There are no tasks available to remove".
  """
  def delete_task(tasks) do
    if length(tasks) === 1 do
      IO.puts("There are no tasks available to remove")
      Todo.CLI.run(tasks)
    end

    Enum.each(Enum.with_index(tasks), fn {task, index} ->
      unless index === 0 do
          IO.puts("#{index}. #{task}")
      end
    end)
    task = IO.gets("Enter the number of the task you want to remove:> ") |> String.trim()  |> String.to_integer()

    if task > length(tasks) do
      IO.puts("You can only delete listed tasks")
    end

    deletedTask = List.delete_at(tasks, task)
    Todo.CLI.run(deletedTask)
  end

end
