##Terraform Associate Certification

## [Course Link](https://www.udemy.com/course/terraform-hands-on-labs)
Discounts for the [Terraform Hands on Lab Course](https://www.udemy.com/course/terraform-hands-on-labs) and other HashiCorp courses can be found at the [HashiCorp Course Content and Discounts](https://github.com/btkrausen/hashicorp)

| **Objective**  | **Description** | Hands On Labs | Terraform Documentation | Quiz |
|---|-----------|-----------------|--------------------|------|
| **1** | **Understand Infrastructure as Code (IaC) concepts**| | | [Quiz - Understand infratructure as code (IaC) concepts](https://www.udemy.com/course/terraform-hands-on-labs/learn/quiz/5392970) |


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
