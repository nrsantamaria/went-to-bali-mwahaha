class Seed

  def self.begin
    seed = Seed.new
    seed.generate_products
  end

  def generate_products
    20.times do |i|
      Product.create!(name: Faker::Beer.name, description: Faker::Beer.style, price: rand(10...100), image: File.new('app/assets/images/beer-icon.png'))
    end
  end
end

Seed.begin
