module GemCreator

  def self.create(name)
    if gem = RubyGem.where(name: name)[0]
      gem
    else
      json = Gems.info(name)
      RubyGem.create({
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
