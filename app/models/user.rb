# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  email      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ApplicationRecord
  has_many :posts
  has_one :user_information

  def test
    "hogehoge"
  end

  def posts_in_date
    from = Time.current - 1.month
    to = Time.current + 1.month

    posts.where("created_at BETWEEN ? AND ?", from, to)
  end
end
