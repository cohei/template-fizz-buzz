{-# LANGUAGE TemplateHaskell #-}

import           Language.Haskell.TH (integerL, litE)

import           Ackermann (ackermann)

main :: IO ()
main = print ($(litE . integerL $ ackermann 3 12) :: Integer)
