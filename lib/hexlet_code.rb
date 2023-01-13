# frozen_string_literal: true

require 'hexlet_code/version'

# This module is used to generate HTML forms
module HexletCode
  autoload(:Tag, 'tag')

  User = Struct.new(:name, :job, keyword_init: true)

  def self.form_for(user, url: '#')
    Tag.build('form', action: url, method: 'post')
  end
end
