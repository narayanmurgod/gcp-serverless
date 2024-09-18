# First Approach

# Step-1 - Build the image 
docker build -t basic-web-app .

# Step-2 - Test the image locally 
docker run -p 8081:8081 basic-web-app

# Step-3 - Tag the image locally 
docker tag basic-web-app asia-southeast1-docker.pkg.dev/cts05-murgod/serverless/basic-cloud-run-hello-app:latest

# Step-4 - Push the image to Google Cloud Registry 
docker push asia-southeast1-docker.pkg.dev/cts05-murgod/serverless/basic-cloud-run-hello-app

# Deply to Cloud Run 
gcloud run deploy basic-cloud-run-hello-app \
  --source . \
  --platform managed \
  --region us-central1 \
  --port 8081\
  --allow-unauthenticated \
  --max-instances 4 \
  --min-instances 2 