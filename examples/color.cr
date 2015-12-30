require "../src/spinner"
require "colorize"

chars = Spinner::Charset[:arrow].map do |c|
  c.colorize(:light_green)
end

spin = Spin.new(0.2, chars)
spin.start
sleep 3
spin.stop
