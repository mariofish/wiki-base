# Rails Tips

### Postgres

```shell
# run pg
pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start

# create
createdb dripcoffee
psql dripcoffee
CREATE USER dripcoffee SUPERUSER;
CREATE USER postgres SUPERUSER;

# alter role
alter role dripcoffee with LOGIN;
alter role dripcoffee with CREATEDB;
```

### Running Rails

```shell
RAILS_ENV=production rake assets:precompile

RAILS_ENV=production bin/rails db:migrate

RAILS_SERVE_STATIC_FILES=true PORT=9876 bin/rails server -e production -d
```
