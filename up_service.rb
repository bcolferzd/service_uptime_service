require 'cuba'
require 'cuba/safe'

Cuba.use Rack::Session::Cookie, :secret => "arbitrary_application_cookie_secret"


Cuba.plugin Cuba::Safe

Cuba.define do
  response_content = Hash.new
  response_content['up'] = "I'm up!"

  on get do
    on "up" do
      res.write(response_content.to_json)
    end

    on root do
      res.redirect "/up"
    end
  end
end