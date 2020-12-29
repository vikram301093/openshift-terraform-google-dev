terraform {
  backend "gcs" {
    bucket    = "openshift-poc-3010"
    prefix    = "openshift-311"
    credentials = "credentials.json"
  }
}
