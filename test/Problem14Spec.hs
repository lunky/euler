module Problem14Spec where
import Problem14
import Test.Hspec

spec :: Spec
spec = do
  describe "collatz" $ do
    it "should do sample 1" $ do
      let input =13
      let expected=10
      collatz input `shouldBe` expected

