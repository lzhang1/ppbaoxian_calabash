Feature: Score feature

  Scenario: Check Score
		Then I wait for 3 seconds
		When I press the "我的" textview
		Then I see the text "赏个分儿"
		Given I press the "赏个分儿" textview
		Then I see the text "选择要使用的应用："
