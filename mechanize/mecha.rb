require 'mechanize'

agent = Mechanize.new
page = agent.get('https://everytime.kr/login')

everytime_form = page.form
everytime_form.field_with(:type => 'text').value = "your_id"
everytime_form.field_with(:type => 'password').value = "your_password"
page = agent.submit(everytime_form)

timetable = page.link_with(:text => "시간표").click

puts timetable.parser
