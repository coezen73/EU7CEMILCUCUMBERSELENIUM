Feature: Login as different users

    Scenario: login as a driver user
      Given the user is on the login page
          # We can pass the parameters of the features to
          # step definition files dynamically by using "".
          # Same step, different inputs:
          # dynamic values =  'cucumber parameters!'
      When the user logs in using "User10" and "UserUser123"
      Then the user should be able to login
      And the title contains "Dashboard"

        #homework
  Scenario: login as a driver
    Given the user logged in as "usertype"
    Then the user should be able to login
    And the title contains "Dashboard"
    #driver,store_manager,sales_manager
   #you will have one step definition and it will handle different usertype