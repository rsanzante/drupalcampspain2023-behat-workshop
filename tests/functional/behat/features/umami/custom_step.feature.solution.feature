Feature: Custom step
  As a Behat user
  I want to run my custom step
  So that I can improve my test readability


  @content @customstep @us7 @solution
  Scenario: Run custom step

    Given I am an anonymous user
     When I go to the recipe list

     Then I should see "Home" in the breadcrumb region
      And I should see "Recipes" in the breadcrumb region

