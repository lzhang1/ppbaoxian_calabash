Feature: Login

  Scenario: Check Login Feature
		Then I wait for 4 seconds
		When I press view with id "car_insurance_button_text"
		Then I see the text "性别"
		And I see the text "驾龄"
		And I see the text "年龄"
