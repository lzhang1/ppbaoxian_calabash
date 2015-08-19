Feature: Rent feature

  Scenario: Check Rent
		Then I wait for 4 seconds
		When I press the "线路" textview
		Then All the below info should display:
			|全部线路|
			|大巴租赁|
		Given I press the "大巴租赁" textview
		Then I should see the content "网页视图"
		Given I go back
		Then I see the text "PP大巴"
