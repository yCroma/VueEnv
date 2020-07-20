# docker関連
build:
		docker-compose build

up:
		docker-compose up -d

restart:
		docker-compose restart

down:
		docekr-compose down

delete:
		docker-compose down --rmi all --volumes

# コンテナに入る
vue:
		docker-compose exec vue ash

# アプリの作成
vue-create:
		@make up
		cd commands && bash copyenv.sh
		docker-compose exec -w /usr/src/app/commands vue ash create.sh
		docker-compose exec -d vue npm run serve

vue-start:
		@make up
		docker-compose exec -d vue npm run serve

vue-init:
		@make up
		docker-compose exec -d vue npm install
		docker-compose exec -d vue npm run serve

serve:
		@make restart
		docker-compose exec vue npm run serve

serve-d:
		@make restart
		docker-compose exec -d vue npm run serve
