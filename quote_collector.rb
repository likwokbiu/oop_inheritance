require "./multilinguist.rb"
require "pry"

class QuoteCollector < Multilinguist

  def initialize
    @quotes = []
  end

  def add(quote)
    @quotes << quote
  end

  def quotes
    @quotes
  end

  def random
    @quotes[Random.rand(@quotes.length - 1)]
  end

end

quote_collector = QuoteCollector.new

quote1 = "To be, or not to be: that is the question"
quote2 = "Love all, trust a few, do wrong to none."
quote3 = "We know what we are, but know not what we may be."
quote4 = "Romeo, Romeo! wherefore art thou Romeo?"
quote5 = "Now is the winter of our discontent"
quote6 = "Some are born great, some achieve greatness, and some have greatness thrust upon them."
quote7 = "A man can die but once."
quote8 = "I am one who loved not wisely but too well."

quote_collector.add(quote1)
quote_collector.add(quote2)
quote_collector.add(quote3)
quote_collector.add(quote4)
quote_collector.add(quote5)
quote_collector.add(quote6)
quote_collector.add(quote7)
quote_collector.add(quote8)

puts "English-------------------"
puts quote_collector.quotes # ['To be or not to be', '....', '....']
puts quote_collector.random # ''

puts "Italy-------------------"
quote_collector.travel_to("Italy")
msg = quote_collector.random # ''
puts quote_collector.say_in_local_language(msg)

puts "India-------------------"
quote_collector.travel_to("India")
msg = quote_collector.random # ''
puts quote_collector.say_in_local_language(msg)

puts "France-------------------"
quote_collector.travel_to("France")
msg = quote_collector.random # ''
puts quote_collector.say_in_local_language(msg)
