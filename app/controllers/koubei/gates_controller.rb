class Koubei::GatesController < ApplicationController
  def show
    test = { 测试: "成功！" }
    render status: :ok, json: test
    return "success"
  end

  def create
    gate = Koubei::Gate.new(gate_params)
    if gate.save
      render status: :created
    else
      render status: :unprocessable_entity
    end
  end

  private
    def gate_params
      parameters = ActiveModelSerializers::Deserialization.jsonapi_parse(params,
                  only: [:partner_id, :notify_pid, :notify_time, :shop_id,
                  :status, :sign_type, :sign, :display_status, :notify_type,
                  :update_time, :create_time, :action, :notify_id])
    end
end
