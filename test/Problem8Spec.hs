module Problem8Spec where
import Problem8
import Test.Hspec

spec :: Spec
spec = do
  describe "Problem 8" $ do
    it "should do sample 1" $ do
      let input = 4
      let input2 = Problem8._input
      let expected = 5832
      run input input2 `shouldBe` expected

