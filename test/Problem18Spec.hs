module Problem18Spec where
import Problem18
import Test.Hspec

spec :: Spec
spec = do
  describe "problem1" $ do
    it "should get min for 15" $ do
      let input =15
      let expected=5
      run' input `shouldBe` expected
    it "should get min for 14" $ do
      let input =14
      let expected=5
      run' input `shouldBe` expected
    it "should get min for 7" $ do
      let input =7
      let expected=4
      run' input `shouldBe` expected
    it "should get min for 12" $ do
      let input =12
      let expected=4
      run' input `shouldBe` expected
    it "should get min for 11" $ do
      let input =11
      let expected=5
      run' input `shouldBe` expected

