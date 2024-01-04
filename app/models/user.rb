# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  name       :string
#  uuid       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class User < ApplicationRecord
  def self.ransackable_attributes(auth_object = nil)
  ["created_at", "id", "id_value", "name", "updated_at", "uuid"]
  end
end
