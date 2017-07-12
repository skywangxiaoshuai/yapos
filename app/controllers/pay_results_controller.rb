class PayResultsController < ApplicationController

  def show
    json = {test: "1212121"}
    render status: :ok, json: json
  end

  def create
    pay_results = PayResult.new(pay_results_params)
    if pay_results.save
      render status: :ok
      return "success"
    end
  end

  private
    def pay_results_params
      parameters = ActiveModelSerializers::Deserialization.jsonapi_parse(params,
                  only: [:buyer_id, :merchant_uid, :alipay_shop_id, :total_amount,
                  :receipt_amount, :buyer_pay_amount, :gmt_payment, :trade_no,
                  :app_id, :out_trade_no, :voucher_id_list])
    end
end
