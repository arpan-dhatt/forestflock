use std::{io::Write, net::TcpStream};

fn main() {
    let mut socket = TcpStream::connect("127.0.0.1:9090").unwrap();
    loop {
        let mut input = String::new();
        std::io::stdin().read_line(&mut input).unwrap();

        input.pop();

        let size = input.len() as u32;
        socket.write(&size.to_be_bytes()).unwrap();
        socket.write(input.as_bytes()).unwrap();
    }
}
