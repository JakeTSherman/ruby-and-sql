class Company < ApplicationRecord
has_many :contacts

    #def contacts 
     #   Contact.where({ company_id: read_attribute(:id)})
    #end      
end

  