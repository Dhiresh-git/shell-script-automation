import datetime
from google.cloud import storage

# Set the GCS bucket name and project ID
bucket_name = "dhiresh-hudi-baba"
project_id = "adgebra-dev"

# Create a client object to interact with the Google Cloud Storage API
client = storage.Client(project=project_id)

# Get a reference to the GCS bucket
bucket = client.get_bucket(bucket_name)

# Get a list of all the objects in the bucket
blobs = bucket.list_blobs()

# Define the date cutoff for objects to be deleted (30 days ago)
cutoff_date = datetime.datetime.now() - datetime.timedelta(days=3)
print (cutoff_date)

# Loop through all the objects in the bucket
for blob in blobs:
    # Get the creation time of the object
    creation_time = blob.time_created

    # Check if the object is older than the cutoff date
    if creation_time.replace(tzinfo=None) <= cutoff_date:
        # Delete the object
        blob.delete()
print("Data deleted")

