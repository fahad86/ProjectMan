class Build < ActiveRecord::Base
  belongs_to :project

  after_create :run
  always_background :run

  private

  def run
    self.result = `ls`
    save!
  end
end
