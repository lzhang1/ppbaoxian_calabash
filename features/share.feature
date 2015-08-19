Feature: Share feature

  Scenario: Check Share To Friends
		Then I wait for 4 seconds
		When I press the "我的" textview
		Then I see the text "分享给好友"
		Given I press the "分享给好友" textview
		When I press view with id "share_more"
		Then I see the text "PP大巴"
		Given I go back
		When I press the "分享给好友" textview
		Then All the below info should display:
			|微信好友|
			|朋友圈|
			|更多|
