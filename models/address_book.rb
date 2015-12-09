require_relative 'entry'

class AddressBook
 attr_accessor :entries

 def initialize
   @entries = []
 end

 def add_entry(name, phone_number, email)

   index = 0
   @entries.each do |entry|

     if name < entry.name
       break
     end
     index += 1
   end

   @entries.insert(index, Entry.new(name, phone_number, email))
 end

 def remove_entry(name, phone_number, email)
  remove = Entry.new(name, phone_number, email)
  @entries.delete_if { |item| item.name == remove.name && item.phone_number == remove.phone_number && item.email == remove.email }
 end
end
