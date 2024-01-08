setup: roles prepare

roles: #загрузить роли
	ansible-galaxy install -r requirements.yml

prepare: #запустить сервера
	#ansible-playbook playbook.yml -i inventory.ini
	ansible-playbook -i inventory.ini --vault-password-file ../pass/vault-password-file playbook.yml

encrypt: #зашифровать данные подключения к базе
	ansible-vault encrypt group_vars/webservers/vault.yml

decrypt: #изменить данные подключения к базе
	ansible-vault edit group_vars/webservers/vault.yml