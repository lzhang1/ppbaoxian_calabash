Feature: Setup feature

  Scenario Outline: Check Prompt for Setup 
		Then I wait for 3 seconds
		When I press the "我的" textview
		Then I see the text "登录/注册"
		Given I press the "登录/注册" textview
		And I touch the "注册" text
		When I enter text "<phone_num>" into field with id "phone_num"
		And I touch the "获取" text
		Then I see the text "<obtain_expect_text>"
		When I enter text "<verify_code>" into field with id "verify_code"
		And I enter text "<login_pwd>" into field with id "login_pwd"
		And I touch the "确定注册" text
		Then I see the text "<sure_expect_text>"

	Examples:
		|phone_num|obtain_expect_text|verify_code|login_pwd|sure_expect_text|
		||请输入正确的电话号码|||请输入正确的电话号码|
		|1342649629|请输入正确的电话号码|||请输入正确的电话号码|
		|13426496291|该手机号已被注册，请您更换手机号|||请输入短信验证码|
		|18601334512|验证码已发送至您的手机，请注意查收|||请输入短信验证码|
		|18601334512|验证码已发送至您的手机，请注意查收|1234|123566|验证码错误|
		|18601334512|验证码已发送至您的手机，请注意查收|1234||请输入密码|
		|18601334512|验证码已发送至您的手机，请注意查收|1234|12345|密码格式不正确，请您输入6-16位字母和数字组合|
		|18601334512|验证码已发送至您的手机，请注意查收|1234|12345678901234567|验证码错误|

	Scenario: Check PPdaba's Protocol
		Then I wait for 3 seconds
		When I press the "我的" textview
		Then I see the text "登录/注册"
		Given I press the "登录/注册" textview
		And I touch the "注册" text
		Given I touch the "《PP大巴服务协议》" text
		Given I scroll "down" 25 times
		Given I scroll "up" 10 times
