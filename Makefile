setup: roles prepare

roles: #загрузить роли
	ansible-galaxy install -r requirements.yml

prepare: #подготовить сервера
	ansible-playbook playbook.yml -i inventory.ini
