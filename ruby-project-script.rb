#!/usr/bin/env ruby
require 'FileUtils'

puts "What is the name of your project?"
project_name = gets.chomp
FileUtils.mkdir("#{project_name}")
FileUtils.cd("#{project_name}")
%w(lib spec).each{|dir| FileUtils.mkdir("#{dir}")}
FileUtils.touch("Gemfile")
File.write("Gemfile", "source 'https://rubygems.org'\ngem 'rspec'\ngem 'pry'")

puts "Enter the classes to include in your project separated by spaces."
class_array = gets.chomp.split(" ")
class_array.each do |element|
  ["lib/#{element}.rb","spec/#{element}_spec.rb"].each{|file| FileUtils.touch(file)}
  File.write("lib/#{element}.rb","require 'pry'")
  File.write("spec/#{element}_spec.rb","require 'rspec'\nrequire '#{element}'\n\ndescribe('#{element}') do \nend")
end