Fabricator(:block) do
  name sequence(:name)
  puffs(count: 3) { |attrs, i| Fabricate(:puff) }
end
