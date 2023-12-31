Feature: Display articles and its details
  As a visitor
  I want to see articles with all its details
  So that I can learn about topics related to recipes

  @content @article @us4b @solution
  Scenario: See an article with its details

    Given I am an anonymous user
      And I go to "/articles/dairy-free-and-delicious-milk-chocolate"

     Then I should see "Home" in the breadcrumb region
      And I should see "Articles" in the breadcrumb region
      And I should see "Dairy-free and delicious milk chocolate" in the breadcrumb region

      And I should see "The calendar is full of excuses for chocolate-lovers to indulge, from religious festivals to birthdays - and even World Chocolate Day on the 7th July." in the content region
      And I should see "Tags" in the content region
      And I should see "Vegan Chocolate" in the content region

      And I should see "More featured articles" in the sidebar region
      And I should not see "Dairy-free and delicious milk chocolate" in the sidebar region
