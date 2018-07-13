# == Schema Information
#
# Table name: albums
#
#  id         :integer          not null, primary key
#  year       :integer          not null
#  title      :string           not null
#  type       :boolean          default(TRUE), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  band_id    :integer          not null
#

require 'test_helper'

class AlbumTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
