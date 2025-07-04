import SwiftUI

struct Gestion : View
{
    var body : some View
    {
        NavigationStack()
        {
            VStack(alignment: .center, spacing: 0)
            {
                Text("Gestión BBB")
                    .font(.system(
                        size: 30,
                        weight: .heavy,
                        design: .rounded))
                
                Spacer()
                
                Image("database-management")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 320)
                    .padding(.top, 40)
                
                Spacer()
                
                NavigationLink(destination: Clientes())
                {
                    Botones("Clientes")
                }
                .padding(.vertical)
                
                NavigationLink(destination: Cuentas())
                {
                    Botones("Cuentas")
                }
                .padding(.vertical)
                
                NavigationLink(destination: Tarjetas())
                {
                    Botones("Tarjetas")
                }
                .padding(.vertical)
            }
            .navigationBarBackButtonHidden(true)
            .padding()
        }
    }
}

#Preview
{
    Gestion()
}

