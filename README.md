This is a very basic docker image to assist in  deploying   NodeJS Lambda functions to S3 . This works best with BitBucket's build system. 
For example 
<pre><code>
# Make sure to set AWS_ACCESS_KEY_ID , and AWS_SECRET_ACCESS_KEY as env variables , this can be done at a repository or pipeline level  

image:  nodetools/basiclambdas3deploy:latest

pipelines:
  default:
    - step:
        script:
          - rm -rf .git
          - yarn
          - zip -r lambdaFunc.zip .
          - aws s3 cp lambdaFunc.zip s3://YOUR BUCKET NAME 
</code></pre>