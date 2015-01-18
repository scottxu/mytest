json.array!(@myds) do |myd|
  json.extract! myd, :id, :mya_id, :myb_id, :myc_id
  json.url myd_url(myd, format: :json)
end
