class Dose < ActiveRecord::Base
  belongs_to :cocktail
  belongs_to :ingredient


  validates :description, :cocktail, :ingredient, presence: true
  validates :cocktail_id, uniqueness: { scope: :ingredient_id, message: "must be unique" }
end


