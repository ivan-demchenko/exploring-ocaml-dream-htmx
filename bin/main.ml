let () =
  Dream.run
  @@ Dream.logger
  @@ Dream.router [

    Dream.get "/"
      (fun _ ->
        Template.index_page
        |> Dream.html);

    Dream.post "/todo/new"
      (fun _ ->
        Template.todo_item
        |> Dream.html);

  ]