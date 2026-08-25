# 🛡️ HomeHackMe

Entorno de laboratorio local para aprendizaje y entrenamiento en ciberseguridad ofensiva y defensiva. Integra una plataforma central de desafíos (**CTFd**) con aplicaciones deliberadamente vulnerables (**DVWA** y **OWASP Juice Shop**), desplegado mediante contenedores Docker aislados.

---

## 🚀 Despliegue Rápido

El proyecto incluye un script interactivo en Bash que genera automáticamente el archivo `.env` con credenciales seguras y levanta la infraestructura sin configuraciones manuales.

```bash
# 1. Clonar el repositorio
git clone [https://github.com/tu-usuario/homehackme.git](https://github.com/tu-usuario/homehackme.git)
cd homehackme

# 2. Dar permisos de ejecución y lanzar el instalador
chmod +x setup.sh
./setup.sh