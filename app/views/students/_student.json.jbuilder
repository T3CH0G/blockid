json.extract! student, :id, :cal_id, :section_id, :username, :password, :created_at, :updated_at
json.url student_url(student, format: :json)
