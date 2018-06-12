{
  global: {
    // User-defined global parameters; accessible to all component and environments, Ex:
    // replicas: 4,
  },
  components: {
    // Component-level parameters, defined initially from 'ks prototype use ...'
    // Each object below should correspond to a component in the components/ directory
    "django-reference-app": {
      containerPort: 80,
      image: "926803513772.dkr.ecr.eu-west-1.amazonaws.com/cloud-platform-reference-app:django",
      name: "django-reference-app",
      replicas: 1,
      servicePort: 80,
      type: "ClusterIP",
    },
  },
}
