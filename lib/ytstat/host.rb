module Ytstat
  class Host
    attr_accessor :min, :max, :avg, :stddev, :url

    def initialize(name, domain='vpndidu.com')
      @url = [name, domain].join('.')
      @min = @max = @avg = @stddev = Float::MAX
    end

    def ping
      s = `ping -q -c 3 #{@url}`
      s.lines[-1] =~ /= (.*) ms/
        @min, @avg, @max, @stddev = $1.split('/').map {|x| x.to_f } if $1
    end
  end
end
