require 'rails_helper'

describe Order do
  it { should have_many :order_items }
  it { should belong_to :user }
  it { is_expected.to callback(:calculate_total).before(:save)}
end
