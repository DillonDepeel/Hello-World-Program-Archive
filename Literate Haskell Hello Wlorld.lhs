\begin{code}
parseHello :: Parser Text
parseHello = string "Hello"
parseWorld :: Parser Text
parseWorld = string " World!"
parseHelloWorld3 :: Parser Text
parseHelloWorld3 = do
  hello <- parseHello
  world <- parseWorld
  return $ T.concat [hello,world]
\end{code}
