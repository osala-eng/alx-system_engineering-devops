#!/usr/bin/env ruby
# Match hbtn hbttn ... hbttttn

puts ARGV[0].scan(/hbt+n/).join
