use tonic::{transport::Server, Request, Response, Status};
use tower_http::trace::TraceLayer;

use flowing::api::flowing_server::{Flowing, FlowingServer};
use flowing::api::{GetTreeRequest, GetTreeResponse, TreeNode};

#[derive(Debug, Default)]
pub struct ApiServer {}

#[tonic::async_trait]
impl Flowing for ApiServer {
    async fn get_tree(
        &self,
        request: Request<GetTreeRequest>,
    ) -> Result<Response<GetTreeResponse>, Status> {
        Ok(Response::new(GetTreeResponse {
            root: Some(TreeNode {
                id: String::from(request.get_ref().root()),
            }),
        }))
    }
}

#[tokio::main]
async fn main() -> Result<(), Box<dyn std::error::Error>> {
    let address = "127.0.0.1:8113".parse().expect("avaliable address");
    let flowing = ApiServer::default();

    tracing_subscriber::fmt::init();

    Server::builder()
        .layer(TraceLayer::new_for_grpc())
        .add_service(FlowingServer::new(flowing))
        .serve(address)
        .await?;

    Ok(())
}
