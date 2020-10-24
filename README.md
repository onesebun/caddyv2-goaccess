# caddy v2 & goaccess

# demo

![Alt text](./goaccess_scrn.png "goaccess_scrn")

## run caddy server

``` bash
sh run.sh
```

## gen report.html

``` bash
sh gen-repo.sh
```

## goaccess dashboard

http://localhost/report.html

## crontab

``` bash
*/5 * * * * /path/to/gen-repo.sh
```
