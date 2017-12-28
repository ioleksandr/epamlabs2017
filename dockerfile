FROM ubuntu:16.04

WORKDIR /app

COPY response.varfile /app
COPY atlassian-confluence-6.2.0-x64.bin /app
RUN chmod 755 atlassian-confluence-6.2.0-x64.bin && \
    sh -c "/app/atlassian-confluence-6.2.0-x64.bin -q -varfile /app/response.varfile" 
#    /app/atlassian/confluence/bin/start-confluence.sh -fg

#EXPOSE 8000 8090 8091
ENTRYPOINT ["/app/atlassian/confluence/bin/start-confluence.sh", "-fg"]
#ENTRYPOINT ["/bin/bash"]