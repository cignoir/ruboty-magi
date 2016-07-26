require "ruboty"
require "ruboty/magi/version"

module Ruboty
  module Handlers
    class Magi < Base
      on(
        /magi.*?/i,
        name: 'answer',
        description: 'Output result of deliberation'
      )

      def answer(message)
        message.reply("MELCHIOR-1:[#{answer}] BALTHASAR-2:[#{answer}] CASPER-3:[#{answer}]")
      end

      private
      def lot
        %w(承認 否定).sample
      end
    end
  end
end
