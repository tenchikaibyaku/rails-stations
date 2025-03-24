# spec/factories/movies.rb
FactoryBot.define do
  factory :movie do
    name { "テスト映画" }
    image_url { "https://example.com/image.jpg" }
    is_showing { true }
  end
end
