resource "aws_eks_node_group" "eks-node-group" {
  cluster_name    = aws_eks_cluster.eks-cluster.name 
  node_group_name = var.eksnode-group-name 
  
  node_role_arn   = var.iam-role-node 

  subnet_ids      = [data.aws_subnet.subnet.id, aws_subnet.public-subnet2.id] 

  scaling_config {
    desired_size = 2 
    max_size     = 3 
    min_size     = 1 
  }

  instance_types = ["t3a.medium"] 
  disk_size      = 20 

}