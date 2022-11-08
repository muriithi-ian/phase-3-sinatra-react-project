class Member < ActiveRecord::Base
    has_many :books
    has_many :fines, through: :borrows
    has_many :categories, through: :books
end