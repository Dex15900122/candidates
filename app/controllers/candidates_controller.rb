class CandidatesController < ApplicationController
  def index
    @candidates = Candidate.page(params[:page]).per(3)
      @candidcate_tiltle = "投票網站"
  end

  def new
    @candidate=Candidate.new

  end

  def create
    @candidate=Candidate.new(candidate_params)
    if @candidate.save
      redirect_to candidates_path,notice: "create candidate successful"
    else
      render :new
    end
  end

  def show
    @candidate = Candidate.includes(:comments).find_by(id: params[:id])
    @comment = Comment.new

    @candidates = Candidate.find_by(id: params[:id])
    @candidcate_tiltle = Candidate.find_by(id: params[:id]).name
  end

  def edit
    @candidate = Candidate.find_by(id: params[:id])
  end

  def update
    @candidate=Candidate.find_by(id: params[:id])
    if @candidate.update(candidate_params)
      redirect_to candidates_path,notice: "update candidate successful"
    else
      render :edit
    end
  end

  def destroy
    @candidate = Candidate.find_by(id: params[:id])
    @candidate.destroy if @candidate
    redirect_to candidates_path,notice: "delete candidate successful"
  end

  def vote
    @candidate = Candidate.find_by(id: params[:id])
    @candidate.vote_logs.create(ip_address: request.remote_ip) if @candidate
    @candidate.save
    redirect_to candidates_path,notice: "完成投票！"
  end







    private
    def candidate_params
      params.require(:candidate).permit( :name, :age, :party, :politics, :image)
    end

end
