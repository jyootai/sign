class AttendanceTablesController < ApplicationController
  def show
  	@attendance_table = AttendanceTable.find(params[:id])
  end

  def new
    @attendance_table = AttendanceTable.new
  end

  def create
# p params
#	@attendance_table = current_user.attendance_tables.build(params[:attendance_table])
#	@attendance_table = AttendanceTable.new(params[:attendance_table])
  if request.post? and params[:attendance_table]
  	@attendance_table=AttendanceTable.new(params_table)
	if @attendance_table.save
		redirect_to @attendance_table
	else
	 render 'new'
  end
end
end
  def index
  end
   private
   def params_table
   	params.require(:attendance_table).permit(:content)
   end
end
