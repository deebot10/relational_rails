require 'rails_helper'

RSpec.describe 'the mountain index page' do

    # User Story 3, Child Index (x2)

    # As a visitor
    # When I visit '/child_table_name'
    # Then I see each Child in the system including the Child's attributes:
    it 'displays all of the mountain names' do
        range = MountainRange.create(name:'Andes', length_km: 7000, western_hemisphere:true)
        mountain = range.mountains.create(name:'Aconcagua', height_m: 6960, skiable:true)
        mountain2 = range.mountains.create(name:'Mount Sneffels', height_m: 4315, skiable:true)
        visit "/mountains"
        expect(page).to have_content(mountain.name)
        expect(page).to have_content(mountain2.name)
    end

end
RSpec.describe 'the mountain index page' do
        # User Story 4, Child Show (x2)

    # As a visitor
    # When I visit '/child_table_name/:id'
    # Then I see the child with that id including the child's attributes:
    it 'displays the mountain name' do
        range = Mountain.create(name:'Aconcagua', height_m: 6960, skiable:true)
        range2 = Mountain.create(name:'Mount Sneffels', height_m: 4315, skiable:true)
        visit "/ranges/#{range.id}"
    end
end