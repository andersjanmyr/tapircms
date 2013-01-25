Fabricator(:user) do
  name sequence(:name)
  email { |attrs| "#{attrs[:name].parameterize}@example.com" }
end
