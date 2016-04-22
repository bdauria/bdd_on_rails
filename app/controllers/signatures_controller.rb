class SignaturesController < ApplicationController
  def index
    @signatures = Signature.all
  end

  def new
    @signature = Signature.new
  end

  def create
    @signature = Signature.create(name: params[:signature][:name])
    index
    render 'index'
  end
end
