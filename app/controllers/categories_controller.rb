class CategoriesController < ApplicationController
    def index
        categories=Category.all
        render json:categories
    end
    def show
        category=Category.find(params[:id])
        render json:category
    end
    def create
        category=Category.new(category_params)
        if category.save
            render json:category
        else
            render json:{error: 'Unable to add category'},status:400
        end
    end
    def update
        category=Category.find(params[:id])
        if category
            category.update(category_params) 
            render json:category, status:200
        else
            render json:{error: 'Unable to update category'},status:400
        end
    end
    def destroy
        category=Category.find(params[:id])
        if category
            category.destroy
            render json:{Status: 'Category has been deleted'},status:200
        else
            render json:{error: 'Unable to delete category'},status:400
        end
    end

    def category_params
        params.permit(:name,:description)
    end
end