class SchedulersController < ApplicationController
  
  def index
   @schedulers = Scheduler.all
  end

# ここより下の各アクションを追加しましょう
  def new
   @scheduler = Scheduler.new
  end

 def create
     @scheduler = Scheduler.new(params.require(:scheduler).permit(:title,:startday,:endday,:allday,:detail))
     if @scheduler.save
       flash[:notice] = "新規登録しました"
       redirect_to :schedulers
     else
       flash.now[:alert] = "・ユーザー登録に失敗しました"
       render "new"
     end
     end
 
  def show
    @scheduler = Scheduler.find(params[:id])
  end


  def edit
    @scheduler = Scheduler.find(params[:id])
  end

  def update
       @scheduler = Scheduler.find(params[:id])
     if @scheduler.update(params.require(:scheduler).permit(:title, :startday, :endday, :allday,:detail))
       flash[:notice] = "ユーザーIDが「#{@scheduler.id}」の情報を更新しました"
       redirect_to :schedulers
     else
      flash.now[:alert] = "・ユーザー登録に失敗しました"
       render :edit
     end
  end

  def destroy
   @scheduler = Scheduler.find(params[:id])
     @scheduler.destroy
     flash[:notice] = "ユーザーを削除しました"
     redirect_to :schedulers
  end
end