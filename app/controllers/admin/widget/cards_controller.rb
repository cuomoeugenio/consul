class Admin::Widget::CardsController < Admin::BaseController

  def new
    @card = ::Widget::Card.new
  end

end