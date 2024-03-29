class Item < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    code           :string
    name           :string
    description    :string
    measure        :string
    stock          :integer
    sale_price     :decimal
    purchase_price :decimal
    timestamps
  end

  # --- Permissions --- #

  def create_permitted?
    acting_user.administrator?
  end

  def update_permitted?
    acting_user.administrator?
  end

  def destroy_permitted?
    acting_user.administrator?
  end

  def view_permitted?(field)
    true
  end

end
