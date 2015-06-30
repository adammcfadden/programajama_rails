class Lesson < ActiveRecord::Base
  belongs_to :section

  validates :name, presence: true
  validates :body, presence: true
  validates :order_number, presence: true
  # validates :order_number, uniqueness: true  #no longer using once sections are added.
  default_scope { order('order_number') }
end
