# == Schema Information
#
# Table name: items
#
#  id          :bigint(8)        not null, primary key
#  name        :text
#  description :text
#  quantity    :integer
#  price       :decimal(, )
#  list_id     :bigint(8)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Item < ApplicationRecord
  belongs_to :list

  validates :name, :presence => {:message => 'catagory cannot be blank, catagory not created'}
  validates :description, length: { in: 5..20 }
  validates :quantity, numericality: { only_integer: true }, :presence => {:message => 'catagory cannot be blank, catagory not created'}

  # could use a decimal place validates function.  but seems hard.
  validates :quantity, numericality: { only_integer: true }, :presence => {:message => 'catagory cannot be blank, catagory not created'}


  def self.class_method
    puts "class method"
  end

  def instance_method
    puts "instance method"
  end

end
