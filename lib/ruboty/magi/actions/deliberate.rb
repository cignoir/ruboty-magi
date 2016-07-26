module Ruboty
  module Magi
    module Actions
      class Deliberate < Ruboty::Actions::Base
        def call
          message.reply("MELCHIOR-1:[#{answer}] BALTHASAR-2:[#{answer}] CASPER-3:[#{answer}]")
        end

        private
        def answer
          %w(承認 否定).sample
        end
      end
    end
  end
end