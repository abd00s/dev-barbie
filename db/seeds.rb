[Click, User].each{|model| model.destroy_all}
# Create an Admin user
Fabricate(:user, email: "admin@shrimp.io", is_admin?: true) do
  clicks(count:10) { Fabricate(:click) }
end
# Create 3 regular users
3.times do
  Fabricate(:user) do
    clicks(count:10) { Fabricate(:click) }
  end
end