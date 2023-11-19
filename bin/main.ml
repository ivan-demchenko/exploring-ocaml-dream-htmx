let () =
  Dream.run
  @@ Dream.logger
  @@ Dream.router [

    Dream.get "/:word"
      (fun request ->
        Dream.param request "word"
        |> Template.index_page
        |> Dream.html);

  ]