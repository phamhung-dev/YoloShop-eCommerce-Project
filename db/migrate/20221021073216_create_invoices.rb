class CreateInvoices < ActiveRecord::Migration[7.0]
  def change
    create_table :invoices, id: false, primary_key: :invoice_id do |t|
      t.uuid :invoice_id, primary_key: true, null: false, default: 'gen_random_uuid()'
      t.uuid :order_id, null: false
      t.uuid :admin_id, null: false
      t.uuid :payment_id, null: false
      t.string :bank_code
      t.string :bank_transaction_no
      t.string :transaction_no
      t.money :total_money, null: false
      t.money :total_money_discount, null: false
      t.money :total_money_payment, null: false

      t.timestamps
      t.uuid :updated_by, null: false
      t.boolean :is_actived, null: false, default: true
      t.datetime :deleted_at
      t.uuid :deleted_by
    end
  end
end