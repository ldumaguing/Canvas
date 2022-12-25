use std::env;
use mysql::*;
use mysql::prelude::*;

#[derive(Debug, PartialEq, Eq)]
struct ValidUnit {
    name: Option<String>,
}

fn main() -> std::result::Result<(), Box<dyn std::error::Error>> {
    let args: Vec<String> = env::args().collect();
    println!("{} {}", &args[0], args.len());
    if args.len() < 3 {
        instructions();
        std::process::exit(0) }


    let url = "mysql://ayeka@localhost:3306/Nuklear_Winter_68";
    let pool = Pool::new(url)?;
    let conn = pool.get_conn()?;

/*
    if is_unit(&args[1], conn) {
        println!("yup");
    }
*/

//let fish = is_unit(&args[1], conn);
//println!("{}", fish);

match is_unit(&args[1], conn) {
    Ok(()) => println!("ok"),
    Err(..) => println!("false"),
}



    
    Ok (())
}

// *************************************************************************************************

fn is_unit (s: &str, mut conn: PooledConn) -> std::result::Result<(), Box<dyn std::error::Error>> {
    let mut stmt: String = String::from("SELECT name FROM chits WHERE pieceType = 'combat' AND id = ");
    stmt.push_str(s);
    println!(">>>>>>> {}", stmt);

    let selected = conn
        .query_map(
            stmt,
            |name| {
                ValidUnit { name }
            },
    )?;
    
    if selected.len() > 0 { Ok(()) }
    else { Err("")? }
}


// *************************************************************************************************
fn instructions () {
	println!("new_unit   chitId   location");
	println!("");
}
