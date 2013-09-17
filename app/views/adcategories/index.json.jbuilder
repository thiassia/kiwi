json.array!(@adcategories) do |adcategory|
  json.extract! adcategory, :name
  json.url adcategory_url(adcategory, format: :json)
end
