module Time (withOffset) where

import Data.Time.Clock (UTCTime, NominalDiffTime, addUTCTime, getCurrentTime)

type Seconds = NominalDiffTime

withOffset :: Seconds -> IO UTCTime
withOffset s = getCurrentTime >>= return . addUTCTime (60 * s)
