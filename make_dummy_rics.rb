#!/usr/bin/env ruby
require 'rubygems'
require 'json'

o = [('a'..'z'), ('A'..'Z')].map { |i| i.to_a }.flatten
string = (0...50).map { o[rand(o.length)] }.join

rics = (0...40000).map do |x|
  (0...8).map { o[rand(o.length)] }.join
end

json = {'rics' => rics}.to_json

File.open('/project/stocks.json', 'w') {|f| f.write(json) }
