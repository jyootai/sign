namespace :db do
	desc "Fill database with sample data"
	task populate: :environment do
		admin = User.create!(username: "caiyu",
				     email: "kcaiyu@163.com",
				     phonenumber: "15708469542",
				     password: "11111111",
				     id: "1",
				     password_confirmation: "11111111",
				     admin: true)
		
	end
	end
