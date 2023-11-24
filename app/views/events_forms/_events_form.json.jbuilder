json.extract! events_form, :id, :categoryevent, :grouping, :subgrouping, :species, :subspecies, :created_at, :updated_at
json.url events_form_url(events_form, format: :json)
