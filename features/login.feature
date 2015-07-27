Feature: Login feature

  Scenario Outline: Login Successfully
		Then I wait for 5 seconds
		When I press the "我的" textview
		Then I see the text "登录/注册"
		Given I press the "登录/注册" textview
		When I enter text "<user_name>" into field with id "user_name"
		And I enter text "<user_pwd>" into field with id "user_pwd"
		And I press view with id "login"
		Then I see the text "<expect_text>"

	Examples:
		|user_name|user_pwd|expect_text|
		|||请输入正确的电话号码|
		|1851689193||请输入正确的电话号码|
		|13621321431|qatest11|账号不存在|
		|18516891935||请输入密码|
		|18516891935|qatest1|账号密码不匹配|

  Scenario: Login Successfully
    Then I wait for 5 seconds
		When I press the "我的" textview
		Then I see the text "登录/注册"
		Given I press the "登录/注册" textview
		When I enter text "18516891935" into field with id "user_name"
		And I enter text "qatest11" into field with id "user_pwd"
		And I press view with id "login"
		And I wait for 3 seconds
		Then I see the text "185****1935"
