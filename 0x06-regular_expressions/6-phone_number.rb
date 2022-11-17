#!/usr/bin/env ruby
# Match 10 digit phone number

puts ARGV[0].scan(/^[1-9]{10}$/).join
