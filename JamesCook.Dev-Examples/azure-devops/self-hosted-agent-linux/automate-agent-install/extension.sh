sudo mkdir /myagent 
cd /myagent
sudo wget https://vstsagentpackage.azureedge.net/agent/3.232.1/vsts-agent-linux-x64-3.232.1.tar.gz
sudo tar zxvf ./vsts-agent-linux-x64-3.232.1.tar.gz
sudo chmod -R 777 /myagent
runuser -l MyVmUser -c '/myagent/config.sh --unattended  --url https://dev.azure.com/the-punisher01 --auth pat --token qoxm2wnmxxfy3vch4ku6urledkhf3l4wpqsl4qtxhtyr5dfuzqba --pool MyDevOpsPool'
sudo /myagent/svc.sh install
sudo /myagent/svc.sh start
exit 0