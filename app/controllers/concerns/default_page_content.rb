module DefaultPageContent
extend ActiveSupport::Concern

included do
  before_action :set_page_defaults
end

def set_page_defaults
  @page_title = "CryptoNet"
  @seo_keywords = "Mario Florence BitcoinWatcher"
end
end
