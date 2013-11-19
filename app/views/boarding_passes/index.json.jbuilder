json.array!(@boarding_passes) do |boarding_pass|
  json.extract! boarding_pass, :source, :destination, :transportation, :seat, :gate, :counter
  json.url boarding_pass_url(boarding_pass, format: :json)
end
