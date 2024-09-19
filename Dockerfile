# Use Jira Software version 9.12.13 from Atlassian Docker Hub
FROM atlassian/jira-software:9.12.13

# Set environment variables
ENV ATL_JDBC_URL=jdbc:postgresql://192.168.2.110:5432/jiradb \
    ATL_JDBC_USER=jirauser \
    ATL_JDBC_PASSWORD=Tlm@101195

# Expose Jira default port
EXPOSE 8080 

# Run Jira in foreground
CMD ["/opt/atlassian/jira/bin/start-jira.sh", "-fg"]

