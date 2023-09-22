Feature: Access control to the recipe edit form
  As an content editor user
  I want to access the recipe creation form
  So that I can start adding recipes to the site


  @content @recipe @api @access @us5 @solution
  Scenario: Access recipe creation form with author user

    Given I am logged in as a user with the author role
      And I go to "/node/add/recipe"
     Then I should see "Create Recipe"
      And I should not see "You are not authorized to access this page"



  @content @recipe @api @access @us5 @solution
  Scenario: Access recipe creation forms with administrator user

    Given I am logged in as a user with the administrator role
      And I go to "/node/add/recipe"
     Then I should see "Create Recipe"
      And I should not see "You are not authorized to access this page"



  @content @recipe @api @access @us5 @solution
  Scenario: Deny access to recipe creation form with editor user

    Given I am logged in as a user with the editor role
      And I go to "/node/add/recipe"
     Then I should not see "Create Recipe"
      And I should see "You are not authorized to access this page"



  @content @recipe @api @access @us5 @solution
  Scenario: Deny access to recipe creation form with authenticated user

    Given I am logged in as a user with the authenticated role
      And I go to "/node/add/recipe"
     Then I should not see "Create Recipe"
      And I should see "You are not authorized to access this page"



  @content @recipe @api @access @us5 @solution
  Scenario: Deny access to recipe creation form with anonymous user

    Given I am an anonymous user
      And I go to "/node/add/recipe"
     Then I should not see "Create Recipe"
      And I should see "You are not authorized to access this page"

