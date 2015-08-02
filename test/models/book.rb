class Book < ActiveRecord::Base
  belongs_to :topic, :inverse_of=>:books
  has_many :chapters, :autosave => true, :inverse_of => :book
  has_many :end_notes, :autosave => true, :inverse_of => :book
end
