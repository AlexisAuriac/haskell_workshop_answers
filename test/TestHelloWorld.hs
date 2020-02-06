module TestHelloWorld (
    testHelloWorld
) where

import Test.Hspec

testHelloWorld :: SpecWith (Arg (IO ()))
testHelloWorld = describe "HelloWorld" $ do
    it "Should always work" True
