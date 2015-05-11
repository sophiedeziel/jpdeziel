class PreventionListPresenter

  def self.for
    # An array can also be returned if the presenter should be applied
    # to multiple shortcodes, e.g. [:gallery, :enhanced_gallery]
    :prevention_list
  end

  def initialize(attributes, content, additional_attributes)
    @content = content
    @attributes = attributes
  end

  def content
    @content
  end

  def attributes
    { categories: categories }
  end

  private

  def categories
    PreventionCategory.all
  end
end