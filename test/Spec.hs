import Test.Hspec

import TestHelloWorld
import TestMap

main :: IO ()
main = hspec $ do
    testHelloWorld
    testMap
