Fabricator(:page) do
  title { sequence(:title) }
  description { sequence(:description) }
  slug { sequence(:slug) }
end
