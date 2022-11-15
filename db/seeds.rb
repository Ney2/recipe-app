10.times do
  User.create!(
    [{
      name: Faker::Name.name,
      email: Faker::Internet.email,
      password: "password",
      password_confirmation: "password"
    }])
end


30.times do
  Food.create!(
    [{
      name: Faker::Food.dish,
      unit: Faker::Food.metric_measurement,
      quantity: Faker::Number.number(digits: 2),
      price: Faker::Number.decimal(l_digits: 2),
      user_id: User.all.sample.id
    }])
end

30.times do
  Recipe.create!(
    [{
      name: Faker::Food.dish,
      preparation_time: Faker::Number.number(digits: 2),
      description: Faker::Food.description,
      public: Faker::Boolean.boolean,
      user_id: User.all.sample.id
    }])
end


100.times do
  RecipeFood.create!(
    [{
      quantity: Faker::Number.number(digits: 2),
      food_id: Food.all.sample.id,
      recipe_id: Recipe.all.sample.id,

    }])
end

