class AddOrderNumberToLessons < ActiveRecord::Migration
  def change
    add_column :lessons, :order_number, :int
  end
end
