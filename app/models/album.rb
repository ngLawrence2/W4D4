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

class Album < ApplicationRecord
  belongs_to :band,
  foreign_key: :band_id,
  class_name: :Band
end
