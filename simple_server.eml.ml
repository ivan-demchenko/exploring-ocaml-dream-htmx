let index_page who =
  <html>
  <body>
    <h1>Hello, <%s who %>!</h1>
  </body>
  </html>

let () =
  Dream.run
  @@ Dream.logger
  @@ Dream.router [
    Dream.get "/" (fun _ ->
      Dream.html (index_page "world"));
  ]