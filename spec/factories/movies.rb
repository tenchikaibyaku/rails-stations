FactoryBot.define do
  factory :movie do
    sequence(:name) { |n| "タイトル#{n}" }  # ← ここがポイント
    year { 2024 }
    description { "テスト用説明文" }
    image_url { "https://example.com/image.jpg" }
    is_showing { true }
  end
end
