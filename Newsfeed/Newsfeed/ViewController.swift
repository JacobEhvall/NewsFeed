
import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet var table : UITableView!
    
    var models = [InstagramPost]()

    override func viewDidLoad() {
        super.viewDidLoad()
        table.register(PostTableViewCell.nib(), forCellReuseIdentifier: PostTableViewCell.identifier)
        table.delegate = self
        table.dataSource = self
        
        models.append(InstagramPost(NumberOfLikes: 20000, username: "Jacob", userImageName: "head", postImageName: "post_1"))
        
        models.append(InstagramPost(NumberOfLikes: 20, username: "Hakim", userImageName: "head", postImageName: "post_1"))
        
        models.append(InstagramPost(NumberOfLikes: 20, username: "Emma", userImageName: "head", postImageName: "post_1"))
        
        
    }
    func numberOfSections( in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: PostTableViewCell.identifier, for: indexPath) as! PostTableViewCell
        cell.configure(with: models[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 10+110+view.frame.size.width
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    }

}

struct InstagramPost {
    let NumberOfLikes: Int
    let username: String
    let userImageName : String
    let postImageName : String
}

