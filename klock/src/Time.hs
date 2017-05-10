module Time (withOffset) where

--import Prelude             (IO, (*))
import Data.Time.Clock     (UTCTime, NominalDiffTime, addUTCTime, getCurrentTime)
import Control.Applicative ((<$>))
import Network.HTTP

type Seconds = NominalDiffTime

withOffset :: Seconds -> IO UTCTime
withOffset s = addUTCTime (60 * s) <$> getCurrentTime

getHTTP = simpleHTTP (getRequest "http://www.haskell.org/") >>= fmap (take 100) . getResponseBody