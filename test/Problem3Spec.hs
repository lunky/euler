module Problem3Spec where
import Problem3
import Test.Hspec

spec :: Spec
spec = do
  describe "problem3" $ do
    it "noop works" $ do
      1 `shouldBe` 1 
  describe "problem3" $ do
    it "should find largest prime" $ do
      let input = 13195
      let expected = 29
      run input `shouldBe` expected
  describe "primes'" $ do
    it "should find primes" $ do
      let input = 13195
      let expected = [5,7,13,29]
      primes input `shouldMatchList` expected
