open Model

let index_page = fun _ ->
  Template.index_page
  |> Dream.html

let new_todo = fun _ ->
  let todo: todo_item = {
    id = "1-abc";
    completed = true;
    name = "a new todo";
  }
  in
  Template.todo_item todo
  |> Dream.html 
