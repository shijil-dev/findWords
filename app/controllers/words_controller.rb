class WordsController < ApplicationController
  def index
    if params['q'].present?
      @res=Words.search(params['q'])
      p @res
    else
      @empty=true
    end
  end
end
