module DataSet where

import qualified Data.Set as Set

text1 = "I just had an anime dream. Anime... Reality... Are they so different?"
text2 = "The old man left his garbage can out and now his trash is all over my lawn!"

set1 = Set.fromList text1
set2 = Set.fromList text2

inter = Set.intersection set1 set2

diff = Set.difference set1 set2
diff2 = Set.difference set2 set1

union = Set.union set1 set2

subset = Set.isSubsetOf (Set.fromList [1,2,3,4,5,6]) $ Set.fromList [1,2,3,4,5]
-- Set.fromList [1,2,3,4,5,6] `Set.isSubsetOf` Set.fromList [1,2,3,4,5]
-- true
properSubSet = Set.fromList [1,2,3,4,5,6] `Set.isProperSubsetOf` Set.fromList [1,2,3,4,5]
-- false

setNub xs = Set.toList $ Set.fromList xs

ex = "HEY WHATS CRACKALACKIN"