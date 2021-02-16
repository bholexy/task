1. To start, run the following command
	 ``` docker-compose up -d  ```

2. Run ```curl localhost:8000```  on your command terminal, "hello I'm master!" should appear as output.

3. Run ```curl localhost:8880```  on your command terminal, "hello I'm master!" should appear as output.

4. Run ```curl localhost:8881```  on your command terminal, this should return an error

5. To pause master, run the following pause command:
	``` docker pause ubuntu-nginx-keepalived_keepalived_master_1 ```

6. Run ```curl localhost:8000```  on your command terminal, "hello I'm master!" should appear as output.

7. Run ```curl localhost:8881```  on your command terminal, "hello I'm master!" should appear as output.

8. Run ```curl localhost:8880```  on your command terminal, this should return an error

9. To unpause the master, run the following command,
 	```docker unpause ubuntu-nginx-keepalived_keepalived_master_1```
