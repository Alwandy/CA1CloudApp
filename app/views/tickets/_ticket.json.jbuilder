json.extract! ticket, :id, :title, :issue, :created_by, :status, :created_at, :updated_at
json.url ticket_url(ticket, format: :json)
