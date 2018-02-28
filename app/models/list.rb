# == Schema Information
#
# Table name: lists
#
#  id         :bigint(8)        not null, primary key
#  catagory   :text
#  store_id   :bigint(8)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class List < ApplicationRecord
  belongs_to :store
  has_many  :items, dependent: :destroy

  validates :catagory, :presence => {:message => 'catagory cannot be blank, catagory not created'}
end
