Fabricator(:click) do
  created_at { Faker::Date.between(6.days.ago, Date.current).in_time_zone("Eastern Time (US & Canada)") }
end