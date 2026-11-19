# Початкові дані для демонстрації: ruby bin/rails db:seed
# Повторний запуск не створює дублікатів.

michael = User.find_or_create_by!(email: "michael@example.org") do |user|
  user.name = "Michael Hartl"
end

User.find_or_create_by!(email: "ivan@example.com") do |user|
  user.name = "Ivan Haidur"
end

michael.microposts.find_or_create_by!(content: "First micropost!")
michael.microposts.find_or_create_by!(content: "Second micropost")

puts "Користувачів: #{User.count}, мікропостів: #{Micropost.count}"
