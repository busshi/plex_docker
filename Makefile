CMD		= docker-compose

all:
		@$(CMD) up -d

build:
		@$(CMD) up --build

start:
		@$(CMD) start

stop:
		@$(CMD) stop

status:
		@$(CMD) ps

restart:	stop start

log:
		@$(CMD) logs --tail=100 -f

clean:
		@$(CMD) down

re:		stop all

.PHONY: all start stop status restart log clean re
