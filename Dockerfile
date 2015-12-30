FROM microsoft/aspnet

COPY . /app
RUN cd /app/samples/1.0.0-rc1-update1/HelloWeb && dnu restore

EXPOSE 5004

CMD ["dnx", "-p", "/app/samples/1.0.0-rc1-update1/HelloWeb/", "web"]