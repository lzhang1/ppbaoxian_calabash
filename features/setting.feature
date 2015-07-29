Feature: Setting feature

  Scenario: Check Setting
		Then I wait for 3 seconds
		When I press the "我的" textview
		And I scroll down
		Then I see the text "设置"
		Given I press the "设置" textview
		Then I see the text "联系我们"
		When I press the "联系我们" textview
		Then All the below info should display:
			|客服电话|
			|微博吐槽|
			|微信私聊|
			|官方邮件|
			|企业和团体服务|
			|官方招聘|
			|13241889589|
			|PP大巴|
			|PP大巴（公众号）|
			|fankui@ppdaba.com|
			|13581763272|
			|hr@ppdaba.com|
		When I press view with id "button_bar_left"
		Then I see the text "版本更新"
		When I press the "版本更新" textview
		Then I should see text containing "已是最新版本v"
		When I press the "关于我们" textview
		Then I should see text containing "易出行（北京）科技有限责任公司"

	Scenario: Change Password After Login
		Then I wait for 3 seconds
		When I press the "我的" textview
		And I press the "登录/注册" textview
		When I enter text "13366443852" into field with id "user_name"
		And I enter text "qatest" into field with id "user_pwd"
		And I press view with id "login"
		And I wait for 3 seconds
		Then I see the text "133****3852"
		When I scroll down
		Then I see the text "设置"
		Given I press the "设置" textview
		Then I see the text "修改密码"
		Given I press the "修改密码" textview
		Then I see the text "保存"
		When I press view with id "pwd_forget"
		Then I see the text "忘记密码"
		When I press view with id "button_bar_left"
		Then I see the text "修改密码"

		When I enter text "" into field with id "pwd_old"
		And I enter text "" into field with id "pwd_new"
		And I enter text "" into field with id "pwd_sure"
		And I press the "保存" textview
		Then I see the text "请输入您的旧密码"

		And I enter text "test" into field with id "pwd_old"
		And I enter text "qatest" into field with id "pwd_new"
		And I enter text "qatest" into field with id "pwd_sure"
		And I press the "保存" textview
		Then I see the text "当前密码不正确"
		
		When I clear input field with id "pwd_old"
		And I enter text "qatest" into field with id "pwd_old"
		And I clear input field with id "pwd_new"
		And I enter text "test" into field with id "pwd_new"
		And I clear input field with id "pwd_sure"
		And I enter text "test" into field with id "pwd_sure"
		And I press the "保存" textview
		Then I see the text "密码格式不正确，请您输入6-16位字母和数字组合"


		When I clear input field with id "pwd_old"
		And I enter text "qatest" into field with id "pwd_old"
		And I clear input field with id "pwd_new"
		And I enter text "test1" into field with id "pwd_new"
		And I clear input field with id "pwd_sure"
		And I enter text "test2" into field with id "pwd_sure"
		And I press the "保存" textview
		Then I see the text "2次新密码输入不一致"

		When I clear input field with id "pwd_old"
		And I enter text "qatest" into field with id "pwd_old"
		And I clear input field with id "pwd_new"
		And I enter text "" into field with id "pwd_new"
		And I clear input field with id "pwd_sure"
		And I enter text "qatest" into field with id "pwd_sure"
		And I press the "保存" textview
		Then I see the text "请输入您的新密码"

		When I clear input field with id "pwd_old"
		And I enter text "qatest" into field with id "pwd_old"
		And I clear input field with id "pwd_new"
		And I enter text "qatest" into field with id "pwd_new"
		And I clear input field with id "pwd_sure"
		And I press the "保存" textview
		Then I see the text "请输入您的新密码"

		When I clear input field with id "pwd_old"
		And I enter text "qatest" into field with id "pwd_old"
		And I clear input field with id "pwd_new"
		And I enter text "qatest" into field with id "pwd_new"
		And I clear input field with id "pwd_sure"
		And I enter text "qatest" into field with id "pwd_sure"
		And I press the "保存" textview
		Then I see the text "密码修改成功"

