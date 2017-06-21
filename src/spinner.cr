require "./spinner/*"

class Spin
  property delay
  property chars : Array(String)

  CL    = STDOUT.tty? ? "\u001b[0G" : "\u000d \u000d"
  CLEAR = STDOUT.tty? ? "\u001b[2K" : "\u000d"

  def initialize(@delay = 0.1, chars = Spinner::Charset[:pipe])
    @state = true
    @chars = chars.to_a
  end

  def stop
    @state = false
    print CLEAR
  end

  private def clear(count)
    print CL * count
  end

  def start
    spawn do
      i = 0
      while @state
        chars = @chars[i % @chars.size]

        print "#{chars}"
        # to_s for colorize
        clear(chars.to_s.size)

        sleep @delay

        i += 1
      end
    end
  end
end
