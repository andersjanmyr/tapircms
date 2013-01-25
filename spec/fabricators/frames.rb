Fabricator(:frame) do
  name sequence(:name)
  template "default"
  blocks(count: 2) { |attrs, i| Fabricate(:block) }
end
