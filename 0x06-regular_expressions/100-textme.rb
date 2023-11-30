#!/usr/bin/env ruby

puts ARGV[0].scan(/^[htb*n]{2,4}$/).join
