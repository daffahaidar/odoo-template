# Odoo 18 Template

Boilerplate untuk Odoo 18 development

## Cara Menggunakan

1. **Clone repository ini** untuk memulai project baru:

   ```bash
   git clone https://github.com/daffahaidar/odoo-template.git nama-project
   cd nama-project
   ```

2. **Jalankan dengan Podman Compose**:

   ```bash
   podman-compose up -d
   ```

   _(Atau `podman compose up -d` tergantung versi podman-compose yang kamu install)_

3. Buka browser: `http://localhost:8069`
   - **Master Password**: `odoo_18` (dikonfigurasi di `config/odoo.conf`)

## Struktur Folder

- `config/`: Konfigurasi `odoo.conf`
- `custom/`: Tempat meletakkan module/addon custom buatan sendiri.
- `enterprise/`: Tempat meletakkan module enterprise (jika ada).
- `filestore/`: (Optional) Tempat penyimpanan filestore Odoo.
- `log/`: Log output dari Odoo.

## Gitignore

Folder data seperti `filestore/`, `log/`, dan modul `enterprise/` sudah otomatis di-ignore. Pastikan tidak men-commit data sensitif atau berukuran besar ke repo.
