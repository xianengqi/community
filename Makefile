depoly:
	@git pull
	@yarn
	@yarn run build
	@NODE_ENV=production PORT=80 pm2 start dist/server.js --name "community"

update:
	@git pull
	@yarn
	@npm run build
	@pm2 stop community
	@pm2 start community

stop:
	@pm2 stop community
delete:
	@pm2 delete community