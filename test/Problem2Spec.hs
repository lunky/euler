{-# LANGUAGE NumericUnderscores #-}
module Problem2Spec where
import Problem2
import Test.Hspec

spec :: Spec
spec = do
  describe "fib" $ do
    it "should do sample 1" $ do
      let input =10
      let expected=[1, 2, 3, 5, 8, 13, 21, 34, 55, 89]

      take 10 fib `shouldBe` expected
  describe "Problem2" $ do
    it "should do sample 1" $ do
      let expected=44
      sum (filter even $ take 10 fib) `shouldBe` expected

