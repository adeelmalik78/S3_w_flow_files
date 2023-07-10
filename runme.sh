# ==== ENVIRONMENT VARIABLES ====
# Environment variables for S3 integration
export AWS_REGION=us-east-1
export AWS_ACCESS_KEY_ID="ASIA5GO6...."
export AWS_SECRET_ACCESS_KEY="r2xLpOSjb...."
export AWS_SESSION_TOKEN="IQoJb3JpZ2luX2......"

export AWS_S3_BUCKET=amalik-s3-extension-demo

# Environment variables for Liquibase
export LIQUIBASE_SEARCH_PATH=./,s3://${AWS_S3_BUCKET}
export LIQUIBASE_COMMAND_CHANGELOG_FILE=changelog.xml
# export LIQUIBASE_LOG_LEVEL=FINE

# Database-specific environment variables
export LIQUIBASE_COMMAND_URL=jdbc:oracle:thin:@cs-oracledb.liquibase.net:1521/PP_DEV
export LIQUIBASE_COMMAND_USERNAME=liquibase_user
export LIQUIBASE_COMMAND_PASSWORD=liquibase_user

# export FLOW_FILE="validate-changes-update-db.yaml"
export FLOW_FILE="flow.yaml"

export PATH=${PWD}/../liquibase-4.23.0:${PATH}

# ==== LIQUIBASE ====
# liquibase command line
# liquibase status --verbose
# liquibase update-sql
# liquibase update
# liquibase history

# liquibase command line using flow files
liquibase flow --flow-file=${FLOW_FILE}

# ./runme.sh &> output.log
# liquibase status --verbose

