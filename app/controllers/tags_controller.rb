class TagsController < ApplicationController

def new
    @tag = Tag.new
end

def create
    tag_params = params.require(:tag).permit(:tag)
    tag = Tag.create(tag_params)
end

end
