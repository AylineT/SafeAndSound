json.extract! albuminfo, :id, :title, :artists, :cover, :duration, :tracks, :release, :created_at, :updated_at
json.url albuminfo_url(albuminfo, format: :json)
