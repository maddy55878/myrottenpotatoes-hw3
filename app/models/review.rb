# == Schema Information
#
# Table name: reviews
#
#  id           :integer         not null, primary key
#  potatoes     :string
#  integer      :string
#  comments     :string
#  movie_id     :integer
#  user_id :integer
#  created_at   :datetime        not null
#  updated_at   :datetime        not null
#

class Review < ApplicationRecord
  belongs_to :movie
  belongs_to :user
end
