Fabricator(:block) do
  name sequence(:name)
  template "default"
  puffs(count: 3) { |attrs, i| Fabricate(:puff) }
end
