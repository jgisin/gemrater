json.array!(@ruby_gems) do |ruby_gem|
  json.extract! ruby_gem, :id, :name, :version, :gem_uri, :homepage_uri
  json.url ruby_gem_url(ruby_gem, format: :json)
end
