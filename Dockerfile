FROM    ubuntu:latest
LABEL maintainer="WilliamGuo <634206396@qq.com>"

RUN apt update && \
	apt-get -y install curl && \
	curl -sL https://deb.nodesource.com/setup_10.x | bash && \
	apt-get install -y nodejs && \
	curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
	echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
	apt-get update && \
	apt-get install yarn

      
WORKDIR /opt

CMD ["bash"]
