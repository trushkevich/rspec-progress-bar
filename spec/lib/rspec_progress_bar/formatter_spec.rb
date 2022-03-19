# frozen_string_literal: true

require 'spec_helper'

RSpec.describe RspecProgressBar::Formatter do
  let(:io) { double }
  let(:formatter) { described_class.new(io) }

  it 'inherits from RSpec::Core::Formatters::BaseTextFormatter' do
    expect(formatter).to be_a(RSpec::Core::Formatters::BaseTextFormatter)
  end

  describe '#initialize' do
    it 'assigns @output' do
      expect(formatter.instance_variable_get(:@output)).to eq(io)
    end
  end

  describe '#start' do
    let(:notification) { double(count: 100) }

    it 'initializes progress bar' do
      expect { formatter.start(notification) }
        .to change { formatter.progress_bar }
          .from(nil)
          .to(ProgressBar)

      expect(formatter.progress_bar.max).to eq(100)
      expect(formatter.progress_bar.count).to eq(0)
    end
  end

  describe '#example_started' do
    let(:notification) { double(count: 100) }

    before do
      formatter.start(notification)
      allow(io).to receive(:<<)
      allow(io).to receive(:flush)
      allow(formatter.progress_bar)
        .to receive(:to_s)
        .and_return('PROGRESS')
    end

    it 'increments progress bar count' do
      expect { formatter.example_started(notification) }
        .to change { formatter.progress_bar.count }
          .from(0)
          .to(1)
    end

    it 'prints progress' do
      formatter.example_started(notification)

      expect(io)
        .to have_received(:<<)
        .with("PROGRESS\r")
    end

    it 'flushes IO to OS' do
      formatter.example_started(notification)

      expect(io).to have_received(:flush)
    end
  end
end
