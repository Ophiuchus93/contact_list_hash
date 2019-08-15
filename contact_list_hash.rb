# I also struggled with trying to call the functions from the hash.
# Again if it were not for my neighbor I am not sure I would have completed this.




@contacts = [
  { name: "Lindi", phone: "801-631-0001"},
  { name: "Emma", phone: "801-631-0002"},
  { name: "Kaidyn", phone: "801-631-0003"}
]

def main_menu
puts "---Ruby Contact List---"
puts "1) View Contacts"
puts "2) Add Contact"
puts "3) Edit Contact"
puts "4) Delete Contact"
puts "5) Exit"
print "> "

case gets.to_i
when 1 
  show_contacts
  main_menu
when 2
  add_contact
  main_menu
when 3
  edit_contacts
  main_menu
when 4
  delete_contacts
  main_menu
when 5
  exit_to_main_menu
else 
  puts "Try Again"
  main_menu
  end
end     

def show_contacts
puts
@contacts.each_with_index do |contact, index|
  puts "#{ index + 1 } #{contact.values}"
end
end

def add_contact
puts "Contact Name you would like to add?"
print">"
name = gets.chomp
puts "What is the phone number?"
number = gets.chomp
@contacts << {name: name, phone: number}

show_contacts
end

def edit_contacts
  puts "What contact would you like to edit?"
  print ">"
  index = gets.chomp.to_i
  puts "What is the new name?"
  name = gets.chomp
  @contacts[index - 1][:name] = name
  puts "Is there a new phone number? y/n"
  if gets.chomp == "y"
    puts "What is the new number?"
    phone = gets.chomp
    @contacts[index - 1][:phone] = phone
  else 
    show_contacts
  end
  show_contacts
end

def delete_contacts
  puts "What contact would you like to delete?"
  print ">"
  @contacts.delete_at(gets.to_i - 1)
  show_contacts
end  

def exit_to_main_menu
abort
end

main_menu