json.array!(@class_sections) do |class_section|
  json.extract! class_section, :id, :name
  json.url class_section_url(class_section, format: :json)
end
