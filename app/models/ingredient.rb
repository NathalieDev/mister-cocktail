class Ingredient < ActiveRecord::Base
  validates :name, uniqueness: true, presence: true

  has_many :doses, dependent: :destroy
  has_many :cocktails, through: :doses

  before_destroy :ingredient_in_cocktail?

  private

  def ingredient_in_cocktail?
    errors.add(:base, "Cannot delete the ingredient because some cocktails use it") if self.cocktails.count > 0
    errors.blank? #return false, to not destroy the element, otherwise, it will delete.
  end

end
