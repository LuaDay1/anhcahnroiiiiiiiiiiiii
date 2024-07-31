#########################
#      ON SERVER        #
#########################

# install openssh-server
sudo apt install openssh-server

# start openssh-server
sudo service ssh start

# create account, login, download and unzip ngrok -> https://ngrok.com/
./ngrok authtoken 2EXk4KhlU0epiG7nZV7CAHY27cF_4VgheQpCPvsYkD2dqjb3L

# start ssh/tcp tunnel (22 or 12345, you choose the port)
./ngrok tcp 22

# ngrok will start like:
# ngrok by @inconshreveable                                                       (Ctrl+C to quit)
#                                                                                                
# Session Status                online                                                            
# Account                       User Name (Plan: Free)                                      
# Version                       2.3.27                                                            
# Region                        United States (us)                                                
# Web Interface                 http://127.0.0.1:4040                                             
# Forwarding                    tcp://0.tcp.ngrok.io:16965 -> localhost:22
#                                               /\ url and port number you'll use on ssh connection

#########################
#      ON CLIENT        #
#########################
ssh serverusername@0.tcp.ngrok.io -p 16965
