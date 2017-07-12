class CreatePayResults < ActiveRecord::Migration[5.0]
  def change
    create_table :pay_results do |t|
      t.string :buyer_id
      t.string :merchant_uid
      t.string :alipay_shop_id
      t.string :total_amount
      t.string :receipt_amount
      t.string :buyer_pay_amount
      t.string :gmt_payment
      t.string :trade_no
      t.string :app_id
      t.string :out_trade_no
      t.string :voucher_id_list

      t.timestamps
    end
  end
end
