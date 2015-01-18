class Myb < ActiveRecord::Base
    belongs_to :mya
    has_many :mycs
end
