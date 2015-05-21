Shortcode.setup do |config|
  config.self_closing_tags = [:documents, :prevention_list, :employees]
  config.helpers << Rails.application.routes.url_helpers

  Shortcode.register_presenter(PreventionListPresenter, DocumentsPresenter, EmployeePresenter)
end
