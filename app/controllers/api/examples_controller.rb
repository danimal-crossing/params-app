class Api::ExamplesController < ApplicationController

  def query_params_action
    @message = "The message is #{params['message']}"
    @second_message = "The second message is #{params['second_message']}"
    render "query_params.json.jb"
  end

  def query_name_action
    name = params["name"].upcase
    @message = "You name is #{name}"
    if name.starts_with?("A")
      @message = "Hey you name starts with an A, #{name}!"
    end
    render "query_name.json.jb"
  end

  def query_guess_action
    @user_guess = params["guess"].to_i
    winning_number = 36
    if @user_guess > winning_number
      @message = "Guess lower!"
    elsif @user_guess < winning_number
      @message = "Guess higher!"
    else
      @message = "You win!"
    end
    render "query_guess.json.jb"
  end

  def segment_params_action
    @message = "The url segment is #{params[:wildcard]}"
    render "segment_params.json.jb"
  end

  def body_params_action
    @message = "The secret info is #{params[:secret_info]}"
    render "body_params.json.jb"
  end

  def body_credentials_action
    @message = "Invalid Credentials"
    if params[:username] == "hugh" && params[:password] == "swordfish"
      @message = "Valid Credentials"
    end
    render "body_credentials.json.jb"
  end

end

