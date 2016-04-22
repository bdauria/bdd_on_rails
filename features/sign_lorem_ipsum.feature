Feature: Sign the Lorem Ipsum
  As a user
  In order to approve the content of the Lorem Ipsum
  I want to sign it

  Background:
    Given I am on the Lorem Ipsum page

  Scenario Outline: submitting a signature
    When I submit the form with <signature> as signature
    Then I should see the text <text>

    Examples:
      | signature | text |
      | "Bobby" | "Bobby" |
      | "Neque porro quisquam est qui dolorem ipsum qui" | "The signature can't be longer than 40 characters" |
