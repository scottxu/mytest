json.array!(@mybs) do |myb|
  json.extract! myb, :id, :mya_id, :title
  json.url myb_url(myb, format: :json)
end
