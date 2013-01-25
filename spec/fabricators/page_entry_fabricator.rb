Fabricator(:page_entry) do
  page { Fabricate(:page) }
  block { Fabricate(:block) }
  feed  { Fabricate(:feed) }
end
