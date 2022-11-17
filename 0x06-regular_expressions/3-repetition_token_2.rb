#!/usr/bin/env ruby
# Match hbtn hbttn ... hbttttn

puts ARGV[0].scan(/hbt{1,4}n/).join
