namespace :emails do

  desc "Send most tagged Books"
  task send_email: :environment do
    BookMailer.most_tagged.deliver_now
  end

end