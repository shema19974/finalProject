RailsAdmin.config do |config|

  ### Popular gems integration

  ## == Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :employee
    I18n.default_locale = :ja
    I18n.locale = params[:locale] || I18n.default_locale
  end
  config.current_user_method(&:current_employee)

  ## == CancanCan ==
  # config.authorize_with :cancancan
  config.authorize_with do |controller|
    if current_employee.nil?
      redirect_to main_app.new_account_session_path, notice:'Please Login to Continue..'
    elsif !current_employee.admin?
      redirect_to main_app.root_path, notice:'You are not Admin bro!'
    end
  end
  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end
