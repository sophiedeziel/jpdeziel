Shortcode.setup do |config|
  config.self_closing_tags = [:documents, :prevention_list]
end

Shortcode.register_presenter(PreventionListPresenter)
Shortcode.register_presenter(DocumentsPresenter)
