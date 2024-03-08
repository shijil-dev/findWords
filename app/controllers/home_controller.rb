class HomeController < ApplicationController
  def index
  end
  def clipboard
    val = params['val']
    Clipboard.copy val
    render plain: val
  end
end
