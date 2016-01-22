module GemSearcher

  def self.search(name)
    list = Gems.search(name)
    list.map do |json|
      if gem = RubyGem.where(name: json['name'])[0]
        gem
      else
        RubyGem.new({
          name: json['name'],
          project_uri: json['project_uri'],
          homepage_uri: json['homepage_uri'],
          version: json['version'],
          author: json['authors'],
          information: json['info']
        })
      end
    end
  end

end

