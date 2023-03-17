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
class User < ApplicationRecord
  enum status: { active: 1, inactive: 2 }, _default: :active

  validates :name, presence: true

  scope :active, -> { where(status: :active) }
  scope :inactive, -> { where(status: :inactive) }
end
