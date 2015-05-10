module PagesHelper

  def content c
    raw Shortcode.process(c)
  end
end
