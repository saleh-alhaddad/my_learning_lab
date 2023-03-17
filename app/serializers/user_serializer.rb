# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  email      :string
#  name       :string
#  phone      :string
#  status     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :email, :phone
end
