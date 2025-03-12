
use openzeppelin_crypto::field::instance::FpBN256;
use openzeppelin_crypto::poseidon2::{
    Poseidon2, instance::bn256::BN256Params,
};
use num_bigint::BigUint;
use num_traits::Num;

type Scalar = FpBN256;

fn main() {
    let mut poseidon = Poseidon2::<BN256Params, _>::new();
    
    poseidon.absorb(&Scalar::from(0));
    poseidon.absorb(&Scalar::from(0));

    let result = poseidon.squeeze();
    let result_hex = result.to_string();
    let result_decimal = BigUint::from_str_radix(&result_hex, 16).unwrap();

    println!("Result (hex): {}", result_hex);    
    println!("Result (decimal): {}", result_decimal);
}