FROM tangramor/slidev:latest
WORKDIR /slidev
COPY slide/ .
EXPOSE 3030
ENV NPM_MIRROR="https://registry.npmmirror.com"
CMD ["slidev", "--remote", "slides.md"]