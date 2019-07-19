require 'rails_helper'

RSpec.describe 'Machine Show Page' do
  describe 'as a visitor' do
    before(:each) do

      @snickers = Snack.create!(name:"Snickers", price: 1)
      @chips = Snack.create!(name:"Chips", price: 2)
      @twix = Snack.create!(name:"Snickers", price: 3)


      @machine_1 = Machine.create!(location: "Boulder", owner:"Nathan")
      @machine_2 = Machine.create!(location: "Denver", owner: "Nathan")
      @machine_3 = Machine.create!(location: "Golden", owner: "Nathan")

      @machine_1.snacks << [@snickers, @chips]
      @machine_2.snacks << [@chips, @twix]
      @machine_3.snacks << [@snickers, @chips, @twix]

    end

    it 'I see all the snacks associated with that vending machine and their price' do
      visit machine_path(machine.id)

      within "#{machine}-#{@machine_1.id}" do
        expect(page).to have_content(@machine_1.name)
        expect(page).to have_content(@snickers.name)
        expect(page).to have_content(@snickers.price)
        expect(page).to have_content(@chips.name)
        expect(page).to have_content(@chips.price)
      end
    end
  end
end
