class RecordsController < ApplicationController

  def index
    @records = Record.all
  end

  def new
    @record = Record.new
  end

  def create
    Record.create(record_params)
    redirect_to root_path
  end

  private

  def record_params
    params.require(:record).permit(:name, :description, :title)
  end
end
