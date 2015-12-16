Feature: Login

  Scenario: Check Login Feature
		Then I wait for 4 seconds
		When I press the "测算" textview
		Then I see the text "性别"
		And I see the text "驾龄"
