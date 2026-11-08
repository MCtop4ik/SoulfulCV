#import "details.typ": *

#metadata("Pretending position")
#let role = "Intern Backend Developer"

#metadata("About me")
#let about_me = [
  Студент 2 курса ИТМО и Т-Академии (Backend), стипендиат Авито и Яндекса. Занимаюсь backend разработкой: разрабатываю сервисы на Rust и работаю с PostgreSQL, Redis, ELK, Clickhouse, Prometheus, Grafana, Docker/K8s, Gitlab CI/CD. \
  На С++ пишу свои системные компоненты, например балансировщик, генератор нагрузки (для бенчмарков), KV-Storage. Регулярно участвую в хакатонах, где отвечаю за системный дизайн и бэкенд, а также за координацию команды.
]

#metadata("Contacts")
#let contacts = (
  make_contact_line(
    contacts_icons.telegram,
    link("t.me/senyazak", "senyazak"),
  ),
  make_contact_line(
    contacts_icons.maildotru,
    link("t.me/senyazak", "senyaza-itmo@mail.ru"),
  ),
  make_contact_line(
    contacts_icons.github,
    link("https://github.com/MCtop4ik", "MCtop4ik"),
  ),
  make_contact_line(
    contacts_icons.wakatime,
    link("https://hackatime.hackclub.com/@senya", "senya"),
  ),
)

#metadata("Skills")
#let skills = [
  #stack()[
    ==== Languages/Frameworks
    C++23, boost::{asio, beast}, drogon, Rust, tokio, axum

    ==== Instruments
    GTest/GMock, Valgrind, CMake, Gitlab CI/CD, Docker/k8s, PostgreSQL, Clickhouse, Redis, ELK, Prometheus, Grafana, k6s, Nginx

    ==== AI Development
    claude code, dsh, omo, openrouter, SDD, comfyui, n8n, ollama, vllm, skills, mcp, RAG, docker agents
  ]
]

#metadata("Education")
#let education = [
  ==== ИТМО, ФИТИП \
  _2 курс, 2026 г. по н.в._

  ==== Т-Академия backend \
  _2026 г. по н.в._
]

#metadata("Achievements")
#let achievements = [
  ==== Хакатон от МосТранспорта (осень 2026)
  полуфиналисты с проектом *_прогнозирование нагрузки на маршруте_*

  ==== Производственная практика Avito (лето 2026)
  лучшие среди всего потока с проектом *_loadbalancer_*

  ==== Хакатон ИТМО $times$ Яндекс Образование / Alice AI (весна 2026)
  3 место с проектом *_ACA_*

  ==== ICPC (осень 2025)
  четвертьфиналист
]

#metadata("Projects")
#let projects = [

  ==== L4 Load Balancer | Lead, Backend C++ | Практика Avito
  #lavander-tag("C++23") #lavander-tag("Asio")
  #lavander-tag("Nglog")  #lavander-tag("Gitlab CI/CD")
  #lavander-tag("Benchmarking") \
  Разработал нагрузочный testbench на C++23/Asio для сравнения алгоритмов балансировки. Возможность загрузки профилей нагрузки в YAML формате совместимым с k6s, виртуальные TCP-сессии, сбор latency.
  Реализованы метрики RPS, p50/p99, imbalance через коэффициент Джини, migration cost. Сделал деплой через Docker. Настроил CI/CD GitLab pipeline для запуска testbench. Построил бенчмарки для разных профилей нагрузки.   Управлял командой из 5 человек: распределял задачи, координировал работу и контролировал сроки.

  ==== URL Shortener | Backend Rust | PET-проект
  #lavander-tag("Rust") #lavander-tag("Axum") #lavander-tag("PostgreSQL")
  #lavander-tag("Redis")  #lavander-tag("ELK") #lavander-tag("Docker") \
  Разработал сервис сокращения ссылок с custom alias на алгоритме Snowflake и сервис редиректа по короткой ссылке. Настроил сбор логов и метрик через Filebeat и Metricbeat с передачей данных в Logstash и построил мониторинг в Kibana. Настроил health checks для пайплайна. Сделал unit/integration testing и деплой через Docker.

  ==== ACA - AI Interview Platform | Lead, Backend C++/Go | Хакатон
  #lavander-tag("C++23") #lavander-tag("Go") #lavander-tag("YandexGPT/Mistral/Poolside")
  #lavander-tag("Docker") #lavander-tag("k3s") \
  Управлял командой из трех человек. Полностью разработал концепцию и спроектировал архитектуру MVP. Реализовал Go backend и сделал интеграцию с C++ analyzer. Сделал docker/k3s деплой.
]
