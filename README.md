## Terraform Associate Certification Prep

Following [Terraform Hands on Lab Course](https://www.udemy.com/course/terraform-hands-on-labs) and [Repo](https://github.com/btkrausen/hashicorp)

| No  | Lab's Pull Requests | Documention |
| --- | ---------------- | ----------- |
| 1 | Theoretical Knowledge | Adding latter |
| 2 | [What is Infrastructure As Code (IaC) concepts](https://github.com/ilyesedina/Terraform/pull/2) | Adding latter |
| 3 | [Terraform Purpose](https://github.com/ilyesedina/Terraform/pull/4) | Adding latter | 
| 4 | [Understand Terraform Basics](https://github.com/ilyesedina/Terraform/pull/6) | Adding latter |
| 5 | [Use Terraform Outside of Core Workflow](https://github.com/ilyesedina/Terraform/pull/10) | Adding latter |
| 6 | [Interact with Terraform Modules](https://github.com/ilyesedina/Terraform/pull/11) | Adding latter |
| 7 | [Use the Core Terraform Workflow](https://github.com/ilyesedina/Terraform/pull/12) | Adding latter |
| 8 | [ Implement and Maintain State](https://github.com/ilyesedina/Terraform/pull/15) | Adding latter |
| 9 | [Read, Generate, and Modify Configuration](https://github.com/ilyesedina/Terraform/pull/17) | Adding latter |
| 10 | Understand Terraform Cloud Capabilities | Adding latter |
| 11 | Additional labs | Adding latter |
| 12 | Extra tips for the Exam | Adding latter |
| 13 | Final exam practice | Adding latter |

<br>

```mermaid
graph LR
subgraph Mermaind Mapping
    subgraph HashiCorp [<img src='https://img.icons8.com/color/48/000000/terraform.png' width:15,height:15 />HashiCorp Certified: <br> Terraform Associate <br> Hands On Labs]
    style HashiCorp fill:#8B00FF,stroke:#8B00FF;
    end
    subgraph infrastructure [Understand infrastructure as code <br> **IaC** concepts]
    style infrastructure fill:#8B00FF,stroke:#8B00FF;
    end
    HashiCorp --> infrastructure
        subgraph 1a [1A Explain what IaC is]
        style 1a fill:#8B00FF,stroke:#8B00FF;
        end
        infrastructure-->1a
            subgraph lab1 [Lab: Benefits of IaC]
            style lab1 fill:#d235da,stroke:#d235da;
            end
            1b-->lab1
        subgraph 1b [1B Describe advantages of IaC patterns]
        style 1b fill:#8B00FF,stroke:#8B00FF;
        end
        infrastructure-->1b
            subgraph lab2 [Lab: What is Infrastructure as Code]
            style lab2 fill:#d235da,stroke:#d235da;
            end
            1a-->lab2
    subgraph purpose [Understand Terraform's purpose vs other IaC]
    style purpose fill:#8B00FF,stroke:#8B00FF;
    end
    infrastructure --> purpose
        subgraph 2a [2A Explain multi-cloud and  <br> provider-agnostic benefits]
        style 2a fill:#8B00FF,stroke:#8B00FF;
        end
        purpose-->2a
            subgraph lab3 [Lab: Terraform Purpose]
            style lab3 fill:#d235da,stroke:#d235da;
            end
            2a-->lab3
            subgraph lab4 [Lab: Terraform Basics]
            style lab4 fill:#d235da,stroke:#d235da;
            end
            2a-->lab4
        subgraph 2b [2B Explain the benefits of state]
        style 2b fill:#8B00FF,stroke:#8B00FF;
        end
        purpose-->2b
            subgraph lab5 [Lab: Benefits of State]
            style lab5 fill:#d235da,stroke:#d235da;
            end
            2b-->lab5
    subgraph basics [Understand Terraform basics]
    style basics fill:#8B00FF,stroke:#8B00FF;
    end
    purpose --> basics
end
```
![MAP](img\MindmapTerraform.pdf)
