Feature: Logout feature

  Scenario: Login Successfully
    Then I wait for 3 seconds
		When I press the "我的" textview
		Then I see the text "登录/注册"
		Given I press the "登录/注册" textview
		When I enter text "18611054037" into field with id "user_name"
		And I enter text "qatest" into field with id "user_pwd"
		And I press view with id "login"
		And I wait for 3 seconds
		Then I see the text "186****4037"
		When I scroll down
		And I wait for 1 seconds
		Then I see the text "设置"
		When I press the "设置" textview
		Then I see the text "退出登录"
		When I press the "退出登录" textview
		Then I see the text "登出成功"
		And I see the text "登录/注册"


