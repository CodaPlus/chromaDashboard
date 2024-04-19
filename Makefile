build: 
	docker build --no-cache -t chroma_dash .   

stop:
	docker stop chroma_Dashboard

delete:
	docker rm -f chroma_Dashboard

run: 
	docker rm -f chroma_Dashboard
	docker build -t chroma_dash .   
	docker run -p 3880:3000 --hostname 0.0.0.0 --restart unless-stopped --name chroma_Dashboard -d chroma_dash