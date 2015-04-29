module ApplicationHelper
  def broadcast(channel, &block)
  shout = {:channel => channel, :data => capture(&block)}
  uri = URI.parse("http://localhost:9292/faye")
  Net::HTTP.post_form(uri, :shout => shout.to_json)
  end
end
