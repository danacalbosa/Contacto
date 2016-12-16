Given(/^voy a pagina inicial$/) do
	visit '/'
end

Then(/^veo titulo "(.*?)"$/) do |titulo|
	last_response.body.should =~ /#{titulo}/m
end




Given(/^voy a pagina inicial_slave$/) do
  visit '/slave'
end
Then(/^veo titulo_slave "(.*?)"$/) do |titulo|
	last_response.body.should =~ /#{titulo}/m
end 

Then(/^veo texto "(.*?)"$/) do |texto|
	last_response.body.should =~ /#{texto}/m
end
Then(/^veo texto_pregunta "(.*?)"$/) do |texto_pregunta|
	last_response.body.should =~ /#{texto_pregunta}/m
end
Given(/^veo texto_respuesta "(.*?)"$/) do |texto_respuesta|
	last_response.body.should =~ /#{texto_respuesta}/m
end

Then(/^ingreso "(.*?)"$/) do |value|
	fill_in("palabra", :with => value)
	click_button("Submit")
end


