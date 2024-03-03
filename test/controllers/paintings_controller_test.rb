require "test_helper"

class PaintingsControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/paintings.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Painting.count, data.length
  end

  test "show" do
    get "/paintings/#{Painting.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "image", "description"], data.keys
  end

  test "create" do
    assert_difference "Painting.count", 1 do
      post "/paintings.json", params: { image: "image", description: "pretty" }
      assert_response 200
    end
  end

  test "update" do
    painting = Painting.first
    patch "/paintings/#{painting.id}.json", params: { image: "Updated image" }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal "Updated image", data["image"]
  end

  test "destroy" do
    assert_difference "Painting.count", -1 do
      delete "/paintings/#{Painting.first.id}.json"
      assert_response 200
    end
  end
end
