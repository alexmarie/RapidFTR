Feature: As an user, I should be able to log in.

  Scenario: To check that a user can log in
    Given no users exist
    Given a user "Harry" with a password "123"
    Given I am on the login page
    When I fill in "Harry" for "user name"
    And I fill in "123" for "password"
    And I press "Log in"
    Then I should see "Hello Harry"

  Scenario: User does not exist
    Given no users exist
    Given I am on the login page
    When I fill in "Harry" for "user name"
    And I fill in "123" for "password"
    And I press "Log in"
    Then I should see "Invalid credentials. Please try again!"

  Scenario: User enters the wrong password
    Given a user "Harry" with a password "123"
    Given I am on the login page
    When I fill in "Harry" for "user name"
    And I fill in "1234" for "password"
    And I press "Log in"
    Then I should see "Invalid credentials. Please try again!"


  Scenario:User when logged in should see links to add and edit children
    Given no users exist
    Given a user "Harry" with a password "123"
    Given I am on the login page
    When I fill in "Harry" for "user name"
    And I fill in "123" for "password"
    And I press "Log in"
    Then I should see "Hello Harry"
    And I should see "Add child record"
    And I should see "View child listing"
    And I should see "Harry"

#  Scenario:User session should be destroyed when a user logs out
#    Given no users exist
#    Given a user "Harry" with a password "123"
#    Given I am on the login page
#    When I fill in "Harry" for "user name"
#    And I fill in "123" for "password"
#    And I press "Log in"
#    Then I should see "Hello Harry"
#    And I follow "Log Out"
#    Then I should be on the login page
