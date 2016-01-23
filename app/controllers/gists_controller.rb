class GistsController < ApplicationController

  def new
    @gist = Gist.new
    @ruby_gem = RubyGem.find(params[:ruby_gem_id])
  end

  def create
    @gem = RubyGem.find(params[:ruby_gem_id])

    @gist = @gem.gists.build(gist_params)
    if @gist.save
      redirect_to show_gem_path(@gist.ruby_gem.name)
    else
      render :new
    end

  end

  private

    def gist_params
      params.require(:gist).permit(:gist_uri)
    end
end
