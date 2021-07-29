module Problem10Spec where
import Problem10
import Test.Hspec

spec :: Spec
spec = do
  describe "samples" $ do
    it "should do sample 1" $ do
      run 10 `shouldBe` 17
