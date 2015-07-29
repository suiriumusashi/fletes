json.array!(@inboxes) do |inbox|
  json.extract! inbox, :id, :subject, :message
  json.url inbox_url(inbox, format: :json)
end
