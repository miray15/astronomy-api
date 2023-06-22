require "test_helper"

class LocationTest < ActiveSupport::TestCase
  test "index" do
    get "/locations.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Location.count, data.length
  end
end
