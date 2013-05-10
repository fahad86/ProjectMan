class Project < ActiveRecord::Base
  attr_accessible :name, :git_path, :build_script
  validates_presence_of :name

  def with_repo
    attributes.merge(repo: repo)
  end

  def repo
    @repo = Repo.new(git_path).attributes
  end
end
