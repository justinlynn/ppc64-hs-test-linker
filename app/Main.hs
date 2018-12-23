module Main where

import GHCi.ObjLink as ObjLink

main :: IO ()
main = do
  putStrLn "InitLinker Phase"
  ObjLink.initObjLinker ObjLink.RetainCAFs
  putStrLn "LoadObj Phase"
  ObjLink.loadObj "c-bits/library.o"
  putStrLn "ResolveObj Phase"
  ObjLink.resolveObjs
  putStrLn "Linked Phase"
