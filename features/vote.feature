Feature: Vote feature

  Scenario: Check Vote Without Login
		Then I wait for 3 seconds
		When I press the "定制" textview
		Then All the below info should display:
			|线路定制|
			|企业和团体服务|
		Given I press the "线路定制" textview
		Then I see the text "请先登录才能参与"
		Given I press the "企业和团体服务" textview
		Then I see the text "请先登录才能查看"


	Scenario: Check Vote After Login
		Then I wait for 3 seconds
		When I press the "我的" textview
		And I press the "登录/注册" textview
		When I enter text "13366443852" into field with id "user_name"
		And I enter text "qatest" into field with id "user_pwd"
		And I press view with id "login"
		And I wait for 3 seconds
		Then I see the text "133****3852"
		Given I press the "定制" textview
		Then All the below info should display:
			|线路定制|
			|企业和团体服务|
		Given I press the "线路定制" textview
		Then I see the text "PP大巴"
		And I go back
		Given I press the "企业和团体服务" textview
		Then I should not see "企业和团体服务"
		When I press view with id "clolse"
		Then I should see "企业和团体服务"
