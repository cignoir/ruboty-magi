require "ruboty"
require "ruboty/magi/version"

module Ruboty
  module Handlers
    class Magi < Base
      on(
        /(magi|審議).*?/i,
        name: 'answer',
        description: 'Output result of deliberation'
      )

      def answer(message)
        message.reply("MELCHIOR-1:[#{lot}] BALTHASAR-2:[#{lot}] CASPER-3:[#{lot}]")
      end

      private
      def lot
        %w(承認 否定).sample
      end
    end
  end
end
