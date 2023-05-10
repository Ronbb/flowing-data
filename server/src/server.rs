use tonic::transport::Server;
use tower_http::trace::TraceLayer;

use flowing::api::{tree::TreeServer, tree_api_server::TreeApiServer};

#[tokio::main]
async fn main() -> Result<(), Box<dyn std::error::Error>> {
    let address = "127.0.0.1:8113".parse().expect("avaliable address");
    let tree = TreeServer::default();

    tracing_subscriber::fmt::init();

    Server::builder()
        .layer(TraceLayer::new_for_grpc())
        .add_service(TreeApiServer::new(tree))
        .serve(address)
        .await?;

    Ok(())
}
