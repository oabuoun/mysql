# MySQL and PhpMyAdmin Containers

- To access mysql container from the host
```
docker exec -it mysql_dbms mysql --user=root --password
```

- To check if SSL is enabled (SQL Command)
  ```sql
  show variables like '%ssl%' ;
  ```

- To check if SSL is used in the current connection (SQL Command)
  ```sql
  status ;
  // or
  \s
  ```
  Note: it will always give "SSL Not in use" when you connect directly using MySQL command on Linux

- To check the configuration of pma
  ```bash
  docker exec -it pma apachectl -S
  ```