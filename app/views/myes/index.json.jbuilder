json.array!(@myes) do |mye|
  json.extract! mye, :id, :mya_id, :myb_id, :myc_id
  json.url mye_url(mye, format: :json)
end
