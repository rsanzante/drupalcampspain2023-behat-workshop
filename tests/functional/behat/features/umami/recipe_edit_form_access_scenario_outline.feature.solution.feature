Feature: Access control to the recipe edit form
  As an content editor user
  I want to access the recipe creation form
  So that I can start adding recipes to the site



  @content @recipe @api @access @us5 @solution
  Scenario Outline: Access recipe creation form with an authorized user

    Given I am logged in as a user with the <role> role
      And I go to "/node/add/recipe"
     Then I should see "Create Recipe"
      And I should not see "You are not authorized to access this page"

  Examples:
    | role          |
    | administrator |
    | author        |



  @content @recipe @api @access @us5 @solution
  Scenario Outline: Deny access to recipe creation form with an unathorized user

    Given I am logged in as a user with the <role> role
      And I go to "/node/add/recipe"
     Then I should not see "Create Recipe"
      And I should see "You are not authorized to access this page"

  Examples:
    | role           |
    | authenticated  |
    | editor         |



  @content @recipe @api @access @us5 @solution
  Scenario: Deny access to recipe creation form with anonymous user

    Given I am an anonymous user
      And I go to "/node/add/recipe"
     Then I should not see "Create Recipe"
      And I should see "You are not authorized to access this page"
