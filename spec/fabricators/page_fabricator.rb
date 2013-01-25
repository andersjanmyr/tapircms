Fabricator(:page) do
  name { sequence(:name) }
  slug { sequence(:slug) }
end
