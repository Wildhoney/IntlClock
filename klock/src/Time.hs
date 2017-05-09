module Time (withOffset) where

import Prelude             (IO, (*))
import Data.Time.Clock     (UTCTime, NominalDiffTime, addUTCTime, getCurrentTime)
import Control.Applicative ((<$>))

type Seconds = NominalDiffTime

withOffset :: Seconds -> IO UTCTime
withOffset s = addUTCTime (60 * s) <$> getCurrentTime
