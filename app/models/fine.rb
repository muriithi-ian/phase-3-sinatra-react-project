class Fine < ActiveRecord::Base
    belongs_to :book
    belongs_to :member
    belongs_to :category
    belongs_to :borrow
end