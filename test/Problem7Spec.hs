module Problem7Spec where
import Problem7
import Test.Hspec

spec :: Spec
spec = do
  describe "problem3" $ do
    it "noop works" $ do
      1 `shouldBe` 1 
  describe "problem3" $ do
    it "should find nth prime" $ do
      let input = 6
      let expected = 13
      run input `shouldBe` expected
