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
		docker-compose exec -w /usr/src/app/commands vue ash create.sh
		docker-compose exec -d vue npm run serve

vue-start:
		@make up
		docker-compose exec -d vue npm run serve

serve:
		docker-compose exec vue npm run serve

serve-d:
		docker-compose exec -d vue npm run serve