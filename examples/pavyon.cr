require "../src/spinner"
require "colorize"

colors = [:red, :light_red, :yellow, :green, :light_blue, :blue, :magenta]
chars = colors.map do |color|
  ".xXx.".colorize(color).to_s
end

spin = Spin.new(0.01, chars)
spin.start
sleep 3
spin.stop
