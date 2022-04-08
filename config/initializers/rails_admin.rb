RailsAdmin.config do |config|

  ### Popular gems integration

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  ## == CancanCan ==
  # config.authorize_with :cancancan

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

    config.model "ContentBuilder" do
      navigation_label "Notícias"
      label "Notícia"

      list do
        field :id 
        field :title
        field :written_by
        field :date_publish
        field :status
      end
      edit do
        field :title
        field :date_publish
        field :written_by
        field :content_builder_category
      end
    end

    config.model "ContentBuildrCategory" do
      navigation_label "Notícias"
      label "Categorias"

      list do
        field :id
        field :title
      end
      edit do
        field :title
      end
    end
    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end
