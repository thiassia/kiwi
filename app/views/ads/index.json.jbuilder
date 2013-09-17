json.array!(@ads) do |ad|
  json.extract! ad, :name, :adcategory_id, :description, :price
  json.url ad_url(ad, format: :json)
end
