json.array!(@batches) do |batch|
  json.extract! batch, :id, :start_year, :end_year, :title
  json.url batch_url(batch, format: :json)
end
