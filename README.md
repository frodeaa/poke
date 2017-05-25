# Experiment with CloudFormation

# Create CodePipeline Stack

    aws cloudformation create-stack \
        --stack-name poke \
        --template-body file://cfn/pipeline.yml \
        --capabilities  CAPABILITY_NAMED_IAM \
        --parameters \
            "ParameterKey=ApplicationName,ParameterValue=poke" \
            "ParameterKey=GitHubUser,ParameterValue=<user>" \
            "ParameterKey=ArtifactS3Bucket,ParameterValue=<s3bucket>" \
            "ParameterKey=GitHubOAuthToken,ParameterValue=<token>" \
            "ParameterKey=GitHubRepository,ParameterValue=<repository>"
            