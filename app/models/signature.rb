class Signature < ActiveRecord::Base
  validates_length_of :name, maximum: 40, message: 'The signature can\'t be longer than 40 characters'
end
