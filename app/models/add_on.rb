class AddOn < ActiveRecord::Base
# Scopes

# Associations

  belongs_to :catalog
  belongs_to :product

  has_many :order_lines

# Validations

  validates :catalog_id, :presence => true
  validates :name, :presence => true
  validates :product_id, :presence => true
  validates :sort_order, :presence => true, :numericality => { :only_integer => true  }



# Active Record Triggers
  before_save :set_version



# Private Methods

  private


  def set_version
    self.version = self.version + 1
  end


end
