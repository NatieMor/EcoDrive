class NosotrosController < ApplicationController
  def index
    if !user_signed_in?
      redirect_to inicio_index_path
    end
  end
end
