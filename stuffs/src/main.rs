// **************************************** MySQL Print HTML
use mysql::*;
use mysql::prelude::*;

#[derive(Debug, PartialEq, Eq)]
struct Chit {
    id: i32,
    front: Option<String>,
    back: Option<String>,
    rem: Option<String>,
    name: Option<String>, 
}

fn main() -> std::result::Result<(), Box<dyn std::error::Error>> {
    let url = "mysql://ayeka:sasamichan@10.60.28.124:3306/Ukraine_43";
    let pool = Pool::new(url)?;

    let mut conn = pool.get_conn()?;

    let selected = conn
        .query_map(
            "SELECT id, front, back, rem, name from ChitStatus where isUnit = 1 order by name",
            |(id, front, back, rem, name)| {
                Chit { id, front, back, rem, name }
            },
    )?;

    for chit in selected {
		println!("<tr>");
		println!("<td>{}</td>", chit.id);

        println!("<td><img src=\"/opt/Vassal/Ukraine 43/{}\" ></td>", chit.front.as_ref().unwrap().to_string());
        match chit.back.as_ref() {
            None => println!("<td></td>"),
            Some(x) => println!("<td><img src=\"/opt/Vassal/Ukraine 43/{}\" ></td>", x.to_string()),
        }
        match chit.rem.as_ref() {
            None => println!("<td></td>"),
            Some(x) => println!("<td><img src=\"/opt/Vassal/Ukraine 43/{}\" ></td>", x.to_string()),
        }
        println!("<td>{}</td>", chit.name.as_ref().unwrap().to_string()); 
        println!("</tr>");
        println!();
	}
    
    Ok (())
}


