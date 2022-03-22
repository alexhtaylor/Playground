require "open-uri"
require "nokogiri"
require 'open_uri_redirections'

origin = "London"
destination = "Edinburgh"

preferred_start_time = "1200"

preferred_start_date = "030322"

# url = "https://m.nationalrail.co.uk/pj/plan/#{origin}/#{destination}/#{preferred_start_date}/#{preferred_start_time}/dep"
url = "https://uk.megabus.com/journey-planner/journeys?days=1&concessionCount=0&departureDate=2022-03-03&destinationId=56&inboundOtherDisabilityCount=0&inboundPcaCount=0&inboundWheelchairSeated=0&nusCount=0&originId=8&otherDisabilityCount=0&pcaCount=0&totalPassengers=1&wheelchairSeated=0"
# url = "https://m.nationalrail.co.uk/pj/plan/Birmingham/London/020322/1410/dep"
html_file = URI.open(url, :allow_redirections => :all).read
html_doc = Nokogiri::HTML(html_file, nil, "uft-8")

# html_doc.search(".store").each do |element|
#   start_times << element.text.strip
# end

# html_doc.search(".arr").map do |element|
#   end_times << element.text.strip
# end

prices =  html_doc.search("script").last.text.scan(/\d{1,2}\.\d{2}/)
@start_times = html_doc.search("script").last.text.scan(/\d{2}:\d{2}:\d{2}/).reject!.with_index{|time, i| i.odd?}.reject!.with_index{|time, i| i.odd?}
@end_times = html_doc.search("script").last.text.scan(/\d{2}:\d{2}:\d{2}/).reject!.with_index{|time, i| i.even?}.reject!.with_index{|time, i| i.even?}
@start_dates = html_doc.search("script").last.text.scan(/\d{4}-\d{2}-\d{2}/).reject!.with_index{|time, i| i.odd?}.reject!.with_index{|time, i| i.odd?}
@end_dates = html_doc.search("script").last.text.scan(/\d{4}-\d{2}-\d{2}/).reject!.with_index{|time, i| i.even?}.reject!.with_index{|time, i| i.even?}
@durations = html_doc.search("script").last.text.scan(/\d{1,2}H\d{1,2}/).reject!.with_index{|time, i| i.odd?}
p @durations

def split_start_time(i, j)
  split_start = @start_times[i].split(":")
  split_start[j].to_i
end

def split_end_time(i, j)
  split_end = @end_times[i].split(":")
  split_end[j].to_i
end

def split_start_date(i, j)
  split_start = @start_dates[i].split("-")
  split_start[j].to_i
end

def split_end_date(i, j)
  split_end = @end_dates[i].split("-")
  split_end[j].to_i
end

def split_duration(i, j)
  split_duration = @durations[i].split("H")
  split_duration[j].to_i
end

for i in 1..prices.length do
    FakeData.create!(
    origin: origin,
    destination: destination,
    cost: prices[i].to_i,
    start_time: DateTime.new(split_start_date(i, 0),split_start_date(i, 1),split_start_date(i, 2),split_start_time(i, 0),split_start_time(i, 1),split_start_time(i, 2)),
    end_time: DateTime.new(split_end_date(i, 0),split_end_date(i, 1),split_end_date(i, 2),split_end_time(i, 0),split_end_time(i, 1),split_end_time(i, 2)),
    duration: ((split_duration(i, 0) * 60) + split_duration(i, 1)),
    mode: "coach"
  )
end


# p html_doc.xpath '//td[preceding-sibling::td[b=""price\":"]]/text()'


# p html_file

# html_doc.css('nav ul.menu li a', 'article h2').map do |element|
#   prices << element.text.strip
# end

# # p start_times
# # p end_times
# p prices
