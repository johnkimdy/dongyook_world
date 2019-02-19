class Article < ApplicationRecord
  belongs_to :category
  valdiates_presence_of :title, :content

  scope :active, 	   -> { where('active = ?', true) }
  scope :alphabetical, -> { order('title') }
end
