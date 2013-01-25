Fabricator(:puff) do
  name sequence(:name)
  template "default"
end
