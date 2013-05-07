class PayslipsController < ApplicationController
  
  before_filter :authenticate_user!

   def index
     @payslip = Payslip.all
   end

   def new
     @payslip = current_user.payslips.new(params[:payslip])
   end

   def show
     if Payslip.find(params[:id])
       @payslip = Payslip.find(params[:id])
     else
       @payslip = ""
     end

   end

   def create
      @payslip = current_user.payslips.new(params[:payslip])
       if @payslip.save
         redirect_to root_path, :notice => "Success, Payslip Created!"
       else
         redirect_to new_Payslip_path, :notice => "Oops, Payslip creation failed!"
       end
   end
    def edit
       @payslip = Payslip.find(params[:id])
     end

     def update
       if Payslip.find(params[:id]).update_attributes(params[:payslip])
           redirect_to root_path, :notice => "Success, Payslip  Updated!"
         else
           redirect_to edit_Payslip_path, :notice => "Oops, Payslip updation failed!"
       end
     end

     def destroy
       Payslip.find(params[:id]).delete
       redirect_to root_path, :notice => "Success, Payslip  Deleted"
     end
  
  
end
