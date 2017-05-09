module Time (withOffset) where

import Data.Time.Clock (UTCTime, NominalDiffTime, addUTCTime, getCurrentTime)

data Minutes = Int

--myTime :: UTCTime -> NominalDiffTime -> IO UTCTime
withOffset minutes
    = getCurrentTime >>= return . addUTCTime ms
      where
        ms = 60 * minutes
