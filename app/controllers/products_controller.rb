class ProductsController < ApplicationController
    def index
        products=Product.all
        render json:products
    end
    def show
        product=Product.find(params[:id])
        render json:product
    end
    def create
        product=Product.new()
        product.name=product_params["name"]
        product.description=product_params["description"]
        product.category_ids=product_params["categories"]
        if product.save
            
            render json:product
        else
            render json:{error: 'Unable to add product'},status:400
        end
    end
    def update
        product=Product.find(params[:id])
        if product
            product.name=product_params["name"]
            product.description=product_params["description"]
            product.category_ids=[]
            product.category_ids=product_params["categories"]
        
            product.save
            render json:product, status:200
        else
            render json:{error: 'Unable to update Product'},status:400
        end
    end
    def destroy
        product=Product.find(params[:id])
        if product
            product.destroy
            render json:{Status: 'Product has been deleted'},status:200
        else
            render json:{error: 'Unable to delete Product'},status:400
        end
    end

    def product_params
        params.permit(:name,:description,:categories=>[])
    end
end
