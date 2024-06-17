environmentUrl="$1"
applicationId="$2"
clientSecret="$3"
tenant="$4"
environmentId="$5"
baseUrl="$6"
solFileName="pva_solution.zip"

zipUrl=${baseUrl}"Deployment/Data/pcea_solution.zip"


# Download the zip file
curl --output "$solFileName" "$zipUrl"

wget https://dot.net/v1/dotnet-install.sh -O dotnet-install.sh
chmod +x ./dotnet-install.sh
./dotnet-install.sh --version latest
./dotnet-install.sh --version latest --runtime aspnetcore
./dotnet-install.sh --channel 7.0
export DOTNET_ROOT=$HOME/.dotnet
export PATH=$PATH:$DOTNET_ROOT:$DOTNET_ROOT/tools

dotnet tool install --global Microsoft.PowerApps.CLI.Tool


pac auth create --url $environmentUrl \
                --name pceaspn --applicationId $applicationId \
                --clientSecret $clientSecret \
                --tenant $tenant \
                --environment $environmentId

pac solution import --path "pcea_solution.zip"