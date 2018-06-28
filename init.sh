events {
    worker_connections  1024;
}

http {
    server {
        location / {
			error_page  404;
        }	

		location ?^~ /uploads/ ?{?
    ?		root /home/box/web/;
		}
		
		location = /img/1.jpeg
		{
			root /home/box/web/public
		}
}
