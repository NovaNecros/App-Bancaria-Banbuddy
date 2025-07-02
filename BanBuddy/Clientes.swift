import SwiftUI

struct Clientes : View
{
    var body : some View
    {
        NavigationStack()
        {
        
            VStack(alignment: .center, spacing: 0)
            {
                Text("Menú Clientes")
                    .font(.system(
                        size: 30,
                        weight: .bold,
                        design: .rounded
                    ))
            }
            .navigationBarBackButtonHidden(true)
            .padding()
        }
    }
}

#Preview
{
    Clientes()
}
