module Problem20Spec where
import Problem20
import Test.Hspec

spec :: Spec
spec = do
  describe "Problem20" $ do
    it "should do sample 1" $ do
      let input = 10
      let expected=27
      run input `shouldBe` expected
    it "should do sample 2" $ do
      let input = 100
      let expected=648
      run input `shouldBe` expected

