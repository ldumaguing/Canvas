// **************************************** MySQL Print HTML
use mysql::*;
use mysql::prelude::*;

#[derive(Debug, PartialEq, Eq)]
struct Chit {
    id: i32,
    name: Option<String>,
    front: Option<String>,
    back: Option<String>,
    rem: Option<String>,
}

fn main() -> std::result::Result<(), Box<dyn std::error::Error>> {
    let url = "mysql://ayeka:sasamichan@10.60.28.124:3306/Ukraine_43";
    let pool = Pool::new(url)?;

    let mut conn = pool.get_conn()?;

    let selected = conn
        .query_map(
            "SELECT id, name, front, back, rem from ChitStatus",
            |(id, name, front, back, rem)| {
                Chit { id, name, front, back, rem }
            },
    )?;
/*
    println!("{}", selected[0].id);
    println!("{:?}", selected[0].name.as_ref().unwrap());
    println!("{:?}", selected[0].front.as_ref().unwrap());
    
    println!("***********************");
    
    
    println!("{} {:?} ff{:?}",
        selected[2].name.as_ref().unwrap().to_string(),
        selected[2].front.as_ref().unwrap(),
        match selected[2].back.as_ref() {
		    None => "",
		    Some(x) => x,
	    }
    );
*/

    for chit in selected {
		println!("<tr>");
        println!("<td>{}</td>", chit.name.as_ref().unwrap().to_string());
        println!("<td><img src=\"/opt/Vassal/Ukraine 43/{}\" ></td>", chit.front.as_ref().unwrap().to_string());
        match chit.back.as_ref() {
            None => println!("<td></td>"),
            Some(x) => println!("<td><img src=\"/opt/Vassal/Ukraine 43/{}\" ></td>", x.to_string()),
        }
        match chit.rem.as_ref() {
            None => println!("<td></td>"),
            Some(x) => println!("<td><img src=\"/opt/Vassal/Ukraine 43/{}\" ></td>", x.to_string()),
        }      
        
        println!("</tr>");
        println!();
	}
    
    // println!("{:?}", selected[0].back.as_ref().unwrap());
    // println!("{:?}", selected[0].rem.as_ref().unwrap());
    
    Ok (())
}


