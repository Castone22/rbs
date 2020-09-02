#!/usr/bin/env ruby

STDLIB_TEST = Gem::Version.new(RUBY_VERSION).yield_self do |ruby_version|
  Gem::Version.new('2.7.0') <= ruby_version
end

unless STDLIB_TEST
  STDERR.puts "🚨🚨🚨 stdlib test requires Ruby 2.7 or later but RUBY_VERSION==#{RUBY_VERSION}, exiting... 🚨🚨🚨"
  exit
end

ARGV.each do |arg|
  load arg
end
