Feature: Create recipe content
  As a content creator user
  I want to create a recipe
  So that I can add the main content of the site


  @content @recipe @editorial @api @javascript @us6 @solution
  Scenario Outline: Simple Recipe creation

   Given file with name "1800x1200S.jpg"
      And "media" entity:
      | image                                               | name       | status | bundle |
      | entity-replacement:file:filename:1800x1200S.png:fid | 1800x1200S | 1      | image  |

   Given I am logged in as a user with the <role> role
    When I go to "/node/add/recipe"
    Then I fill in "Recipe Name" with "Test recipe"
     And I fill in "Preparation time" with "30"
     And I fill in "Number of servings" with "4"
     And I select "Medium" from "Difficulty"
     And I scroll to "Directions" field
     And I fill in the rich text editor "Summary" with "This is a summary"
     And I fill in the rich text editor "Directions" with "Recipe directions"
     And I assign the media with name "1800x1200S" to "field-media-image" field
     And I press "Save"
    Then I should see "Test recipe"
     And I should see "This is a summary"
     And I should see "Recipe directions"

    Examples:
      | role           |
      | administrator  |
      | author         |



  @content @recipe @editorial @access @error @api @us6 @solution
  Scenario Outline: Simple Article creation role access
    Given I am a user with <role> role
    When I go to "/node/add/recipe"
    Then the response status code should be 403

    Examples:
      | role           |
      | anonymous      |
      | authenticated  |
      | editor         |
