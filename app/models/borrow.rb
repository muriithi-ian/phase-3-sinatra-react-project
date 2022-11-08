class Borrow < ActiveRecord::Base
    has_many :members
    has_many :books
    has_many :categories
    has_many :fines, through: :books
end