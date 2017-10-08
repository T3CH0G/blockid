json.extract! checkin, :id, :student_id, :section_id, :time, :created_at, :updated_at
json.url checkin_url(checkin, format: :json)
