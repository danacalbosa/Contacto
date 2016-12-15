Given(/^voy a pagina inicial$/) do
	visit '/'
end

Then(/^veo titulo "(.*?)"$/) do |titulo|
	last_response.body.should =~ /#{titulo}/m
end

Given(/^voy a pagina inicial_slave$/) do
  visit '/slave'
end

