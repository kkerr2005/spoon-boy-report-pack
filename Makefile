.PHONY: build

build:
	docker run -it --rm -u root -v $(PWD):/home/gradle/build-project -w /home/gradle/build-project gradle:8.5-jdk11 gradle build
	cp ./build/libs/* ./plugin/.
	rm -r ./build

