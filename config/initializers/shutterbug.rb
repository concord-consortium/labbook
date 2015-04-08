if ENV['SHUTTERBUG_JS']
  SHUTTERBUG_JS = ENV['SHUTTERBUG_JS']
else
  SHUTTERBUG_JS = '/javascripts/shutterbug.js'
end

if ENV['SHUTTERBUG_SERVER']
  SHUTTERBUG_SERVER = ENV['SHUTTERBUG_SERVER']
else
  SHUTTERBUG_SERVER = 'https://snapshot.concord.org/shutterbug'
end
