# Setup variabel default
DB ?= postgres
MODULE ?= base

.PHONY: restart update-app-list upgrade

# Restart odoo service
restart:
	podman restart odoo-service

# Update app list (Sama dengan mengupdate module 'base')
# Contoh penggunaan spesifik DB: make update-app-list DB=nama_database_kamu
update-app-list:
	podman exec -it odoo-service odoo -u base -d $(DB) --stop-after-init
	@echo "App list updated!"

# Upgrade module spesifik
# Contoh penggunaan: make upgrade MODULE=nama_module DB=nama_database_kamu
upgrade:
	podman exec -it odoo-service odoo -u $(MODULE) -d $(DB) --stop-after-init
	@echo "Module $(MODULE) upgraded!"
