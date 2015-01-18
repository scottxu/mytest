class Myc < ActiveRecord::Base
    belongs_to :myb
    has_many :myds
    has_many :myes
end
