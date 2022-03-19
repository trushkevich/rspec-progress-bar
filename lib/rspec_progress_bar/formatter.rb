# frozen_string_literal: true

require 'rspec/core/formatters/base_text_formatter'

module RspecProgressBar
  class Formatter < RSpec::Core::Formatters::BaseTextFormatter
    RSpec::Core::Formatters.register self, :start, :example_started

    attr_accessor :progress_bar

    def start(notification)
      @progress_bar = ProgressBar.new(notification.count)
    end

    def example_started(_notification)
      progress_bar.count += 1
      output << "\r#{progress_bar}"
    end
  end
end
