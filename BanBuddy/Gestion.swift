import SwiftUI

struct Gestion : View
{
    var body : some View
    { 
        VStack(alignment: .center, spacing: 0)
        {
            Text("Gestión BBB")
                .font(.system(
                    size: 30,
                    weight: .bold,
                    design: .default))
        }
        .navigationBarBackButtonHidden(true)
    }
}
