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

require 'test_helper'

class ListTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
