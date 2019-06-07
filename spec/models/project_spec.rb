require 'rails_helper'

RSpec.describe Project, type: :model do
  it { should validate_length_of(:description).is_at_most(300) }
  it { should validate_numericality_of(:target_value).is_greater_than(0) }
  it { should validate_numericality_of(:target_value).is_less_than_or_equal_to(500) }
  it { should belong_to(:user) }
end
