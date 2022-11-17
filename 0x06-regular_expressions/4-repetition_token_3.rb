#!/usr/bin/env ruby
# Match hbn hbtn hbttn ... hbttttn

puts ARGV[0].scan(/hbt*n/).join
