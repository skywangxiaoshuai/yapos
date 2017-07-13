FactoryGirl.define do
  factory :koubei_notification, class: 'Koubei::Notification' do
    buyer_id "MyString"
    merchant_uid "MyString"
    alipay_shop_id "MyString"
    total_amount "MyString"
    receipt_amount "MyString"
    buyer_pay_amount "MyString"
    gmt_payment "MyString"
    trade_no "MyString"
    app_id "MyString"
    out_trade_no "MyString"
    voucher_id_list "MyString"
  end
end
