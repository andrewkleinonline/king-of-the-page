class Vote < ApplicationRecord
  belongs_to :subject, :class_name => "User" 
  belongs_to :response

end