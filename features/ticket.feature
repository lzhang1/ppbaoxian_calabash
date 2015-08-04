Feature: Ticket feature

  Scenario: Check Ticket Page
		Then I wait for 3 seconds
		When I press the "凭证" textview
		Then I see the text "您尚未登录，请点击^_^"
		When I press the "您尚未登录，请点击^_^" textview
		When I enter text "18611054037" into field with id "user_name"
		And I enter text "qatest" into field with id "user_pwd"
		And I press view with id "login"
		Then I wait for 3 seconds
		When I press view with id "ticket_ad" 
		Then All the below info should display: 
			|发送给好友10元|
			|返回|
			|活动详情>>|
		When I press the "活动详情>>" textview
		Then All the below info should display:
			|1.此活动为PP大巴推出的福利活动，PP大巴的新老用户均可以参加代金券的领取活动；|
		  |2.代金券可以直接支付使用，有效期自发放日期起计算，过期作废，具体详情请至微信公众号查看个人中心；|
			|3.代金券直接抵扣，一次支付只能使用一张代金券，多不退少补；|
			|4.代金券不可兑现，所有线路通用；|
			|5.新用户首次完成注册获得10元代金券一张，每邀请一位好友可获得一张5元代金券，上不封顶；|
			|6.新用户首次填写“线路定制”，将获得2张10元代金券，问卷中填写的手机号必须与注册账户手机号保持一致；|
		When I press view with id "cancel"
		Then I see the text "发送给好友10元"
		When I press the "发送给好友10元" textview
		Then All the below info should display:
			|微信好友|
			|朋友圈|
		Then I go back
		When I press the "发送给好友10元" textview
		And I press the "取消" textview
		Then I see the text "发送给好友10元"
		When I press the "返回" textview
		Then I see the text "凭证"
	
	Scenario: Check Ticket List
		Then I wait for 3 seconds
		When I press the "凭证" textview
		Then I see the text "您尚未登录，请点击^_^"
		When I press the "您尚未登录，请点击^_^" textview
		When I enter text "18611054037" into field with id "user_name"
		And I enter text "qatest" into field with id "user_pwd"
		And I press view with id "login"
		And I wait for 3 seconds
		Then I should not see "您尚未登录，请点击^_^"
		When I press view with id "ticket_line_start"
		Then I see the text "凭证详情"
		When I go back
		Then I see the text "群二维码"
		When I press the "群二维码" textview
		Then I see the text "查看图片"
