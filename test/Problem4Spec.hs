module Problem4Spec where
import Problem4
import Test.Hspec

spec :: Spec
spec = do
  describe "problem4" $ do
    it "noop works" $ do
      1 `shouldBe` 1 
    it "should do pattern 1" $ do
      let input=2
      let expected=9009
      run input `shouldBe` expected
