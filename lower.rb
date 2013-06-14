#!/usr/bin/env ruby
#
# Public: Renames all files in a given directory to make sure all words are lower cased.
# Matthew Strickland
#
# The first argument is the directory otherwise it defaults to the directory the script is located in.
#
# example usage: ruby lower.rb ~/my/cool/directory/path
directory = ARGV[0]

if directory.nil?
  directory = File.dirname(__FILE__)
end

Dir.entries(directory).each do |f|
  (n = f.dup).downcase! and File.rename(File.join(directory, f), File.join(directory,n))
end
