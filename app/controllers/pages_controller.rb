class PagesController < ApplicationController
  def home
  end

  def about
  end


  def contact_us
    # In Rails, instance variables (@my_variable) have only one purpose:
    # To be "sent" as an argument to the view!!
    @members = ['anne', 'yuri', 'bruno', 'leo', 'douglas']

    # raise # this breaks the code

    if params[:member]
      params #=> {"member"=>"andre"}
      @members = @members.select do |member|
        member == params[:member].downcase #=> ''
      end
    end
  end
end
