import SwiftUI

struct Clientes : View
{
    @State private var nombre : String = ""
    @State private var apellidos : String = ""
    
    var body : some View
    {
        NavigationStack()
        {
        
            VStack(alignment: .center, spacing: 0)
            {
                Text("Menú Clientes")
                    .font(.system(
                        size: 30,
                        weight: .heavy,
                        design: .rounded
                    ))
                
                Spacer()
                
                Image("user")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200)
                    .padding(.bottom, 30)
                
                VStack(alignment: .leading, spacing: 20)
                {
                    HStack(alignment: .center, spacing: 10)
                    {
                        Text("Nombre:")
                            .font(.system(size: 24))
                        
                        TextField("nombre", text: $nombre)
                            .font(.system(size: 24))
                            .autocorrectionDisabled(true)
                            .multilineTextAlignment(.trailing)
                    }
                    
                    HStack(alignment: .center, spacing: 10)
                    {
                        Text("Apellidos:")
                            .font(.system(size: 24))
                        
                        TextField("apellidos", text: $apellidos)
                            .font(.system(size: 24))
                            .autocorrectionDisabled(true)
                            .multilineTextAlignment(.trailing)
                    }
                }
                .padding(.horizontal, 40)
                
                Spacer()
                
                Button(action:
                {
                    
                })
                {
                    Botones("Nuevo")
                }
                .padding(.vertical)
                
                NavigationLink(destination: ActualizarCliente())
                {
                    Botones("Actualizar")
                }
                .padding(.vertical)
                
                NavigationLink(destination: ConsultarCliente())
                {
                    Botones("Consultar")
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
    Clientes()
}
