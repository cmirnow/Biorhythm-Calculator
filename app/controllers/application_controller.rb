class ApplicationController < Sinatra::Base
  configure do
    set :views, 'app/views'
    set :public_dir, 'public'
  end

  get '/' do
    erb :index
  end

  post '/' do
    unless params[:birthday].nil?
      arr = BiorhythmsCalc.get_values_and_dates(params[:birthday])
      @values = arr[0]
      @dates = arr.delete_at(1)
      @message = BiorhythmsCalc.flash_message(params[:birthday])
    end
    erb :index
  end
end
