class TVremote
  attr_reader :volume, :channel
  def initialize
    @channel = 3
    @volume = 10
    @power = 'Off'
  end
  def power             #this method simply looks
    if @power == 'Off'  #changes the value of power
      @power = 'On'     #from off to on or on to off
    else
      @power = 'Off'
    end
  end
  def channel_up       #this increases the channel by 1,
    @last = @channel   #but we're also keeping track of the
    @channel += 1      #last value if you like to use the
                       #last button, like me
    end

    def channel_down   #this decreases the channel by 1,
      @last = @channel #but we're also keeping track of
      @channel -= 1    #the last value if you like to use
    end                #the last button, like me

    def change_channel(new_channel) #this allows you to put
      @last = @channel              # in what channel you want
      @channel = new_channel        #to change to. Again, we're
    end                             #remembering the last channel.

    def last_channel              #this is the glorious last channel
        if @last.nil? != true     # that allows you to quickly flip
            last_channel = @last  #back to the channel you were on.
            @last = @channel
            @channel = last_channel
        else
            @channel
        end
    end
    def volume_up #this increases the volume by 1
      @volume += 1
    end
    def volume_down #this decreases the volume by 1
      @volume -= 1
    end
  end


