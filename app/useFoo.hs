{-# LANGUAGE TemplateHaskell #-}

import           Foo (foo)

main :: IO ()
main = do
  putStrLn $ "foo(5) - 2 = " ++ show ($(foo 5) - 2 :: Integer)
  putStrLn $ "foo(5) * 2 = " ++ show ($(foo 5) * 2 :: Integer)
