class NotesController < ApplicationController
  def create
  	@task = Task.find(params[:task_id])
	@task.notes.create(
		memo: note_params[:memo],
		image: note_params[:image].read
		)
 	redirect_to edit_task_path(@task) 
  end
  
  def destroy
    @task = Task.find(params[:task_id])
    @note = @task.notes.find(params[:id])
    @note.destroy
    redirect_to edit_task_path(@task)
  end

  def image
  	note = Note.find(params[:id])
  	send_data(note.image, :type => "image/jpg")
  end

  private
  def note_params
	params.require(:note).permit(:memo, :image)
  end
end
