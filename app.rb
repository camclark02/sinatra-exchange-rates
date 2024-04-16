require "sinatra"
require "sinatra/reloader"

get("/") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "
  # build the API url, including the API key in the query string
  api_url = "https://api.exchangerate.host/list?access_key=EXCHANGE_RATE_KEY"

  # use HTTP.get to retrieve the API information
  raw_data = HTTP.get(api_url)

  # convert the raw request to a string
  raw_data_string = raw_data.to_s

  # convert the string to JSON
  parsed_data = JSON.parse(raw_data_string)

  # get the symbols from the JSON
  # @symbols = parsed_data ...

  # render a view template where I show the symbols
  # erb(:homepage)
end
