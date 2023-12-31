Feature: Article in home page
  As a visitor
  I want to found and see an article in the home page
  So that I can learn about topics related to recipes


  @content @article @homepage @us3 @solution
  Scenario: See an article in home page

    Given I am an anonymous user
      And I go to "/"
      And I click "View Article"
     Then I should see "Give your oatmeal the ultimate makeover"
     Then I should see "It is vegan, gluten-free, low in fat, high in fiber, and can even lower cholesterol - but oatmeal is boring, right?"
