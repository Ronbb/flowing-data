fn main() -> Result<(), Box<dyn std::error::Error>> {
    tonic_build::configure()
        .compile(&["../proto/api.proto"], &["../proto"])
        .expect("generate grpc server");
    Ok(())
}
