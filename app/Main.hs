module Main where

import Lib
import Control.Monad.Trans.Maybe ( MaybeT(..) )

main :: IO ()
main = do
    result <- runMaybeT addIO -- result :: Maybe Int
    print result
