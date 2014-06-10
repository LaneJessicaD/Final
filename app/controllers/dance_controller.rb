class DanceController < ApplicationController

  # Try commenting out or removing this code entirely
  # to see what would happen.
  def destroy
    dance_moves = Dance.find_by("id" => params["id"])
    dance_moves.delete
    redirect_to "/dance"
  end

  def create
    Dance.create("move" => params["dance_move"], "definition" => params["dance_definition"], "difficulty" => params["dance_difficulty"], "genre" => params["dance_genre"], "picture_url" => params["dance_picture_url"], "video_url" => params["dance_video_url"])
    redirect_to "/dance"
  end

  # Receive form submitted from /dance/edit
  def update
    dance_moves = Dance.find_by("id" => params["id"])
    dance_moves.update("move" => params["move_name"], "definition" => params["dance_definition"], "difficulty" => params["dance_difficulty"], "genre" => params["dance_genre"], "picture_url" => params["dance_picture_url"], "video_url" => params["dance_video_url"])
    redirect_to "/dance"
  end

end
