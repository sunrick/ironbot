Lita.configure do |config|
  # The name your robot will use.
  config.robot.name = "Ironbot"

  # Add HTTP port configuration for deployment to Heroku.
  config.http.port = ENV["PORT"]

  # The locale code for the language to use.
  # config.robot.locale = :en

  # The severity of messages to log. Options are:
  # :debug, :info, :warn, :error, :fatal
  # Messages at the selected level and above will be logged.
  config.robot.log_level = :info

  # An array of user IDs that are considered administrators. These users
  # the ability to add and remove other users from authorization groups.
  # What is considered a user ID will change depending on which adapter you use.
  config.robot.admins = ["U066EKC1G"]

  # The adapter you want to connect with. Make sure you've added the
  # appropriate gem to the Gemfile.
  config.robot.adapter = :slack

  ## Example: Set options for the chosen adapter.
  config.adapters.slack.token = ENV["SLACK_TOKEN"]
  # config.adapter.username = "myname"
  # config.adapter.password = "secret"

  ## Example: Set options for the Redis connection.
  config.redis[:url] = ENV["REDISTOGO_URL"]
  # config.redis.host = "127.0.0.1"
  # config.redis.port = 1234

  ## Handler Configuration
  config.handlers.debug_queue.classrooms = {
    "brit" => "sept2015_backend",
    "sunrick" => "sept2015_backend",
    "tim"  => "sept2015_frontend",
    "jd"   => "sept2015_frontend",
    "jo"   => "sept2015_mobile"
  }

  config.handlers.keepalive.url = "http://fathomless-brushlands-9507.herokuapp.com/lita/info"
end
