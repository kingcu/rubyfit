class FitCallbacks
  def initialize()
  end
  
  def print_msg(msg)
    puts msg
  end

  def on_activity(msg)
    #puts "activity: #{msg.inspect}"
  end

  def on_lap(msg)
    #puts "lap: #{msg.inspect}"
  end

  #what is a session?  seems to be another way of saying activity...
  def on_session(msg)
    #puts "session: #{msg.inspect}"
  end

  def on_record(msg)
    #puts "record: #{msg.inspect}"
    cp = {}
    if msg['position_lat'] and msg['position_long']
      cp[:y] = ("%0.6f" % msg['position_lat']).to_f
      cp[:x] = ("%0.6f" % msg['position_long']).to_f
    end
    cp[:d] = msg['distance'] if msg['distance']
    cp[:e] = msg['altitude'] if msg['altitude']
    cp[:h] = msg['heart_rate'] if msg['heart_rate']
    cp[:t] = msg['timestamp']
    cp[:c] = msg['cadence'] if msg['cadence']
    cp[:p] = msg['power'] if msg['power']
    cp[:s] = msg['speed'] if msg['speed']
    cp[:T] = msg['temperature'] if msg['temperature']
  end

  def on_event(msg)
    #puts "event: #{msg.inspect}"
  end

  def on_device_info(msg)
    #puts "device info: #{msg.inspect}"
  end

  def on_user_profile(msg)
    #puts "user profile: #{msg.inspect}"
  end

  def on_weight_scale_info(msg)
    #puts "weight scale info: #{msg.inspect}"
  end
end
