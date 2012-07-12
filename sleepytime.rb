#!/usr/bin/env ruby -w

CYCLE = 5400
TIME_TO_SLEEP = 840
GREEN = "\033[32m"
RESET = "\033[0m"
BOLD = "\033[1m"

puts "Welcome to sleepytime, an offline version of the http://sleepyti.me/ website"
puts "An average person falls asleep in 14 minutes. A sufficient sleep should include 5-6 complete 90 minute sleep cycles."

now = Time.new
wakeup = now+TIME_TO_SLEEP

puts ""
puts "Now it's " + now.strftime("%H:%M")
puts "If you go to bed now, you should set your alarm to one of the following times:"
puts ""

6.times {|i|
	wakeup += CYCLE
	print GREEN + BOLD if i > 3
	print wakeup.strftime("%H:%M")
	print RESET + " (+1)" if wakeup.strftime("%x") > now.strftime("%x")
	print "\n"	
}

