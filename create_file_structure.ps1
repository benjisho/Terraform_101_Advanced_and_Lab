# Define the directories to be created
$directories = @(
    ".",
    ".\prod",
    ".\stage",
    ".\modules",
    ".\modules\vultr",
    ".\modules\aws",
    ".\modules\gcp"
)

# Define the files to be created in each directory
$files = @(
    ".\main.tf",
    ".\variables.tf",
    ".\outputs.tf",
    ".\README.md",
    ".\prod\main.tf",
    ".\prod\variables.tf",
    ".\prod\outputs.tf",
    ".\prod\terraform.tfstate",
    ".\prod\terraform.tfstate.backup",
    ".\prod\terraform.tfvars",
    ".\stage\main.tf",
    ".\stage\variables.tf",
    ".\stage\outputs.tf",
    ".\stage\terraform.tfstate",
    ".\stage\terraform.tfstate.backup",
    ".\stage\terraform.tfvars",
    ".\modules\vultr\main.tf",
    ".\modules\vultr\variables.tf",
    ".\modules\vultr\outputs.tf",
    ".\modules\aws\main.tf",
    ".\modules\aws\variables.tf",
    ".\modules\aws\outputs.tf",
    ".\modules\gcp\main.tf",
    ".\modules\gcp\variables.tf",
    ".\modules\gcp\outputs.tf"
)

# Create the directories
foreach ($directory in $directories) {
    if (!(Test-Path -Path $directory)) {
        New-Item -ItemType Directory -Path $directory
    }
}

# Create the files
foreach ($file in $files) {
    if (!(Test-Path -Path $file)) {
        New-Item -ItemType File -Path $file
    }
}