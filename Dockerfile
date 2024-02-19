FROM hasura/graphql-engine:latest

# Enable the console
ENV HASURA_GRAPHQL_ENABLE_CONSOLE=true

# Enable debugging mode. It should be disabled in production.
ENV HASURA_GRAPHQL_DEV_MODE=true

ENV HASURA_GRAPHQL_PG_CONNECTIONS=15

CMD graphql-engine --database-url $DATABASE_URL serve --port $PORT

