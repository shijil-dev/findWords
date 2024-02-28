
class ApplicationController < ActionController::Base
  def index
  end
  def search_results
    q=params['q']
    if q==""
      @res=[["its empty"]]
    else
      s=JSON.parse(File.read("public/words_dictionary.json"))
      @res= params['q'] ? (s.select{|w| w =~ /#{Regexp.quote(params['q'])}/i}) : []
      if @res=={}
        @res=[["Sorry, I dont have any matching words"]]
      end
    end
  end
end
