class Lesson < ActiveRecord::Base
  belongs_to :section

  validates :name, presence: true
  validates :body, presence: true
  validates :order_number, presence: true
  # validates :order_number, uniqueness: true  #no longer using once sections are added.
  default_scope { order('order_number') }

  def next
    # find all lessons where section id is the same
    lessons_array = []
    Lesson.where(section_id: self.section_id).find_each do |lesson|
      lessons_array.push(lesson)
    end
    #   of those, find lesson with order number + 1 and return
    lessons_array.each do |lesson|
      if lesson.order_number == self.order_number + 1
        return lesson
      end
    end
    return self
  end

  def previous
    # find all lessons where section id is the same
    lessons_array = []
    Lesson.where(section_id: self.section_id).find_each do |lesson|
      lessons_array.push(lesson)
    end
    #   of those, find lesson with order number + 1 and return
    lessons_array.each do |lesson|
      if lesson.order_number == self.order_number - 1
        return lesson
      end
    end
    return self
  end


end
