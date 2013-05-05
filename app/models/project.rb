class Project < ActiveRecord::Base
  attr_accessible :name, :git_path
  validates_presence_of :name
end
