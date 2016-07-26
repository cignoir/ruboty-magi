require "ruboty/magi/actions/deliberate"

module Ruboty
  module Handlers
    class Magi < Base
      on /(magi|審議)\s+(?<question>.*?)/, name: 'deliberate', description: 'Output result of deliberation'

      def deliberate(message)
        Ruboty::Magi::Actions::Deliberate.new(message).call
      end
    end
  end
end