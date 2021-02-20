//
//  ListDetailView.swift
//  YourReading
//
//  Created by Yi An Chen on 2021/2/19.
//  Copyright © 2021 HappyClub. All rights reserved.
//

import SwiftUI



struct ListDetailView: View {
    var item: CategoryItem
    
    @State private var tempBooks=["マボロシの茶道具図鑑", "青くて痛くて脆い"]
    
    var body: some View {
        ZStack(alignment: .bottom) {
            List {
                Section(header: Text("")){
                    
                    //TODO: 依照category name篩出符合的book title
                    ForEach(tempBooks, id: \.self){
                        tempBooks in
                        Text(tempBooks);
                    }
                    .onDelete(perform: delete)
                }
                
                Section(header: Text("")){
                    HStack {
                        Spacer()
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                            Text("刪除這個書單")
                                .foregroundColor(Color.red)
                        }
                        Spacer()
                    }
                }
            }
            .navigationBarTitle(
                Text(item.label),
                displayMode: .inline
            )
            .navigationBarItems(trailing: EditButton())
            .listStyle(GroupedListStyle())
            
            Button(action: {}) {
                HStack(alignment: .center) {
                    Image(systemName: "plus").foregroundColor(.white)
                    Text("添加書目")
                    .foregroundColor(Color.white)
                }
                .frame(width: 126, height: 50)
                .padding(5)
            }
            .background(Color.blue)
            .cornerRadius(38.5)
            .padding()
            .shadow(color: Color.black.opacity(0.3),radius: 3,x: 3,y: 3)
        }
    }
    
    
    func delete(at offsets: IndexSet){
        tempBooks.remove(atOffsets: offsets)
    }
}

struct ListDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
          ListDetailView(item: CategoryItem.example)
        }
        
    }
}
