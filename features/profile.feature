Feature: Profile feature

  Scenario: Check Profile Without Login
		Then I wait for 4 seconds
		When I press the "我的" textview
		Then I see the text "登录/注册"
		Given I press view with id "personal_phone"
		Then I see the text "注册"


	Scenario: Check Profile After Login
		Then I wait for 4 seconds
		When I press the "我的" textview
		And I press the "登录/注册" textview
		When I enter text "18611054037" into field with id "user_name"
		And I enter text "qatest" into field with id "user_pwd"
		And I press view with id "login"
		And I wait for 3 seconds
		Then I see the text "186****4037"
		When I press view with id "personal_photo"
		Then I see the text "编辑资料"
		When I press the "头像" textview
		Then All the below info should display:
			|设置头像|
			|拍照|
			|相册选取|
			|取消|
		When I go back
		Then I see the text "用户名"
		When I press the "修改密码" textview
		Then I see the text "保存"
		When I press view with id "button_bar_left"
		Then I see the text "编辑资料"
