use tonic::{Request, Response, Status};

use super::{tree_api_server::TreeApi, GetTreeRequest, GetTreeResponse, TreeNode};

#[derive(Debug, Default)]
pub struct TreeServer {}

#[tonic::async_trait]
impl TreeApi for TreeServer {
    async fn get_tree(
        &self,
        request: Request<GetTreeRequest>,
    ) -> Result<Response<GetTreeResponse>, Status> {
        let root = TreeNode {
            id: String::from(request.get_ref().root()),
            children: vec![TreeNode {
                id: String::from("child"),
                children: vec![],
            }],
        };

        Ok(Response::new(GetTreeResponse { root: Some(root) }))
    }
}
