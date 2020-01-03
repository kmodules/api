




sed -i s/\/\/\ \+genclient/\/\/\ \+genclient\/\/+kubebuilder:storageversion/g


find docs/reference/ -name "*.md" -exec sed -i 's/^Appears\ on:.*$/\\n&\\n/g' {} \;

tamal@beast:~/go/src/k8s.io/api$ sed -i 's/+genclient/+genclient+kubebuilder:storageversion/g' storage/v1/types.go 
tamal@beast:~/go/src/k8s.io/api$ git gui


sed -i 's/^//\ +genclient$/\\n&\\n/g'

tamal@beast:~/go/src/k8s.io/api$ sed -i 's/^\/\/\ +genclient$/\\n&\\n\/\/\ +kubebuilder:storageversion\\n/g' storage/v1beta1/types.go 


find storage/v1 -name "*.go" -exec sed -i 's/^\/\/\ +genclient$/\\n&\\n\/\/\ +kubebuilder:storageversion\\n/g' {} \;


find storage/v1 -name "*.go" -exec sed -i 's/^\/\/\ +genclient$/\\n&\n\/\/\ +kubebuilder:storageversion\n/g' {} \;

# 1. Add +groupname
# 2. Add +kubebuilder:storageversion which has more than one version
# 3. remove metdata.description key



find admission/v1 -name "*.go" -exec sed -i 's/^\/\/\ +genclient$/&\n\/\/\ +kubebuilder:storageversion/g' {} \;
find admissionregistration/v1 -name "*.go" -exec sed -i 's/^\/\/\ +genclient$/&\n\/\/\ +kubebuilder:storageversion/g' {} \;
find apps/v1 -name "*.go" -exec sed -i 's/^\/\/\ +genclient$/&\n\/\/\ +kubebuilder:storageversion/g' {} \;
find auditregistration/v1alpha1 -name "*.go" -exec sed -i 's/^\/\/\ +genclient$/&\n\/\/\ +kubebuilder:storageversion/g' {} \;
find authentication/v1 -name "*.go" -exec sed -i 's/^\/\/\ +genclient$/&\n\/\/\ +kubebuilder:storageversion/g' {} \;
find authorization/v1 -name "*.go" -exec sed -i 's/^\/\/\ +genclient$/&\n\/\/\ +kubebuilder:storageversion/g' {} \;
find autoscaling/v2beta2 -name "*.go" -exec sed -i 's/^\/\/\ +genclient$/&\n\/\/\ +kubebuilder:storageversion/g' {} \;
find batch/v1 -name "*.go" -exec sed -i 's/^\/\/\ +genclient$/&\n\/\/\ +kubebuilder:storageversion/g' {} \;
find certificates/v1beta1 -name "*.go" -exec sed -i 's/^\/\/\ +genclient$/&\n\/\/\ +kubebuilder:storageversion/g' {} \;
find coordination/v1beta1 -name "*.go" -exec sed -i 's/^\/\/\ +genclient$/&\n\/\/\ +kubebuilder:storageversion/g' {} \;
find core/v1 -name "*.go" -exec sed -i 's/^\/\/\ +genclient$/&\n\/\/\ +kubebuilder:storageversion/g' {} \;
find discovery/v1alpha1 -name "*.go" -exec sed -i 's/^\/\/\ +genclient$/&\n\/\/\ +kubebuilder:storageversion/g' {} \;
find events/v1beta1 -name "*.go" -exec sed -i 's/^\/\/\ +genclient$/&\n\/\/\ +kubebuilder:storageversion/g' {} \;
find extensions/v1beta1 -name "*.go" -exec sed -i 's/^\/\/\ +genclient$/&\n\/\/\ +kubebuilder:storageversion/g' {} \;
find imagepolicy/v1alpha1 -name "*.go" -exec sed -i 's/^\/\/\ +genclient$/&\n\/\/\ +kubebuilder:storageversion/g' {} \;
find networking/v1 -name "*.go" -exec sed -i 's/^\/\/\ +genclient$/&\n\/\/\ +kubebuilder:storageversion/g' {} \;
find networking/v1beta1 -name "*.go" -exec sed -i 's/^\/\/\ +genclient$/&\n\/\/\ +kubebuilder:storageversion/g' {} \;
find node/v1beta1 -name "*.go" -exec sed -i 's/^\/\/\ +genclient$/&\n\/\/\ +kubebuilder:storageversion/g' {} \;
find policy/v1beta1 -name "*.go" -exec sed -i 's/^\/\/\ +genclient$/&\n\/\/\ +kubebuilder:storageversion/g' {} \;
find rbac/v1 -name "*.go" -exec sed -i 's/^\/\/\ +genclient$/&\n\/\/\ +kubebuilder:storageversion/g' {} \;
find scheduling/v1 -name "*.go" -exec sed -i 's/^\/\/\ +genclient$/&\n\/\/\ +kubebuilder:storageversion/g' {} \;
find settings/v1alpha1 -name "*.go" -exec sed -i 's/^\/\/\ +genclient$/&\n\/\/\ +kubebuilder:storageversion/g' {} \;
find storage/v1 -name "*.go" -exec sed -i 's/^\/\/\ +genclient$/&\n\/\/\ +kubebuilder:storageversion/g' {} \;



make gen

rm -rf crds/core_podtemplates.yaml
rm -rf crds/batch_jobtemplates.yaml

find crds -name "*.yaml" -exec sed -i 's/group:\ core/group:/g' {} \;



find apps/v1 -name "*.go" -exec sed -i 's/^\/\/\ +genclient$/&\n\/\/\ +kubebuilder:storageversion/g' {} \;

admission/v1
admissionregistration/v1
apps/v1
auditregistration/v1alpha1
authentication/v1
authorization/v1
autoscaling/v2beta2
batch/v1
certificates/v1beta1
coordination/v1beta1
core/v1
discovery/v1alpha1
events/v1beta1
extensions/v1beta1
imagepolicy/v1alpha1
networking/v1
networking/v1beta1
node/v1beta1
policy/v1beta1
rbac/v1
scheduling/v1
settings/v1alpha1
storage/v1