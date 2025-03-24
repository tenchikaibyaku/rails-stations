FactoryBot.define do
  factory :movie do
    name { "映画タイトル" }
    year { 2024 }
    description { "これは説明です。" }
    image_url { "https://example.com/sample.jpg" }
    is_showing { true }
  end
end
