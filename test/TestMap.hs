module TestMap (
    testMap
) where

import Test.Hspec

import Map

testMap :: SpecWith (Arg (IO ()))
testMap = describe "Map" $ do
    describe "MapAdd3" $ do
        it "Should add 3 to all the numbers passed in argument" $ do
            mapAdd3 [1, 2, 3] `shouldBe` [4, 5, 6]
            mapAdd3 [5] `shouldBe` [8]
            mapAdd3 [] `shouldBe` []

    describe "MapIntToString" $ do
        it "Should transform all int parameters into strings" $ do
            mapIntToString [1, 2, 3] `shouldBe` ["1", "2", "3"]
            mapIntToString [] `shouldBe` []
            mapIntToString [1234] `shouldBe` ["1234"]
