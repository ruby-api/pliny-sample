require "spec_helper"

describe Endpoints::Posts do
  include Rack::Test::Methods

  describe "GET /posts" do
    it "succeeds" do
      get "/posts"
      assert_equal 200, last_response.status
    end
  end
end
