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
        category=Category.new()
        category.name=category_params["name"]
        category.description=category_params["description"]
        category.product_ids=category_params["products"]
        if category.save
            render json:category
        else
            render json:{error: 'Unable to add category'},status:400
        end
    end
    def update
        category=Category.find(params[:id])
        if category
            category.name=category_params["name"]
            category.description=category_params["description"]
            category.product_ids=[]
            category.product_ids=category_params["products"]
            category.save 
            render json:category, status:200
        else
            render json:{error: 'Unable to update category'},status:400
        end
    end
    def destroy
        category=Category.find(params[:id])
        if category.product_ids==[]
            category.destroy
            render json:{Status: 'Category has been deleted'},status:200
        else
            render json:{error: 'Unable to delete category'},status:400
        end
    end

    def category_params
        params.permit(:id,:name,:description,category:[:name,:description], products:[])
    end
end