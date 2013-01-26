Fabricator(:article) do
  title sequence(:title)
  abstract sequence(:title)
  content sequence(:title)
  source sequence(:title)
  uri sequence(:title)
  images(count: 2) { |attrs, i| "/images/image#{i}.png" }
end
