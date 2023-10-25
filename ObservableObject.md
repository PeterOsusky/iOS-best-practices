###Description

@ObservedObject je property wrapper v jazyku Swift a je součástí SwiftUI frameworku. Slouží k označení objektů, které mají být sledovány pro změny a tyto změny mají být automaticky propagovány do uživatelského rozhraní (UI) pro obnovení zobrazení. To znamená, že pokud se stav objektu změní, UI se automaticky aktualizuje tak, aby reflektovalo tyto změny.

Hlavní použití @ObservedObject je v SwiftUI pro sledování stavu objektů, které jsou součástí datového modelu aplikace, a pro aktualizaci zobrazení (View) v reakci na změny tohoto stavu. To je užitečné pro zachování reaktivního a interaktivního uživatelského rozhraní.

Zde je jednoduchý příklad:


@ObservedObject is a key concept in SwiftUI for managing and reacting to changes in your app's data. It allows you to create reactive user interfaces that automatically update when the underlying data changes.

Here's a brief example:

```swift
import SwiftUI

class MyViewModel: ObservableObject {
    @Published var count = 0
}

struct ContentView: View {
    @ObservedObject var viewModel = MyViewModel()
    
    var body: some View {
        VStack {
            Text("Count: \(viewModel.count)")
            Button("Increment") {
                viewModel.count += 1
            }
        }
    }
}

V tomto příkladu MyViewModel je označeno jako ObservableObject, a jeho vlastnost count je označena @Published. V ContentView je viewModel označeno jako @ObservedObject, což znamená, že se UI automaticky aktualizuje, když se změní count. Když uživatel stiskne tlačítko "Increment", zvýší se count, což vede k automatické aktualizaci zobrazeného textu.

@ObservedObject je tak klíčovým nástrojem pro vytváření interaktivních a reaktivních uživatelských rozhraní ve SwiftUI.
