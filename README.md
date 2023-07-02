# Настройка репликации базы данных Postgres в Docker

1. Запустить контейнеры

```
docker compose up -d
```
2. Скопировать конфиг pg_hba.conf в Master контейнер

```
docker cp pg_hba_master.conf postgres-master:/var/lib/postgresql/data/pg_hba.conf
```
Или добавить в pg_hba.conf строку

```
host    replication    all    0.0.0.0/0    md5
```

3. Перезапустить контейнеры

```
docker compose down && docker compose up -d
```

4. Зайти в контейнер postgres-slave

```
docker compose exec postgres-slave /bin/bash
```
Перейти в папку /var/lib/postgres и запустить команду копирования Master базы

```
pg_basebackup -P -R -X stream -c fast -h postgres-master -U postgres -D ./main
```

Подменить директорию data на main

```
mv -bfv main/* data/
```

5. Перезапустить Slave контейнер

```
docker compose down && docker compose up -d
```
