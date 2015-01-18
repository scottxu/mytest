json.array!(@mycs) do |myc|
  json.extract! myc, :id, :mya_id, :myb_id
  json.url myc_url(myc, format: :json)
end
