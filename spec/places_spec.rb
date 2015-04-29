require('rspec')
require('places')

describe(Places) do
  before() do
    Places.clear()
  end

    describe('location') do
      it("lets you enter a location") do
        test_places = Places.new("Rome")
        expect(test_places.location()).to(eq("Rome"))
      end
    end

    describe(".all") do
      it("is empty at first") do
        expect(Places.all()).to(eq([]))
      end
   end

   describe("#save") do
     it("adds a location to the array of the saved location") do
       test_places = Places.new("The Amazon")
       test_places.save()
       expect(Places.all()).to(eq([test_places]))
     end
   end

   describe(".clear") do
     it("emptues out all of the saved places") do
       Places.new("The Amazon").save()
       Places.clear()
       expect(Places.all()).to(eq([]))
     end
   end
 end
