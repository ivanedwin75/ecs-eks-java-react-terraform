#!/bin/sh
set -e
IFS='|'

# Project parameters
export SRC_PROJECT
export FRAMEWORK

# AWS auth parameters 
export USER_POOL_ID
export WEB_CLIENT_ID
export NATIVE_CLIENTE_ID
export PROFILE
export REGION

# Amplify parameters
export PROJECTNAME
export APP_ID
export ENV


# Automate pulls an existing amplify
echo "Configuring amplify: Pull configuration"

AUTHCONFIG="{\
\"userPoolId\": \"$USER_POOL_ID\",\
\"webClientId\": \"$WEB_CLIENT_ID\",\
\"nativeClientId\": \"$NATIVE_CLIENTE_ID\",\
}"

FRONTCONFIG="{\
\"SourceDir\":\"$SRC_PROJECT\"
}"

CATEGORIES="{\
\"auth\":$AUTHCONFIG\
}"

FRONTEND="{\
\"frontend\":\"typescript\",\
\"framework\":\"$FRAMEWORK\",\
\"config\":$FRONTCONFIG\
}"

AWSCLOUDFORMATIONCONFIG="{\
\"configLevel\":\"project\",\
\"useProfile\":true,\
\"profileName\":\"$PROFILE\",\
\"region\":\"$REGION\"\
}"

AMPLIFY="{\
\"projectName\":\"$PROJECTNAME\",\
\"appId\":\"$APP_ID\",\
\"envName\":\"$ENV\",\
\"defaultEditor\":\"code\"\
}"

PROVIDERS="{\
\"awscloudformation\":$AWSCLOUDFORMATIONCONFIG\
}"

amplify pull \
--amplify $AMPLIFY \
--providers $PROVIDERS \
--categories $CATEGORIES \
--frontend $FRONTEND \
--yes


echo "Fixing aws-export extension"

mv -f $SRC_PROJECT/aws-exports.js $SRC_PROJECT/aws-exports.ts

echo "Replace values callbacks URL's"

# Regular expresion to replace callbacks urls in aws-exports file 
# Search for patterns where there are two or more urls separated by commas
# Callbacks urls must be two or more, otherwise it will not work. 
PATTERN='"((http:\/\/|https:\/\/)[_[:alnum:]\/.:]+,?){2,}"'

# New value for callbacks urls 
# this value searches the current route
VALUE='window.location.origin + "\/login"'                
sed -E -i "s/$PATTERN/$VALUE/g" $SRC_PROJECT/aws-exports.ts
