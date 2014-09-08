require "inkling/version"

require "inkling/string_additions"
require "inkling/nokogiri_additions"

require "inkling/client"
require "inkling/attribute_initialization"
require "inkling/api_resource"

require "inkling/market"
require "inkling/stock"
require "inkling/price"
require "inkling/category"
require "inkling/note"

require "inkling/parsers/base_parser"
require "inkling/parsers/market_parser"
require "inkling/parsers/price_parser"
require "inkling/parsers/stock_parser"
require "inkling/parsers/category_parser"
require "inkling/parsers/note_parser"

Dir["./lib/inkling/parsers/*.rb"].each{|f| require f }
Dir["./lib/inkling/errors/*.rb"].each{|f| require f }

module Inkling
  class << self
    attr_accessor :environment

    def configure
      yield self
    end
  end
end
