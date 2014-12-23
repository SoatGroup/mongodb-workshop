
package "ruby"
package "ruby-dev"

execute "install genghis" do
	command "gem install genghisapp"
end

execute "install bson_ext" do
	command "gem install bson_ext -v 1.9.2"
end

execute "run genghis" do
	command "echo genghisapp >> /home/formation/.profile"
	not_if "grep genghisapp /home/formation/.profile"
end


cookbook_file "Genghis.desktop" do
  path "/home/formation/Bureau/Genghis.desktop"
  user "formation"
  group "formation"
  mode 00755
  action :create_if_missing
end

cookbook_file "genghis.png" do
  path "/usr/share/pixmaps/genghis.png"
  user "formation"
  group "formation"
  mode 00755
  action :create_if_missing
end
