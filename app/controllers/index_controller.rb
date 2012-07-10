class IndexController < ApplicationController
    before_filter :authenticate
    def index
        render 'index.html.erb'
    end
end
