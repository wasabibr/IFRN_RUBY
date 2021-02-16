class PhoneContact
  attr_reader :label

  def initialize(phone_number, label)
    @label = label
    @phone_number = normalize(phone_number)
  end
end


class PhoneBook

  def contactList
    @contactList ||= {}
  end

  def add_contact (newContact = {})
    flag = false
    if newContact.length < 1
      return flag
    else
      flag = true
      newContact.collect do |name, number|
        contactList[name] = number
      end
      return flag
    end
  end

  def delete (targetName)
    if !contactList.has_key?(targetName)
      return false
    else
      contactList.delete(targetName)
      return true
    end
  end

  def display_contact (targetName)
    number = -1
    if contactList.has_key?(targetName)
      number = contactList(targetName)
      puts "Contact name : #{targetName}, Contact Number, #{number}"
    else
      puts "#{targetName} doesn't exist in the phonebook"
    end
  end

  def display_all_contacts
    if !contactList.empty?
      contactList.each {|name, number| puts "Contact name: #{name}, contact number #{number}" }
    else
      puts "You don't have any contact details your phonebook"
    end
  end
end
