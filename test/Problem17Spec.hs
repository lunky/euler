module Problem17Spec where
import Problem17
import Test.Hspec

spec :: Spec
spec = do
  describe "problem17" $ do
    it "should do numCount 1" $ do
      let input =1
      let expected=3
      numCount input `shouldBe` expected
    it "should do sample 1" $ do
      let input =5
      let expected=19
      run input `shouldBe` expected

    it "should do sample 2" $ do
      let input =342
      let expected=23
      numCount input `shouldBe` expected

    it "should do sample 3" $ do
      let input = 115
      let expected = 20
      numCount input `shouldBe` expected

