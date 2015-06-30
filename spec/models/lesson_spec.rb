require 'rails_helper'

describe Lesson do
  it { should validate_presence_of :name}
  it { should validate_presence_of :body}
  it { should validate_presence_of :order_number}
  it { should validate_uniqueness_of :order_number}

end
