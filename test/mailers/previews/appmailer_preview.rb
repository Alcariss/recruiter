# Preview all emails at http://localhost:3000/rails/mailers/appmailer
class AppmailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/appmailer/register
  def register
    Appmailer.register
  end

end
