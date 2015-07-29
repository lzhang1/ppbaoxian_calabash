Feature: Forget Password feature

  Scenario Outline: Check Prompt for forget password
		Then I wait for 3 seconds
		When I press the "我的" textview
		Then I see the text "登录/注册"
		Given I press the "登录/注册" textview
		And I press view with id "pwd_forget"
		When I enter text "<user_name>" into field with id "user_name"
		And I press view with id "obtain"
		Then I see the text "<obtain_expect_text>"
		When I enter text "<verify_code>" into field with id "verify_code"
		And I enter text "<login_pwd>" into field with id "login_pwd"
		And I press view with id "forget_sure"
		Then I see the text "<sure_expect_text>"

	Examples:
		|user_name|obtain_expect_text|verify_code|login_pwd|sure_expect_text|
		||输入电话号码不正确|||输入电话号码不正确|
		|1342649629|输入电话号码不正确|||输入电话号码不正确|
		|13426496292|该手机号未被注册|||请输入短信验证码|
		|18601334517|验证码已发送至您的手机，请注意查收|||请输入短信验证码|
		|18601334517|验证码已发送至您的手机，请注意查收|1234|123566|验证码错误|
		|18601334517|验证码已发送至您的手机，请注意查收|1234||请设置登陆密码|
		|18601334517|验证码已发送至您的手机，请注意查收|1234|12345|密码格式不正确，请您输入6-16位字母和数字组合|
		|18601334517|验证码已发送至您的手机，请注意查收|1234|12345678901234567|密码格式不正确，请您输入6-16位字母和数字组合|
