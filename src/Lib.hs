module Lib
    ( someFunc, addIO
    ) where

import Control.Monad.Trans.Maybe ( MaybeT(..) )
import Text.Read (readMaybe)

someFunc :: IO ()
someFunc = putStrLn "someFunc"

addIO :: MaybeT IO Int
addIO = do
    let getReadIntFromLine = fmap readInt getLine :: IO (Maybe Int)

    a <- MaybeT $ fmap readInt getLine -- a :: Int
    b <- MaybeT $ fmap readInt getLine -- b :: Int
    return $ a + b


readInt :: String -> Maybe Int 
readInt = readMaybe