class DanceController < ApplicationController

  # Try commenting out or removing this code entirely
  # to see what would happen.
  def destroy
    dance_moves = Dance.find_by("id" => params["id"])
    dance_moves.delete
    redirect_to "/dance"
  end

  def create
    Dance.create("move" => params["dance_move"], "picture_url" => params["dance_picture_url"], "video_url" => params["dance_video_url"], "difficulty" => params["dance_difficulty"])
    redirect_to "/dance"
  end

  # Receive form submitted from /dance/edit
  def update
    dance_moves = Dance.find_by("id" => params["id"])
    dance_moves.update("move" => params["move_name"], "picture_url" => params["p_url"], "video_url" => params["v_url"], "difficulty" => params["diffi"])
    redirect_to "/dance"
  end

end
