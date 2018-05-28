## Cfhighlander test template


This components serves as testing component for CI process for [cfhighlander](https://github.com/theonestack/cfhighlander)

## Testing

```bash
cfhighlander cfcompile --validate test

...
Resolving parameter Master -> vpc7.EnvironmentType
Resolving parameter Master -> vpc7.EnvironmentName
Resolving parameter Master -> vpc7.StackOctet
Resolving parameter Master -> vpc7.NetworkPrefix
Resolving parameter Master -> vpc7.StackMask
Resolving parameter Master -> vpc7.Az0
Resolving parameter Master -> vpc7.Nat0EIPAllocationId
Resolving parameter Master -> vpc7.Az1
Resolving parameter Master -> vpc7.Nat1EIPAllocationId
Resolving parameter Master -> vpc7.Az2
Resolving parameter Master -> vpc7.Nat2EIPAllocationId
Resolving parameter Master -> vpc7.Az3
Resolving parameter Master -> vpc7.Nat3EIPAllocationId
Resolving parameter Master -> vpc7.Az4
Resolving parameter Master -> vpc7.Nat4EIPAllocationId
Resolving parameter Master -> vpc7.DnsDomain
Resolving parameter Master -> vpc7.MaxNatGateways
Resolving parameter Master -> vpc7.SingleNatGateway
Config for Master written to /src/out/config/master.config.yaml
cfndsl template for Master written to /src/out/cfndsl/master.compiled.cfndsl.rb
Rendering sub-component cfndsl: vpc0
Config for VPC written to /src/out/config/vpc0.config.yaml
cfndsl template for VPC written to /src/out/cfndsl/vpc0.compiled.cfndsl.rb
Rendering sub-component cfndsl: vpc1
Config for VPC written to /src/out/config/vpc1.config.yaml
cfndsl template for VPC written to /src/out/cfndsl/vpc1.compiled.cfndsl.rb
Rendering sub-component cfndsl: vpc3
Config for VPC written to /src/out/config/vpc3.config.yaml
cfndsl template for VPC written to /src/out/cfndsl/vpc3.compiled.cfndsl.rb
Rendering sub-component cfndsl: vpc4
Config for VPC written to /src/out/config/vpc4.config.yaml
cfndsl template for VPC written to /src/out/cfndsl/vpc4.compiled.cfndsl.rb
Rendering sub-component cfndsl: vpc5
Config for VPC written to /src/out/config/vpc5.config.yaml
cfndsl template for VPC written to /src/out/cfndsl/vpc5.compiled.cfndsl.rb
Rendering sub-component cfndsl: vpc6
Config for VPC written to /src/out/config/vpc6.config.yaml
cfndsl template for VPC written to /src/out/cfndsl/vpc6.compiled.cfndsl.rb
Rendering sub-component cfndsl: client2App
Config for application written to /src/out/config/client2App.config.yaml
cfndsl template for application written to /src/out/cfndsl/client2App.compiled.cfndsl.rb
Rendering sub-component cfndsl: client3App
Config for application written to /src/out/config/client3App.config.yaml
cfndsl template for application written to /src/out/cfndsl/client3App.compiled.cfndsl.rb
Rendering sub-component cfndsl: s3
Config for s3 written to /src/out/config/s3.config.yaml
cfndsl template for s3 written to /src/out/cfndsl/s3.compiled.cfndsl.rb
Rendering sub-component cfndsl: vpc7
Config for VPC written to /src/out/config/vpc7.config.yaml
cfndsl template for VPC written to /src/out/cfndsl/vpc7.compiled.cfndsl.rb
Config for Master written to /src/out/config/master.config.yaml
CloudFormation YAML template for Master written to /src/out/yaml/master.compiled.yaml
Config for VPC written to /src/out/config/vpc0.config.yaml
CloudFormation YAML template for VPC written to /src/out/yaml/vpc0.compiled.yaml
Config for VPC written to /src/out/config/vpc1.config.yaml
CloudFormation YAML template for VPC written to /src/out/yaml/vpc1.compiled.yaml
Config for VPC written to /src/out/config/vpc3.config.yaml
CloudFormation YAML template for VPC written to /src/out/yaml/vpc3.compiled.yaml
Config for VPC written to /src/out/config/vpc4.config.yaml
CloudFormation YAML template for VPC written to /src/out/yaml/vpc4.compiled.yaml
Config for VPC written to /src/out/config/vpc5.config.yaml
CloudFormation YAML template for VPC written to /src/out/yaml/vpc5.compiled.yaml
Config for VPC written to /src/out/config/vpc6.config.yaml
CloudFormation YAML template for VPC written to /src/out/yaml/vpc6.compiled.yaml
Config for application written to /src/out/config/client2App.config.yaml
CloudFormation YAML template for application written to /src/out/yaml/client2App.compiled.yaml
Config for application written to /src/out/config/client3App.config.yaml
CloudFormation YAML template for application written to /src/out/yaml/client3App.compiled.yaml
Config for s3 written to /src/out/config/s3.config.yaml
CloudFormation YAML template for s3 written to /src/out/yaml/s3.compiled.yaml
Config for VPC written to /src/out/config/vpc7.config.yaml
CloudFormation YAML template for VPC written to /src/out/yaml/vpc7.compiled.yaml
Validate template /src/out/yaml/master.compiled.yaml locally
SUCCESS
Validate template /src/out/yaml/vpc0.compiled.yaml locally
SUCCESS
Validate template /src/out/yaml/vpc1.compiled.yaml locally
SUCCESS
Validate template /src/out/yaml/vpc3.compiled.yaml locally
SUCCESS
Validate template /src/out/yaml/vpc4.compiled.yaml locally
SUCCESS
Validate template /src/out/yaml/vpc5.compiled.yaml locally
SUCCESS
Validate template /src/out/yaml/vpc6.compiled.yaml locally
SUCCESS
Validate template /src/out/yaml/client2App.compiled.yaml locally
SUCCESS
Validate template /src/out/yaml/client3App.compiled.yaml locally
SUCCESS
Validate template /src/out/yaml/s3.compiled.yaml locally
SUCCESS
Validate template /src/out/yaml/vpc7.compiled.yaml locally


```