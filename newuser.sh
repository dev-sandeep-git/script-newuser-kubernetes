
#!/bin/bash

# === CONFIGURATION PROVIDED BY ADMIN ===
API_SERVER="https://172.30.1.2:6443"
TOKEN="eyJhbGciOiJSUzI1NiIsImtpZCI6Il9zQ3RMM2JKNGZvQmtuTllyV2JEQm9ldHltaG5WbGRsa2REbjl6OFF1WncifQ.eyJhdWQiOlsiaHR0cHM6Ly9rdWJlcm5ldGVzLmRlZmF1bHQuc3ZjLmNsdXN0ZXIubG9jYWwiXSwiZXhwIjoxNzUzMDI1MjEyLCJpYXQiOjE3NTMwMjE2MTIsImlzcyI6Imh0dHBzOi8va3ViZXJuZXRlcy5kZWZhdWx0LnN2Yy5jbHVzdGVyLmxvY2FsIiwianRpIjoiNTI1NTVkMTQtYjkwMi00YzQ0LThiYTctYzFlMmEzZDdjMzhhIiwia3ViZXJuZXRlcy5pbyI6eyJuYW1lc3BhY2UiOiJkZWZhdWx0Iiwic2VydmljZWFjY291bnQiOnsibmFtZSI6ImFqYXkiLCJ1aWQiOiIzNmE5YjFmYy1mOWQzLTQ2NjUtYmM5Ni1jNGI0MjA2ZjVmMjYifX0sIm5iZiI6MTc1MzAyMTYxMiwic3ViIjoic3lzdGVtOnNlcnZpY2VhY2NvdW50OmRlZmF1bHQ6YWpheSJ9.WCDvmKiKTqGxea06am8tIpx81thTJdkJPA33kT3z7j7jbgTfjGDl8m_XkCVx8QryPka7a44CnryrfIh4HkTI1NOkm5CWPUaQ8j8R9rMirzjiG9FR7JtwvJT_e0C_ZA_XAXzuCA2IdIk2H8LvrTkykAkwN-2bqCiRM42_GjeiIYYb8VotuDq45qu8YO6y1Ab745SYL6qBL0nXQ5iwUcuoDtwza97cJGyKH62rXrXoWmsqSwK5iQ_DU1TMNJPsYNchOyrSsSQlNl7mcuSE56XnEZCLfBev4TANxsD92fJz3MYEYGZzySbrHhQ3DJFxcmDXxJ6Q1vJyRYkH-6EEHnREwQ"

# === STEP 1: Configure Cluster Info ===
kubectl config set-cluster my-cluster \
  --server="$API_SERVER" \
  --insecure-skip-tls-verify=true

# === STEP 2: Configure Ajay's Credentials ===
kubectl config set-credentials ajay --token="$TOKEN"

# === STEP 3: Create Ajay Context ===
kubectl config set-context ajay-context \
  --cluster=my-cluster \
  --user=ajay

# === STEP 4: Switch to Ajay Context ===
kubectl config use-context ajay-context

echo "Ajay context has been configured!"
kubectl config view --minify | grep name:
