class Api::ExamplesController < ApplicationController

  def query_params_action
    @message = "The message is #{params['message']}"
    @second_message = "The second message is #{params['second_message']}"
    render "query_params.json.jb"
  end

end
