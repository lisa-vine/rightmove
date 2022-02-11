Feature: Search for property

  Scenario:  User can successfully start search for a house with valid UK town name
    Given I navigate to www.rightmove.co.uk webpage
    When I enter a valid UK town name as "Bolton, Greater Manchester"
    And  I click on For Sale button
    Then I am redirected to the page to fill up options for house

    Scenario: User can successfully start search for a house with valid UK Postcode
      Given I navigate to www.rightmove.co.uk webpage
      When I enter a valid UK Postcode as "NP20 2GR"
      And I click on For Sale botton
      Then I am redirected to the page to fill up options for house

      Scenario: User can successfully start search for a house with valid UK station
        Given I navigate to www.rightmove.co.uk webpage
        When I enter a valid UK station as "London Bridge"
        And I click on For Sale botton
        Then I am redirected to the page to fill up options for house

        Scenario: User can verify tickbox for include Under Offer & Sold STC
          Given I navigate to www.rightmove.co.uk webpage
          And I enter a valid UK station as "London Bridge"
          And I click on Start Search botton
          And I am redirected to the page to fill up options for house
          When I click on the tickbox of include 'Under Offer, Sold STC'
          Then the tickbox is displayed in green colour with white tick mark

         Scenario: User can successfully search for house with default fields
           Given I navigate to www.rightmove.co.uk webpage
           And I enter a valid UK station as "London Bridge"
           And I click on Start Search botton
           And I am redirected to the page to fill up options for house
           When I leave my option as default
           And I click on the 'Find Property' botton
           Then I am redirected to a page with several houses listed

           Scenario: User can successfully search for house with valid 'search radius' option
             Given I navigate to www.rightmove.co.uk webpage
             And I enter a valid UK station as "London Bridge"
             And I click on Start Search botton
             And I am redirected to the page to fill up options for house
             When I click on 'Search radius' field
             And I select a 'Search radius' as "Within 10 miles"
             And I click on the 'Find Property' botton
             Then I am redirected to a page with several houses of that mile radius

             Scenario: User can successfully search for house with valid 'Price range' options
               Given I navigate to www.rightmove.co.uk webpage
               And I enter a valid UK station as "London Bridge"
               And I click on Start Search botton
               And I am redirected to the page to fill up options for house
               When I click on 'Price range' field
               And I select a 'No min' as "60,000"
               And I select a 'No max' as "100,000"
               And I click on the 'Find Property' botton
               Then I am redirected to a page with several houses of that price range

  Scenario: User can successfully search for house with valid 'No. of bedrooms' options
    Given I navigate to www.rightmove.co.uk webpage
    And I enter a valid UK station as "London Bridge"
    And I click on Start Search botton
    And I am redirected to the page to fill up options for house
    When I click on 'No. of bedrooms' field
    And I select a 'No min' as "2"
    And I select a 'No max' as "5"
    And I click on the 'Find Property' botton
    Then I am redirected to a page with several houses of that range of bedrooms

    Scenario: User can successfully search for house with valid 'Property type' option
      Given I navigate to www.rightmove.co.uk webpage
      And I enter a valid UK station as "London Bridge"
      And I click on Start Search botton
      And I am redirected to the page to fill up options for house
      When I click on 'Property type' field
      And I select a 'Property type' as "Houses"
      And I click on the 'Find Property' botton
      Then I am redirected to a page with several type houses displayed

      Scenario: User can successfully search for house with valid 'Added to site' option
        Given I navigate to www.rightmove.co.uk webpage
        And I enter a valid UK station as "London Bridge"
        And I click on Start Search botton
        And I am redirected to the page to fill up options for house
        When I click on 'Added to site' field
        And I select an option as "Last 3 days"
        And I click on the 'Find Property' botton
        Then I am redirected to a page with several houses added in the last 3 days

        Scenario: User can not successfully start search for a house with invalid UK town name
          Given I navigate to www.rightmove.co.uk webpage
          When I enter an invalid UK town name as "Ikeja, Lagos"
          And I click on Start Search botton
          Then an error message is displayed as not found in the UK

          Scenario: User can not successfully start search for a house with invalid UK Postcode
            Given I navigate to www.rightmove.co.uk webpage
            When I enter an invalid UK Postcode as "AB12 3CD"
            And I click on Start Search botton
            Then an error message is displayed as not found in the UK

            Scenario: User can not successfully start search for a house with invalid UK station
              Given I navigate to www.rightmove.co.uk webpage
              When I enter an invalid UK station as "Manchester station"
              And I click on Start Search botton
              Then an error message is displayed as not found in the UK

              Scenario: User can not successfully start search for a house with empty Start search field
                Given I navigate to www.rightmove.co.uk webpage
                When I leave the 'Start search' field empty
                And I click on Start Search botton
                Then an error message is displayed as please enter an area, postcods or train station

                Scenario: User can not successfully start search for a house with special characters
                  Given I navigate to www.rightmove.co.uk webpage
                  When I enter an special characters in "Start search' field as "++**"
                  And I click on Start Search botton
                  Then an error message is displayed as please enter an area, postcods or train station




