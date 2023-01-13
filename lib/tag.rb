# frozen_string_literal: true

# This module is used to generate tags
module Tag
  def self.build(name, attributes = {})
    attrs = attributes.map { |k, v| " #{k}=\"#{v}\"" }.join
    content = block_given? ? yield : ''
    case name
    when 'input', 'br', 'hr', 'mg', 'img'
      "<#{name}#{attrs}>"
    else
      "<#{name}#{attrs}>#{content}</#{name}>"
    end
  end
end
