json.array!(@posts) do |post|
  json.extract! post, :id, :message, :faculty_id, :department_id, :year_id, :class_section_id
  json.url post_url(post, format: :json)
end
