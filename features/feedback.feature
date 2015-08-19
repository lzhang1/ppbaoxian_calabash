Feature: Feedback feature

  Scenario: Check Feedback
		Then I wait for 4 seconds
		When I press the "我的" textview
		Then I see the text "意见反馈"
		Given I press the "意见反馈" textview
		Then I see the text "发送"
		Given I press the "发送" textview
		Then I see the text "建议内容不能为空"
		When I enter text "test" into field with id "suggest_edittext"
		And I press the "发送" textview
		Then I see the text "感谢您的反馈与建议"
		When I enter text "test" into field with id "suggest_info_edittext"
		And I press the "发送" textview
		Then I see the text "建议内容不能为空"
		When I press view with id "button_bar_left"
		Then I see the text "意见反馈"		
