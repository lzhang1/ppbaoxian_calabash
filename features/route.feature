Feature: Route feature

  Scenario: Check Route
		Then I wait for 4 seconds
		When I press the "线路" textview
		Then All the below info should display:
			|PP大巴|
			|查看凭证|
			|全部线路|
			|大巴租赁|
		When I press the "全部线路" textview
		Then I see the text "区域"
		When I press view with id "tab_left_text"
		Then All the below info should display:
			|早上发车|
			|晚上发车|
		When I press the "早上发车" textview
		Then I see the text "四惠、望京SOHO"
		When I press the "早班车" textview
		When I press the "晚上发车" textview
		Then All the below info should display:
			|晚班车|
		  |望京SOHO、四惠|
		When I press the "区域" textview
		Then All the below info should display:
			|全部|
			|海淀|
			|朝阳|
			|清河|
			|西三旗|
		When I press the "海淀" textview
		And I press the text "全部" with id 1
		Then I see the text "海淀"
		When I press the "海淀" textview
		And I press the text "全部" with id 0
		And I press the text "全部" with id 1
		Then I see the text "区域"
		When I press the "区域" textview
		And I press the "清河" textview
		Then I see the text "清河"
