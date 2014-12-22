mongo_version = "2.6.6"



if !File.directory?("/home/formation/mongodb")
	url = "https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-#{mongo_version}.tgz"
	remote_file "/home/formation/mongodb.tgz" do
	  source url
	  action :create
	  owner "formation"
	  group "formation"
	end


	execute "untar mongodb" do
		command "tar zxvf mongodb.tgz"
		cwd "/home/formation"
		user "formation"
		group "formation"
	end
	
	execute "mv mongodb" do
		command "mv mongodb-linux-x86_64-#{mongo_version} mongodb"
		cwd "/home/formation"
		user "formation"
		group "formation"
	end
end