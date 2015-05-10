class DocumentsPresenter

  def self.for
    # An array can also be returned if the presenter should be applied
    # to multiple shortcodes, e.g. [:gallery, :enhanced_gallery]
    :documents
  end

  def initialize(attributes, content, additional_attributes)
    @content = content
    @attributes = attributes
  end

  def content
    @content
  end

  def attributes
    { documents: documents }
  end

  private

  def documents
    Document.all
  end
end