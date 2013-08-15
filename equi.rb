#!/usr/bin/env ruby

data = ARGV[0].scan( /\d+/ ).map!{ |s| s.to_i }

def search_for_number(data)
  data_length = data.size 

  (0...data_length).select do |i|
  	if data[0, i].inject(0, &:+) == data[i + 1, data_length - i - 1].inject(0, &:+) 
  		puts "your number is #{data[i]}"
  	else
  		puts "#{data[i]} is not your number"
  	end
  end
end

search_for_number(data)