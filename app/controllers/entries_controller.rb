class EntriesController < ApplicationController
  def index
    date_string      = (params[:sort_month] && params[:sort_month]!="")?(params[:sort_month]):(Date.current.strftime('%Y-%m'))
    @entries         = Entry.where("cast(entry_date as text) LIKE '#{date_string}%'").paginate(page: params[:page], :per_page => 20).order('entry_date DESC')
    @entries_select  = Entry.select('strftime(\'%Y-%m\', entry_date) AS date_prefix').group('strftime(\'%m\', entry_date)').order('entry_date DESC')
    @entries_data    = Entry.where("entry_date LIKE '#{date_string}%'").group(:category).order('entry_date ASC').sum(:amount)
    @title           = (params[:sort_month] && params[:sort_month]!="")? "#{params[:sort_month].split("-")[0]}年 #{params[:sort_month].split("-")[1]}月 紀錄" : "#{Date.current.strftime('%Y')}年 #{Date.current.strftime('%m')}月 紀錄"
    @entries_balance = Entry.where("entry_date LIKE '#{date_string}%'").group(:balance_type).sum(:amount)
  end

  def detail
  end

  def show
    @entry = Entry.find(params[:id])
    render 'detail'
  end

  def new
    @entry = Entry.new
  end

  def create
    @entry = Entry.new(entry_params)
    if @entry.save
      flash[:info] = "Successfully Created"
      redirect_to @entry
    else
      render 'new'
    end
  end

  def edit
    @entry = Entry.find(params[:id])
    render 'detail'
  end

  def update
    @entry = Entry.find(params[:id])
    if @entry.update(entry_params)
      flash[:info] = "Successfully Modified"
      redirect_to @entry
    else
      render 'detail'
    end
  end

  def destroy
    @entry = Entry.find(params[:id]).destroy
    flash[:info] = "Successfully Deleted"
    redirect_to entries_url
  end

  private

  def entry_params
    params.require(:entry).permit(:amount, :category, :balance_type, :description, :entry_date)
  end
end
