require "test_helper"

class LocationTest < ActiveSupport::TestCase
  test "index" do
    get "/locations.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Location.count, data.length
  end

  test "create" do
    assert_difference "Location.count", 1 do
      post "/locations.json", params: { city: "Chicago", state: "IL" }
      assert_response 200
    end
    
    test "destroy" do
      assert_difference "Location.count", -1 do
        delete "/locations/#{Location.first.id}.json"
        assert_response 200
      end
    end


  end 

end