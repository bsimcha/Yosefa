require "test_helper"

class PaintingsControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/paintings.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Painting.count, data.length
  end
end
