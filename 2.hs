#!/usr/bin/env stack
-- stack --install-ghc --resolver lts-5.13 runghc --package http-conduit
{-# LANGUAGE OverloadedStrings #-}
import qualified Data.ByteString.Lazy.Char8 as L8
import           Network.HTTP.Simple

main :: IO ()
main = do
    x <- getLine
    let y = "https://goto.msk.ru/vault/api/get_balance/" ++ x
    y <- parseRequest y
    response <- httpLBS (y)
    --putStrLn $ show (getResponseStatusCode response)
    --print $ getResponseHeader "Content-Type" response
    L8.putStrLn $ getResponseBody response
