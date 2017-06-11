all: build

build: 
	# make the dist dir if it doesn't exist
	mkdir -p dist
	
	# Convert pug to html
	pug ./src --out ./dist

	# Convert less to css
	lessc ./src/styles/main.less ./dist/styles/main.css

	# move static assets
	cp -r ./src/img ./dist
	cp -r ./src/js ./dist