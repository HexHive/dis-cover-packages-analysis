.PHONY=analyze_packages
analyze_packages:
	docker build -t dis-cover-analysis .
	docker run dis-cover-analysis > extracted.pickle

.PHONY=jupyter-notebook
jupyter-notebook:
	docker build -t dis-cover-notebook -f ./Dockerfile.notebook .
	docker run -p 8888:8888 -v ${PWD}:/home/jovyan/work dis-cover-notebook
