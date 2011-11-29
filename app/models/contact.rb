class Contact < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    tax_number       :string
    name             :string
    telephone_number :string
    address          :string
    reference_person :string
    bank_account     :string
    email            :string
    bussiness_level  :integer
    notes            :text
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
