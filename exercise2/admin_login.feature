Feature: Admin login functionality
  Scenario: Admin should be able to login with valid credentials.
    Given User must be an admin.
    When I entered the Admin's Email as email
    And I entered the password as password.
    Then I should be redirected to the admin's home page.
    And Alert successfull message must be appeared.
