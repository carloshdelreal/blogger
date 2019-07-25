class TagsController < ApplicationController
    def show
        @tag = Tag.find(params[:id])
    end
    def index
        @tag = Tag.all
    end
    def destroy
        @tag = Tag.find(params[:id])
		flash.notice = "Tagging '#{@tag.name}' Deleted!"
        @tag.destroy
		redirect_to action: 'index'
	end
end
