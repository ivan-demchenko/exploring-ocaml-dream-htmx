open Model

let index_page = fun _ ->
  Template.index_page
  |> Dream.html

let new_todo = (fun request ->
  match%lwt Dream.form ~csrf:false request with
  | `Ok ["todo.name", todoName] ->
    let todo = {
      id = "1-abc";
      completed = true;
      name = todoName;
    }
    in
    Template.todo_item todo
    |> Dream.html
  | _ ->
    Dream.empty `Bad_Request
  )
