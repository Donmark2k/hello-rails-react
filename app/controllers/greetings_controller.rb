class GreetingsController < ApplicationController
  def random_greeting
    greeting = Message.order('RANDOM()').first
    respond_to do |format|
      format.html
      format.xml { render xml: greeting }
      format.json { render json: greeting, status: :ok }
    end
  end
end
