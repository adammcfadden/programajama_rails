class Lesson < ActiveRecord::Base
  belongs_to :sections

  validates :name, presence: true
  validates :body, presence: true
  validates :order_number, presence: true
  validates :order_number, uniqueness: true
  default_scope { order('order_number') }
end
