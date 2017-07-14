class Seed

  def self.begin
    seed = Seed.new
    seed.generate_products
    seed.add_admin
  end

  def generate_products
    20.times do |i|
      Product.create!(name: Faker::Beer.name, description: (Faker::Beer.style + " | " + Faker::Beer.alcohol), price: rand(5...20), image: File.new('app/assets/images/beer-icon.png'))
    end
  end

  def add_admin
    admin = User.create({name: 'admin', email: 'admin@email.com', admin: true, password: '123456', password_confirmation: '123456'})
  end
end

Seed.begin
