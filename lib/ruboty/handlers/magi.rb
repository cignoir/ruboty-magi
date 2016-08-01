module Ruboty
  module Handlers
    class Magi < Base
      on(
          /magi\s*(-(?<option>[spc]+)+)?.*/i,
          name: 'answer',
          description: 'Magi System answers a question after deep deliberation.'
      )

      def answer(message)
        option = parse_option(message)
        simple_mode = option.include?(:s)
        reply_message = judge(answer_pattern(option), simple_mode)
        message.reply(reply_message)
      end

      private
      def parse_option(message)
        message[:option] ? message[:option].strip.chars.map(&:to_sym) : []
      rescue
        []
      end

      def answer_pattern(option)
        default = %w(承認 否定)
        return default unless option

        case
          when option.include?(:c) then %w(可決 否決 保留) # complex mode
          when option.include?(:p) then %w(はい いいえ) # plain mode
          else default
        end
      end

      def judge(pattern = [], simple_mode = false)
        if simple_mode
          "[#{pattern.sample}][#{pattern.sample}][#{pattern.sample}]"
        else
          "MELCHIOR-1:[#{pattern.sample}] BALTHASAR-2:[#{pattern.sample}] CASPER-3:[#{pattern.sample}]"
        end
      end
    end
  end
end
