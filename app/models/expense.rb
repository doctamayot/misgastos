class Expense < ApplicationRecord
  validates :date, :concept, :amount, :category_id, :kind_id, presence: true
  validates :amount, numericality: true
  belongs_to :category
  belongs_to :kind
end
