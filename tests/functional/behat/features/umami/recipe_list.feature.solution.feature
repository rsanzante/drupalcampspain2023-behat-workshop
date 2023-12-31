Feature: Display the list of available recipes
  As a visitor
  I want to see a list of available recipes
  So that I look for a recipe I like


  @content @recipe @us1 @solution
  Scenario: See the list of available recipes

    Given I am an anonymous user
      And I go to "/"
      And I click "Recipes"
     Then I should see "Deep mediterranean quiche"
     Then I should see "Vegan chocolate and nut brownies"
     Then I should see "Super easy vegetarian pasta bake"
     Then I should see "Watercress soup"
     Then I should see "Victoria sponge cake"
     Then I should see "Gluten free pizza"
     Then I should see "Thai green curry"
