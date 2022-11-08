class Category < ActiveRecord::Base
    has_many :books
    has_many :borrows, through: :books 
    has_many :fines, through: :borrows
end