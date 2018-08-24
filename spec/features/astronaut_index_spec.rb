require 'rails_helper'

describe 'Astronaut Index' do
  it 'should show all astronauts' do
    astronaut_1 = Astronaut.create(name: "Joe", age: 35, job: "Dusting")
    astronaut_2 = Astronaut.create(name: "Joelle", age: 45, job: "Kitchen")

    visit '/astronauts'

    expect(page).to have_content(astronaut_1.name)
    expect(page).to have_content("Age: #{astronaut_1.age}")
    expect(page).to have_content(astronaut_1.job)
    expect(page).to have_content(astronaut_2.name)
    expect(page).to have_content("Age: #{astronaut_2.age}")
    expect(page).to have_content(astronaut_2.job)
  end
  it 'should show averge age of all astronauts' do
    astronaut_1 = Astronaut.create(name: "Joe", age: 35, job: "Dusting")
    astronaut_2 = Astronaut.create(name: "Joelle", age: 45, job: "Kitchen")

    visit '/astronauts'

    avg_age = Astronaut.average_age

    expect(page).to have_content("Average Age: #{avg_age}")
  end
end
