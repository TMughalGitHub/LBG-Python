stage('Build image') {
  app = docker.build("lbg-cohort-10/globbers")
}
stage('publish gcloud') {
    sh "gcloud docker -- push us.gcr.io/lbg-cohort-10/globbers]"
}
}
