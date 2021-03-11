//
//  ListItemView.swift
//  Culminating Assingment
//
//  Created by Mo Asche on 2021-03-11.
//

import SwiftUI

struct ListItemView: View {
    
    var title: String
    var caption: String
    
    var body: some View {
        VStack(alignment: .leading) {
            
            Text(title)
            
            Text(caption)
                .font(.caption)
            
        }
    }
}

struct ListItemView_Previews: PreviewProvider {
    static var previews: some View {
        ListItemView(title: "Some title",
                           caption: "Some caption")
    }
}
