class Lesson < ActiveRecord::Base
  validates :name, presence: true
  validates :body, presence: true
  validates :order_number, presence: true
  validates :order_number, uniqueness: true
end
