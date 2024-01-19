class SignupController < ApplicationController

    #新規登録用：Customerのインスタンスを作成
    def new
        @customer = Customer.new
    end

    #登録されたユーザーをDBへ送る
    def create
        @customer = Customer.new(customer_params)
        if 
            redirect_to root_path, notice:"アカウントを作成しました。"
        else
            render :new
        end
    end

    def customer_params
        params.require(:customer).permit(:family_name_name,:last_name,:family_name_furigana,:last_name_furigana,:email_address,:password_confirmation)
    end
end
