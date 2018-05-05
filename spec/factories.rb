FactoryBot.define do
  factory :user do
    username "Bob Marley"
    password "123456"
    password_confirmation "123456"
  end
end

FactoryBot.define do
  factory :performance do
    name "Ex Models"
  end
end

FactoryBot.define do
  factory :stroke do
    sound 2
    user
    performance
  end
end
