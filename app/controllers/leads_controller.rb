class LeadsController < ApplicationController
  def new
    @lead = Lead.new
  end

  def create
  @lead = Lead.new(user_params)
      if @lead.save
        redirect_to @lead
      else
        render :new
      end
  end

  def index
    @leads = Lead.all
    @typeoflead = ['Email','Входящий звонок','Онлайн-бронь','Chatra','Заявка с сайта','Диалог соцсети']
    @auditory = ['Индивидуалы','ДМС','Турагентства ','Предприятия']
    @where = ['Наш сайт','Рекомендации','IDS','Мероприятия','СМИ']
    @target = ['Бронь','Уточнение','Ошибочный','КП']
  end

  def show
    @thislead = Lead.find(params[:id])
  end
end
