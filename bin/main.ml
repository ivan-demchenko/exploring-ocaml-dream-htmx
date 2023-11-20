let () =
  Dream.run
  @@ Dream.logger
  @@ Dream.router [
    Dream.get "/" Route_handlers.index_page;
    Dream.post "/todo/new" Route_handlers.new_todo;
  ]
