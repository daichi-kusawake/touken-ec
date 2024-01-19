class SignupController < ApplicationController

    #新規登録用：Customerのインスタンスを作成
    def new
        @customer = Customer.new
    end

    #登録されたユーザーをDBへ送る
    def new
        @customer = Customer.new
        if @customer.save
            redirect_to root_path, notice:"アカウントを作成しました。"
        else
            render :new
        end
    end

    def user_params
        parms.require(:customer).permit(:user_name,:email_address,:password,:password_confirmation)
    end
end
