module Problem6Spec where
import Problem6
import Test.Hspec

spec :: Spec
spec = do
  describe "problem6" $ do
    it "should do sample 1" $ do
      let input =10
      let expected=2640
      run input `shouldBe` expected

