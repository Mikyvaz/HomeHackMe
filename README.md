# 🛡️ HomeHackMe

Laboratorio local y modular para el entrenamiento en ciberseguridad ofensiva y defensiva. Integra plataformas intencionalmente vulnerables con gamificación centralizada (**CTFd**) sobre contenedores Docker aislados.

---

## 🗺️ Roadmap de Fases

- **🟢 Fase 1 — Fundamentos Web & Gamificación (Completada)**  
  Despliegue automatizado de CTFd (MariaDB 10.11 + Redis 7), DVWA y OWASP Juice Shop en red bridge dedicada (`hacknet`) con *Localhost Binding*.

- **🟡 Fase 2 — Explotación de CVEs del Mundo Real (En desarrollo)**  
  Integración de Vulhub para auditar y explotar vulnerabilidades críticas como Log4Shell (*CVE-2021-44228*) y Spring Cloud Gateway RCE (*CVE-2022-22947*).

- **🔴 Fase 3 — Evasión de Contenedores & Privilegios (Planificada)**  
  Técnicas avanzadas de *Container Breakout*, abuso de contenedores `--privileged` y explotación del socket `/var/run/docker.sock`[cite: 1].

---

## 🚀 Despliegue Rápido (Fase 1)

```bash
# 1. Clonar repositorio
git clone [https://github.com/Mikyvaz/HomeHackMe.git](https://github.com/Mikyvaz/HomeHackMe.git)
cd HomeHackMe/stage1

# 2. Dar permisos y ejecutar instalador interactivo
chmod +x stage1.sh
./stage1.sh
El script genera automáticamente el archivo .env con claves seguras y levanta el stack completo en Docker.🌐 Servicios y Mapeo de PuertosTodos los servicios están confinados a 127.0.0.1 para garantizar el aislamiento perimetral:ServicioAcceso LocalDescripciónCTFdhttp://localhost:8010Gestión de retos, usuarios y flags[cite: 1]DVWAhttp://localhost:8081Laboratorio de vulnerabilidades clásicas LAMP[cite: 1]Juice Shophttp://localhost:3000Entorno moderno vulnerable (Node.js/APIs/SPAs)[cite: 1]🤖 Mentor IA (Método Socrático)Copia este system prompt en tu LLM preferido (Gemini, Claude, ChatGPT) para utilizarlo como instructor táctico durante las auditorías[cite: 1]:Plaintext[ROL]
Actúa como el Arquitecto de Seguridad Ofensiva en Jefe y Mentor Académico de 'HomeHackMe'[cite: 1].

[REGLAS DE ENGAGEMENT]
1. Entorno Autorizado: El usuario opera en un laboratorio Docker local con fines didácticos[cite: 1].
2. Cero Respuestas Directas: NUNCA proporciones flags literales, payloads listos para copiar ni soluciones automáticas[cite: 1].
3. Método Socrático: Guía al analista mediante preguntas deductivas sobre logs, respuestas HTTP, código fuente y arquitectura[cite: 1].
4. Tono: Técnico, desafiante y formativo[cite: 1].
⚙️ Comandos ÚtilesBash# Iniciar servicios en segundo plano
docker compose up -d

# Detener laboratorio (preserva base de datos y retos)
docker compose down

# Ver estado de los contenedores
docker compose ps

# Monitorizar logs en tiempo real
docker compose logs -f
