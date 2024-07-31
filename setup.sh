#/bin/bash

# Install Dependencies
sudo /var/ossec/framework/python/bin/pip3 install thehive4py==1.8.1

# Provisioning Scripts
sudo cp ./custom-w2thive.py /var/ossec/integrations/custom-w2thive.py
sudo cp ./custom-w2thive /var/ossec/integrations/custom-w2thive

# Adjusting Permissions
sudo chmod 755 /var/ossec/integrations/custom-w2thive.py
sudo chmod 755 /var/ossec/integrations/custom-w2thive
sudo chown root:wazuh-user /var/ossec/integrations/custom-w2thive.py
sudo chown root:wazuh-user /var/ossec/integrations/custom-w2thive

# Echo Next Steps
echo ""
echo "#1 Edit: /var/ossec/etc/ossec.conf :"
echo ""
echo "!!! Adjust your Hook URL and API Key."
echo ""
echo "<ossec_config>"
echo "…"
echo "  <integration>"
echo "    <name>custom-w2thive</name>"
echo "    <hook_url>http://TheHive_Server_IP:9000</hook_url>"
echo "    <api_key>RWw/Ii0yE6l+Nnd3nv3o3Uz+5UuHQYTM</api_key>"
echo "    <alert_format>json</alert_format>"
echo "  </integration>"
echo "…"
echo "</ossec_config>"
echo ""
echo "#2. Restart the manager to apply the changes:"
echo "sudo systemctl restart wazuh-manager"
echo ""
