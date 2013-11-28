class AttendanceTablesController < ApplicationController
  def show
    @attendance_table = AttendanceTable.find(params[:id])
  end

  def new
    @attendance_table = AttendanceTable.new
  end

  def create
#    p params[:attendance_table]
    @attendance_table = current_user.attendance_tables.build(attendance_table_params)
    if @attendance_table.save
      redirect_to @attendance_table
    else
      render 'new'
    end
  end

  def index
    @attendance_tables= AttendanceTable.all
  end

  private
  def attendance_table_params
    params.require(:attendance_table).permit(:content, :user_id)
  end
end
