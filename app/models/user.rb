class User < ActiveRecord::Base

validates :name, :presence => true
validates :password, :presence => true
validates :name, :uniqueness => true
validates_numericality_of :age
end
