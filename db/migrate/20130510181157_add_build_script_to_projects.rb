class AddBuildScriptToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :build_script, :string
  end
end
