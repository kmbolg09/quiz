class Supporter < ActiveRecord::Base

validates_presence_of :name, message: "Must enter a name."
validates_presence_of :email, message: "Must enter a vaid email."

end