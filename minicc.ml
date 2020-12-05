let () =
  let fichier = Sys.argv.(1) in
  let c = open_in fichier in
  let lexbuf = Lexing.from_channel c in
  let prog = Minicparser.prog Miniclexer.token lexbuf in
  (prog);
  close_in c;
  exit 0

