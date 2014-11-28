categories = %w(books clothes food equipments laptops phones household cars furniture)

puts "Create category: #{categories}"

categories.each do |name|
  Category.create(category_title: name)
end

# 3.times do
# new_category = Category.create(category_title: Faker::Lorem.sentence)
# end

# 5.times do
#   fake_name = Faker::Name.name
#   fake_title = Faker::Lorem.sentence
#   fake_description = Faker::Lorem.sentence(10)
#   fake_price = Faker::Number.decimal(2)
#   Post.create(post_creator: fake_name, post_title: fake_title, post_description: fake_description, post_price: fake_price)
# end