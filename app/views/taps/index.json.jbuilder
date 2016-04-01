json.array!(@taps) do |tap|
  json.extract! tap, :id, :tap, :macaddr, :state
  json.url tap_url(tap, format: :json)
end
