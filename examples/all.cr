require "../src/spinner"

CHARSET.values.each do |chars|
  sp = Spin.new(0.1, chars)
  sp.start
  sleep 2
  sp.stop
end
