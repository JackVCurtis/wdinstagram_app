class EntriesController < ApplicationController
  def index
    @entries = Entry.all
  end

  def show
    @entry = Entry.find(params[:id])
  end

  def new
    @entry = Entry.new
  end

  def create
    @entry = Entry.new(entry_params)
    if @entry.save
      redirect_to @entry
    end
  end

  def edit
    @entry = Entry.find(params[:id])
  end

  def update
    @entry = Entry.find(params[:id])

    if @entry.update(entry_params)
      redirect_to @entry
    end
  end

  def destroy
    @entry = Entry.find(params[:id])

    if @entry.destroy
      redirect_to entries_path
    end
  end

  private

  def entry_params
    params.require(:entry).permit(:author, :photo_url, :date_taken, :caption)
  end
end