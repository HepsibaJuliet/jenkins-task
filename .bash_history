sudo apt update
sudo apt install openjdk-17-jdk -y
java -version
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian-stable binary/ | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt update
ls -l /usr/share/keyrings/jenkins-keyring.asc
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo gpg --dearmor -o /usr/share/keyrings/jenkins-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.gpg] https://pkg.jenkins.io/debian-stable binary/" | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt update
cat /etc/apt/sources.list.d/jenkins.list
gpg --show-keys /usr/share/keyrings/jenkins-keyring.gpg
apt-cache policy jenkins
lsb_release -a
sudo rm -f /usr/share/keyrings/jenkins-keyring.asc
sudo rm -f /usr/share/keyrings/jenkins-keyring.gpg
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2026.key | sudo tee /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian-stable binary/ | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt update
sudo apt install jenkins -y
sudo systemctl enable jenkins
sudo systemctl start jenkins
sudo systemctl status jenkins
sudo journalctl -xeu jenkins.service --no-pager
sudo systemctl status jenkins -l --no-pager
java -version
which java
sudo ss -tulpn | grep 8080
sudo cat /etc/default/jenkins | grep JAVA
sudo cat /usr/lib/systemd/system/jenkins.service
sudo journalctl -xeu jenkins.service --no-pager
sudo apt update
sudo apt install openjdk-21-jdk -y
sudo apt update
sudo apt install openjdk-21-jdk -y
java -version
sudo update-alternatives --config java
java -version
sudo systemctl daemon-reload
sudo systemctl restart jenkins
sudo systemctl status jenkins
