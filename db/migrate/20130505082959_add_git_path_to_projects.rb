class AddGitPathToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :git_path, :string
  end
end
