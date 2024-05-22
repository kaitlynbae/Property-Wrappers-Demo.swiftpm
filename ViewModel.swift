//import SwiftUI
//
//
//struct AnimalModel: Identifiable {
//    let id: String = UUID().uuidString
//    let name: String
//    let count: Int
//}
//    
//struct ViewModel: View{
//    
//    @State var AnimalArray: [AnimalModel] = []
//    
//    var body: some View{
//        NavigationView{
//            List{
//                ForEach(AnimalArray) { animal in
//                    HStack{
//                        Text("\(animal.count)")
//                            .foregroundColor(.red)
//                        Text(animal.name)
//                            .font(.headline)
//                            .bold()
//                    }
//                    
//                }
//                .listStyle(GroupedListStyle())
//                .navigationTitle("Animal List")
//                .onAppear{
//                    getAnimals()
//                }
//            }
//        }
//    }
//  func getAnimals(){
//      let animal1 = AnimalModel(name: "Bunny", count: 1)
//      let animal2 = AnimalModel(name: "Dog", count: 2)
//      let animal3 = AnimalModel(name: "Cat", count: 3)
//      
//      AnimalArray.append(animal1)
//      AnimalArray.append(animal2)
//      AnimalArray.append(animal3)
//  }
//}
