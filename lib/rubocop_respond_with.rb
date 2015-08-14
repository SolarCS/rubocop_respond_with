require "rubocop_respond_with/version"
require "rubocop"

module RuboCop
  module Cop
    module Lint
      class RespondWith < Cop
        def on_send(node)
          return unless node.to_a[1] == :respond_with
          msg = "You have a 'respond_with' statement!"
          add_offense(node, :expression, msg)
        end
      end
    end
  end
end

