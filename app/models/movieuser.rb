# == Schema Information
#
# Table name: movieusers
#
#  id         :integer         not null, primary key
#  name       :string
#  provider   :string
#  uid        :string
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class Movieuser < ApplicationRecord
  has_many :reviews
    # Edit app/models/moviegoer.rb to look like this:
  def self.create_with_omniauth(auth)
    Movieuser.create!(
      :provider => auth["provider"],
      :uid => auth["uid"],
      :name => auth["info"]["name"])
  end

end
