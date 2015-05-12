require 'rails_helper'

RSpec.describe ApplicationHelper, type: :helper do
  before do
    Shortcode.setup do |config|
      config.self_closing_tags = [:documents]
      config.templates = { documents: '<div>changed</div>' }
    end
  end

  let(:string) { 'thisthat [documents]' }

  describe 'content' do
    subject { helper.content(string) }
    it 'replaces the shortcode' do
      expect(subject).to eq('thisthat <div>changed</div>')
    end
  end

  describe 'content_html' do
    subject { helper.content_html(string) }
    it 'replaces the shortcode' do
      expect(subject).to eq('thisthat <div>changed</div>')
    end
  end
end
