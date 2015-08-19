Feature: Question and Answer feature

  Scenario: Check Question and Answer
		Then I wait for 4 seconds
		When I press the "我的" textview
		Then I see the text "常见问题"
		Given I press the "常见问题" textview
		Then I see the text "PP大巴"
		Given I scroll "down" 2 times
		And I scroll "up" 2 times
		When I press view with id "button_bar_left"
		Then I see the text "常见问题"		
