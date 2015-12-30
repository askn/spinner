require "../src/spinner"

puts "starting..."
sp = Spin.new(0.1)
sp.start
sleep 3
sp.stop
puts "end!"

sp1 = Spin.new(0.1, Spinner::Charset[:three_dots])
sp1.start
sleep 3
sp1.stop

sp1 = Spin.new(0.1)
sp1.chars = Spinner::Charset[:arrow]
sp1.start
sleep 3
sp1.stop
