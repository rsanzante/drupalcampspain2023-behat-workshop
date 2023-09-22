Feature: Feature a recipe on the home page
  As a visitor
  I want to see a featured recipe in the home page
  So that Ican check the recipe that editors have promoted


  @content @recipe @us2 @solution
  Scenario: See the featured recipe

    Given I am an anonymous user
      And I go to "/"
      And I click "View recipe"
     Then I should see "Super easy vegetarian pasta bake"
     Then I should see "A wholesome pasta bake is the ultimate comfort food. This delicious bake is super quick to prepare and an ideal midweek meal for all the family."
