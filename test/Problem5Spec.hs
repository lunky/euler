module Problem5Spec where
import Problem5
import Test.Hspec

spec :: Spec
spec = do
  describe "problem4" $ do
    it "noop works" $ do
      1 `shouldBe` 1 
    it "should do pattern 1" $ do
      let input=10
      let expected=2520
      run input `shouldBe` expected
