class Entry < ActiveRecord::Base
  validates :amount, presence: true, length: { maximum: 20 }
  validates	:category,     presence: true
  validates	:entry_date,   presence: true
  validates	:balance_type, presence: true
end
