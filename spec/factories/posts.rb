FactoryBot.define do
    factory :post do
      content {"test"}
      comment {"text"}
      user
    end
end
