class ApplicationController < ActionController::Base
  def index
  end
  def search_results
    q=params['q']
    if q==""
      @res=["its empty"]
    else
      d=JSON.parse(File.read("public/words_dictionary.json"))[0]
      s=File.readlines('public/words.txt').map &:chomp
      #@res= params['q'] ? (s.select{|w| w =~ /A#{Regexp.quote(params['q'])}/i}) : []
      @res= params['q'] ? (s.select{|w| w.upcase.start_with?(params['q'].upcase)}) : []
      @res=@res.sort_by(&:length)
      if @res==[]
        @res=["Sorry, I dont have any matching words"]
      end
    end
  end
end
