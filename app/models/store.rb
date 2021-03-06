# == Schema Information
#
# Table name: stores
#
#  id         :bigint(8)        not null, primary key
#  name       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Store < ApplicationRecord
  has_many :lists, dependent: :destroy

  validates :name, :presence => {:message => 'Store name cannot be blank, store not saved'}
end
