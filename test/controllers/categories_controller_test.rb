require "test_helper"

class CategoriesControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/categories.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Category.count, data.length
  end

  test "show" do
    get "/categories/#{Category.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "name"], data.keys
  end
end
