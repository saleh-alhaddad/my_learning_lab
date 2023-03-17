users = []
last_id = User.last.id || 0
1000.times do |num|
  user_id = last_id + num + 1
  user_data = {
    name: "Saleh #{user_id}",
    email: "saleh#{user_id}@gmail.com",
    phone: "999#{user_id}",
    status: [:active, :inactive].sample
  }
  users << user_data
end

User.insert_all(users)
