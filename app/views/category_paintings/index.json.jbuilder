json.array! @category_paintings do |category_painting|
  json.id category_painting.id
  json.painting_id category_painting.painting_id
  json.category_id category_painting.category_id
  
end