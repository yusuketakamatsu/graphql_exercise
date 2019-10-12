# == Schema Information
#
# Table name: user_informations
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  detail     :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class UserInformation < ApplicationRecord
  belongs_to :user
end
