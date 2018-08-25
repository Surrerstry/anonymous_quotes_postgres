class QuotesController < ApplicationController

  def index
    @quotes = Quote.all.paginate(:page => params[:page], :per_page => 12).order('id DESC')
  end

  def new

  end

  def create
    @quote = Quote.new(post_params)
    @quote['date_published'] = Time.now
    @quote.save

    redirect_to '/'
  end

  private def post_params
    params.require(:quote).permit(:quote)
  end

end
