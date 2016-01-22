module GemSearcher

  def self.search(name)
    list = Gems.search(name)
    list.map do |gem|
      if gem = RubyGem.find(name: gem['name'])
        gem
      else
        gem = RubyGem.new(name: gem['name'], gem_uri: gem['project_uri'], homepage_uri: gem['homepage_uri'], version: gem['version'] authors: gem['authors'], information: gem['information'])
      end
    end
  end

  def return_gem

  end

  def search_db
  end



end

