# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


10.times.each do |x| 
 Category.create(:name => Faker::Book.genre)
end

10.times.each do |x| 
 Licor.create(:nombre => Faker::App.name, 
 :mililitros => Faker::Number.between(1, 2000), 
 :valor => Faker::Number.decimal(2, 3),
 :descripcion => Faker::Lorem.sentence,
 :category_licor_id => Faker::Number.between(1, 4)
 )
end

CategoryLicor.create(nombre: 'Media')
CategoryLicor.create(nombre: 'Botella')
CategoryLicor.create(nombre: 'Litro')
CategoryLicor.create(nombre: 'Garrafa')