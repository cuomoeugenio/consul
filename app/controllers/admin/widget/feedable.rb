class Widget
  class Feedable < ActiveRecord::Base
    KINDS = %w(proposals debates processes).freeze
  end
end