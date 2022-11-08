class Borrow < ActiveRecord::Base
    has_many :books
    belongs_to :fine
end