class Widget
  class Feed
    KINDS = %w(proposals debates processes)

    attr_accessor :kind

    def initialize(kind)
      @kind = kind
    end

    def active?(kind)
      Setting["feature.homepage.widgets.feeds.#{kind}"]
    end

    def self.active
      KINDS.collect do |kind|
        feed = new(kind)
        feed if feed.active?(kind)
      end.compact
    end

    def items
      send(kind)
    end

    def proposals
      Proposal.all #active order_by_votes
    end

    def debates
      Debate.all #order_by_votes
    end

    def processes
      Legislation::Process.all #active order_by(comments)
    end

    def name
      kind
    end

  end
end