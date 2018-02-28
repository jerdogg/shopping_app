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

require 'test_helper'

class ItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
