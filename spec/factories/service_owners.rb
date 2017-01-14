FactoryGirl.define do
  factory :service_owner do
    first_name "Fred"
    last_name "Flintstone"
    email "fflintstone@gmail.com"
  end

  factory :wilma_flintstone, class: ServiceOwner do
    first_name 'Wilma'
    last_name 'Flintstone'
    email "wflintstone@gmail.com"
  end

  factory :barny_rubble, class: ServiceOwner do
    first_name 'Barny'
    last_name 'Rubble'
    email "brubble@gmail.com"
  end

end
