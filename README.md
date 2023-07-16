# ansible-personal

Install debian 12 without any desktop environments  
  
```
# Install regolith desktop
chmod +x bootstrap.sh
./bootstrap.sh

ansible-playbook -i inventory playbook.yml -K -e "user=ENTER_YOUR_USERNAME_HERE"
```
