module Problem1Spec where
import Problem1
import Test.Hspec

spec :: Spec
spec = do
  describe "problem1" $ do
    it "should do sample 1" $ do
      let input =10
      let expected=23
      run input `shouldBe` expected

