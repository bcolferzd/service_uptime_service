require "cuba/test"
require_relative "up_service"

scope do
  test "GET API root" do
    get '/up'

    assert_equal "{\"up\":\"I'm up!\"}", last_response.body

  end
end
