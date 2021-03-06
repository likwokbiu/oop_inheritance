require "./multilinguist.rb"

class MathGenius < Multilinguist

  def report_total(numbers_array)
    sum_of_numbers = 0
    numbers_array.each do |a_number|
      sum_of_numbers += a_number
    end
    msg = "The total is #{sum_of_numbers}"
    self.say_in_local_language(msg)
  end

end

me = MathGenius.new
puts me.report_total([23,45,676,34,5778,4,23,5465]) # The total is 12048
me.travel_to("India")
puts me.report_total([6,3,6,68,455,4,467,57,4,534]) # है को कुल 1604
me.travel_to("Italy")
puts me.report_total([324,245,6,343647,686545]) # È Il totale 1030767

puts me.language_in("Italy")
puts me.language_in("India")
puts me.language_in("France")
puts me.language_in("Francz")
