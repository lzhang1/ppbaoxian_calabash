Feature: Buy Ticket feature

  Scenario: Check Buy Ticket
		Then I wait for 4 seconds
		When I press the "线路" textview
		Then I see the text "查看凭证"

		When I press the "我的" textview
		Then I see the text "登录/注册"
		Given I press the "登录/注册" textview
		When I enter text "18611054037" into field with id "user_name"
		And I enter text "qatest" into field with id "user_pwd"
		And I press view with id "login"
		And I wait for 3 seconds
		Then I see the text "186****4037"
		When I press the "线路" textview
		When I press the "查看凭证" textview
		Then I see the text "大巴已待命，预订即出发"
		When I press view with id "button_bar_right"
		Then All the below info should display:
			|微信好友|
			|朋友圈|
			|更多|
		When I press the "取消" textview
		Then I see the text "大巴已待命，预订即出发"
		When I press view with id "button_bar_left"
		Then I see the text "查看凭证"
