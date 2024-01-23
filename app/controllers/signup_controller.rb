class SignupController < ApplicationController

    #新規登録用：Customerのインスタンスを作成
    def new
        @customer = Customer.new
    end

    #登録されたユーザーをDBへ送る
    def create
        #インスタンスの生成
        @customer = Customer.new(customer_params)

        if @customer.save
            redirect_to root_path
        else
            #turboの場合にバリデーション失敗のエラー表示ができない為、Unprocessable Entityを返すよう指定
            render :new, status: :unprocessable_entity
        end
    end

    def customer_params
        params.require(:customer).permit(:family_name,:last_name,:family_name_furigana,:last_name_furigana,:email_address,:password)
    end
end
