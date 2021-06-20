class DeviseMyMailer < Devise::Mailer
  # これでは動かない
  # https://github.com/heartcombo/devise/issues/4842
  # default template_path: 'users/mailer'

  def headers_for(action, opts)
    super.merge!(template_path: 'users/mailer')
  end
end
