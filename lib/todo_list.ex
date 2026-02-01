defmodule TodoList do
  use Todolist.todo

  def start(_type, _args) do
    TodoList.main()
    Supervisor.start_link([], strategy: :one_for_one)
  end

  def main() do
    IO.puts "TODO LIST\n"

    IO.puts "


    "
  end
end
