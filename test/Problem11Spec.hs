module Problem11Spec where
import Problem11
import Test.Hspec

spec :: Spec
spec = do
  describe "samples" $ do
    it "should do sample 1" $ do
      1 `shouldBe` 1
