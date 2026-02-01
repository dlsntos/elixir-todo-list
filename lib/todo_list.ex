defmodule TodoList do
  alias ToDoInterface

  def start(_type, _args) do
    TodoList.main()
    Supervisor.start_link([], strategy: :one_for_one)
  end

  def main() do
    IO.puts "TODO LIST\n"
    ToDoInterface.run()
  end
end
