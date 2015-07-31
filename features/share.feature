Feature: Share feature

  Scenario: Check Share To Friends
		Then I wait for 3 seconds
		When I press the "我的" textview
		Then I see the text "分享给好友"
		Given I press the "分享给好友" textview
		When I press view with id "share_more"
		Then I see the text "PP大巴"
		Given I go back
		Given I press the "分享给好友" textview
		When I press view with id "share_wetchat_timeline"
		Then I see the text "没有安装微信客户端"
		Given I press the "分享给好友" textview
		When I press view with id "share_wetchat"
		Then I see the text "没有安装微信客户端"
