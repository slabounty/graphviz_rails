FactoryGirl.define do
  factory :user do
    name     "Robert Johnson"
    email    "rjohnson@blues.com"
    password "foobar"
    password_confirmation "foobar"
  end
end
