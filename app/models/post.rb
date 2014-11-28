require_relative '../../config/environment'
require_relative '../../config/database'

class Post < ActiveRecord::Base
  # CATEGORIES = ["FOOD", "CARS"]
  # validate_inclusion_of :category, in CATEGORIES

  belongs_to :category
end