class Auther < ActiveRecord::Base
  authenticates_with_sorcery!
  validates_confirmation_of :password, message: "should mathc confirmation", if: :password
  
end
