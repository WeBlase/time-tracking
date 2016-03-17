class LetsFreckleService

  def initialize
    LetsFreckle.configure do
      account_host "asavkin"
      username "aleksandr13savkin@gmail.com"
      token "si0vtn9au5w960a69hrmquphvt393t7"
    end
  end

  def send(time, project, description)
    LetsFreckle::Entry.create(:project_id => project, :minutes => time, :description => description)
  end
end