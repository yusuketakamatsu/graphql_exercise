# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create!(
  name: 'tarou',
  email: 'exapmle@gmail.com'
)

UserInformation.create!(
  user_id: user.id,
  detail: 'I ma tarou.'
)

Post.create!(
  user_id: user.id,
  subject: 'test post 1.'
)

Post.create!(
  user_id: user.id,
  subject: 'test post 2.'
)