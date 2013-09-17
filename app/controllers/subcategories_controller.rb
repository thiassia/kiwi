class SubcategoriesController < ApplicationController
  def create
    @subcategory = Subcategory.new(params[:subcategory])
    if @subcategory.save
      redirect_to root_url, :notice => "Successfully created subcategory."
    else
      render :action => 'new'
    end
  end

  def destroy
    @subcategory = Subcategory.find(params[:id])
    @subcategory.destroy
    redirect_to root_url, :notice => "Successfully destroyed subcategory."
  end
end
