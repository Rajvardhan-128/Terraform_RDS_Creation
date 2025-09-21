🔹 Things to Create in VPC (Prerequisites for RDS)
1️⃣ VPC

CIDR Block: 10.0.0.0/16 (example, can be bigger for multiple subnets)

Tag:

Name = "tcw_vpc"

2️⃣ Subnets (for RDS)

RDS requires a DB Subnet Group, so you need at least 2 subnets in different AZs.

Subnet 1

CIDR: 10.0.1.0/24

Availability Zone: ap-south-1a

Tag:

Name = "tcw_database1"


Subnet 2

CIDR: 10.0.2.0/24

Availability Zone: ap-south-1b

Tag:

Name = "tcw_database2"


(you can add more if needed, but 2 is the minimum)

3️⃣ Security Group (for RDS)

Inbound rules:

Allow DB port (depends on engine):

MySQL: 3306

PostgreSQL: 5432

Source: Either your application servers’ SG, or for testing, 0.0.0.0/0 (not recommended in production).

Outbound rules:

Allow all traffic (0.0.0.0/0).

Tag:

Name = "tcw_security_group"

4️⃣ (Optional but Recommended) Internet Gateway + Route Table

If your DB needs internet updates (patching) or connection from outside, you’ll also need:

Internet Gateway attached to the VPC.

Route Table with 0.0.0.0/0 → IGW.

Subnets associated accordingly.

(But for private DB, you can skip IGW and instead use NAT Gateway if needed.)