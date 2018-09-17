{-# LANGUAGE TemplateHaskell #-}

module Foo (foo) where

import           Language.Haskell.TH (ExpQ, infixE, integerL, litE, varE)

foo :: Integer -> ExpQ
foo n = infixE (Just . litE $ integerL n) (varE '(+)) (Just . litE $ integerL 3)
