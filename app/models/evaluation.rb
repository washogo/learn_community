class Evaluation < ApplicationRecord
  belongs_to :customer
  belongs_to :lesson

  enum evaluation: { "1": 0, "2": 1, "3": 2, "4": 3, "5": 4 }
  
  with_options presence: true do
    validates :evaluation
    validates :review
  end
  
end
