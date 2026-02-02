defmodule TodoList do
  alias ToDoInterface

  @moduledoc """
  The entry point of the TODO list app
  """
  def start(_type, _args) do
    TodoList.main()
    Supervisor.start_link([], strategy: :one_for_one)
  end

  def main() do
    tasks = [""]
    logo = "
         ________  ______   _______    ______         __        ______   ______   ________
    /        |/      \ /       \  /      \       /  |      /      | /      \ /        |
    $$$$$$$$//$$$$$$  |$$$$$$$  |/$$$$$$  |      $$ |      $$$$$$/ /$$$$$$  |$$$$$$$$/
       $$ |  $$ |  $$ |$$ |  $$ |$$ |  $$ |      $$ |        $$ |  $$ \__$$/    $$ |
       $$ |  $$ |  $$ |$$ |  $$ |$$ |  $$ |      $$ |        $$ |  $$      \    $$ |
       $$ |  $$ |  $$ |$$ |  $$ |$$ |  $$ |      $$ |        $$ |   $$$$$$  |  $$ |
       $$ |  $$ \__$$ |$$ |__$$ |$$ \__$$ |        $$ |_____  _$$ |_ /  \__$$ |   $$ |'
       $$/    $$$$$$/  $$$$$$$/   $$$$$$/        $$$$$$$$/ $$$$$$/  $$$$$$/    $$/"

    IO.puts "#{logo}"
    ToDoInterface.run(tasks)
  end
end
