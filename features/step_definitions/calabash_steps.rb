require 'calabash-android/calabash_steps'
require 'pry'
require 'pry-nav'


When /^I press the "([^\"]*)" textview$/ do |text|
	tap_when_element_exists("* text:'#{text}'")
end

Given /^I open the "([^\"]*)"$/ do |text|
	step %Q{
		I press the \"#{text}\" textview
		I see the text \"#{text}\"
	}
end

When /^I click "(right|left)" button$/ do |text|
	tap_when_element_exists("android.widget.ImageView id:'button_bar_#{text}'")
end

Given /^I scroll "(down|up)" (\d+) times$/ do |direct, value|
	value.to_i.times{|i|
		step %Q(I scroll #{direct})
	}
end

Given /^I (pull|push) the listview$/ do |direct|
	if direct =~ /[Pp]ull/
		touch(query("android.widget.ImageView id:'user_suffix_arrow'"))
	else
		touch(query("android.widget.RelativeLayout"))
	end
end

Then /^All the below info should display:$/ do |table|
	@board = table.raw
	@board.each{|item| wait_for_text(item[0], timeout: 5)}
end

Then /^I try to switch all the checkbox with id "([^\"]*)"$/ do |id|
	count = query("android.widget.CheckBox id:'#{id}'").size
	count.to_i.times { |index|
		tap_when_element_exists("android.widget.CheckBox index:#{index}")
	}
end

Then /^I try to check all the date$/ do
	5.times { |index| 
		tap_when_element_exists("android.widget.CheckBox id:'date_num#{index+1}'")
	}
end

Then /^I check coupon with text "([^\"]*)"$/ do |text|
	if query("android.widget.TextView text:'#{text}'",timeout:5).empty?
		tap_when_element_exists("android.widget.TextView id:'select_coupon'",timeout:5)
		tap_when_element_exists("android.widget.ImageView id:'button_bar_left'",timeout:5)	
	end
end
Then /^I should see the content "([^\"]*)"$/ do |content|
	element_exists("* {contentDescription CONTAINS[c] '#{content}'}")
end

When /^I press the text "([^\"]*)" with id (\d+)$/ do |text, id|
		touch(query("android.widget.TextView text:'#{text}'")[id.to_i])
end

