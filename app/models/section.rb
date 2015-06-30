class Section < ActiveRecord::Base
  has_many :lessons

  validates :name, presence: true
  validates :name, uniqueness: true
  default_scope { order('created_at') }
end
