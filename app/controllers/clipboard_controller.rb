class ClipboardController < ApplicationController
  def index
    val = params['val']
    Clipboard.copy val
    render plain: val
  end
end
