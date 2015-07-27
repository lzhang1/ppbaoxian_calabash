require 'calabash-android/calabash_steps'


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
