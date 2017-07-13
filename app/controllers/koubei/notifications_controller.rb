class Koubei::NotificationsController < ApplicationController
  def show
    json = {test: "success"}
    render json: json
  end

  def create
    notifications = Koubei::Notification.new(notifications_params)
    if notifications.save
      render status: :ok
      return "success"
    end
  end

  private
    def notifications_params
      parameters = ActiveModelSerializers::Deserialization.jsonapi_parse(params,
                  only: [:buyer_id, :merchant_uid, :alipay_shop_id, :total_amount,
                  :receipt_amount, :buyer_pay_amount, :gmt_payment, :trade_no,
                  :app_id, :out_trade_no, :voucher_id_list])
    end
end
