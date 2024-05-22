import SwiftUI


struct AnimalModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}

class AnimalViewModel: ObservableObject{
    
   @Published var AnimalArray: [AnimalModel] = []
    func getAnimals(){
        let animal1 = AnimalModel(name: "Bunny", count: 1)
        let animal2 = AnimalModel(name: "Dog", count: 2)
        let animal3 = AnimalModel(name: "Cat", count: 3)
        
        AnimalArray.append(animal1)
        AnimalArray.append(animal2)
        AnimalArray.append(animal3)
        
    }
    
    func deleteAnimal(index: IndexSet){
        AnimalArray.remove(atOffsets: index)
        
    }
}

struct ContentView: View {
    
    @ObservedObject var animalViewModel: AnimalViewModel = AnimalViewModel() 
    
    var body: some View{
        NavigationView{
            List{
                ForEach(animalViewModel.AnimalArray) { animal in
                    HStack{
                        Text("\(animal.count)")
                            .foregroundColor(.red)
                        Text(animal.name)
                            .font(.headline)
                            .bold()
                    }
                }
                .onDelete(perform : animalViewModel.deleteAnimal)
                        
                     
                
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("Animal List")
            .onAppear{
                animalViewModel.getAnimals()                
            }
        }
    }
    
}

