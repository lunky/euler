module Problem19Spec where
import Problem19
import Test.Hspec

spec :: Spec
spec = do
  describe "dow" $ do
    it "knows what day of week a given date is" $ do
        let (year,month,day) = (1900, January, 1)
        let expected = Monday
        dow year month day `shouldBe` expected
    it "knows what day of week a given date is" $ do
        let (year,month,day) = (1900, January, 3)
        let expected = Wednesday
        dow year month day `shouldBe` expected
    it "knows what day of week a given date is" $ do
        let (year,month,day) = (1900, December, 3)
        let expected = Monday
        dow year month day `shouldBe` expected

  describe "problem19" $ do
    it "days in year" $ do
      let input =1900
      let expected=365
      daysInYear input `shouldBe` expected
  describe "leapYear" $ do
    it "calculates a leap year" $ do
      let input = 1904
      let expected = True
      leapYear input `shouldBe` expected
    it "calculates a century leap year" $ do
      let input = 2000
      let expected = True
      leapYear input `shouldBe` expected
    it "calculates a century leap year" $ do
      let input = 1900
      let expected = False
      leapYear input `shouldBe` expected

