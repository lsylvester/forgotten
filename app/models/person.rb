class Person < ActiveRecord::Base
  has_many :reminders, :dependent => :destroy
  validates_uniqueness_of :slug
  
  def to_param
    slug
  end
end
