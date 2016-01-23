class Gist < ActiveRecord::Base
  belongs_to :ruby_gem

  def display_embed
    "#{gist_uri}.js"
  end

end
