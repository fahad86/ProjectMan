class Repo < Grit::Repo
  def attributes
    {
      log: log
    }
  end
end
