//
//  Profile.swift
//  UITableViewCells handling
//
//  Created by Mykhailo Haidan on 10.09.2021.
//

import UIKit

struct Profile {
    let firstName: String
    let lastName: String
    let image: UIImage
    let bio: String
}

extension Profile {

    var dataSource: [ReusableItem] {
        return [
            NameTableViewCellModel(firstName: firstName, lastName: lastName),
            ImageTableViewCellModel(image: image),
            BioTableViewCellModel(bio: bio)
        ]
    }
}


extension Profile {

    static var example: Profile {
        return Profile(firstName: "John",
                       lastName: "Smith",
                       image: UIImage(named: "dog")!,
                       bio: """
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin luctus ex ac vestibulum finibus. Suspendisse luctus augue tellus, a dapibus nisi facilisis quis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec tempus mi et ipsum sagittis sollicitudin. In in dapibus justo, sit amet mattis purus. Cras urna sapien, imperdiet efficitur laoreet ut, mollis quis turpis. Ut dignissim justo ligula, vehicula pellentesque tortor hendrerit nec. Maecenas ac quam libero.

                        Maecenas orci augue, luctus ut suscipit ut, scelerisque non nisl. Sed massa massa, eleifend eu est vitae, aliquet ornare orci. Sed tempor, lacus in pharetra elementum, mauris turpis gravida turpis, fringilla aliquet diam enim ac nisi. Nam mauris ex, congue ut tincidunt eu, pulvinar sed diam. Sed facilisis nunc a sapien venenatis, eget pharetra lacus tempor. Ut molestie iaculis purus, et faucibus orci consequat eu. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nullam vulputate convallis erat quis faucibus. Vivamus placerat urna id dapibus tincidunt.
                        """)
    }
}
