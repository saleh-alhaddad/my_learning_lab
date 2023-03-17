users = []
last_id = User.maximum(:id) || 0
1000.times do |num|
  num_inc = last_id + num + 1
  user_data = {
    name: "Saleh #{num_inc}",
    email: "saleh#{num_inc}@gmail.com",
    phone: "999#{num_inc}",
    status: [:active, :inactive].sample
  }
  users << user_data
end

User.insert_all(users)
