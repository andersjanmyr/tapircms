Fabricator(:frame) do
  name sequence(:name)
  blocks(count: 2) { |attrs, i| Fabricate(:block) }
end
