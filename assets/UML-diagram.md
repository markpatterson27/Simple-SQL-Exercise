```plantuml
@startuml
entity customers {
    * customerId <<PK>>
    --
    * cust_name
    * cust_address
}
@enduml
```