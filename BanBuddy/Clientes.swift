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
                Text("\(String(localized: "menu").capitalized) \(String(localized: "clientes").capitalized)")
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
                        Text("\(String(localized: "nombre").capitalized):")
                            .font(.system(size: 24))
                        
                        TextField("\(String(localized: "nombre"))", text: $nombre)
                            .font(.system(size: 24))
                            .autocorrectionDisabled(true)
                            .multilineTextAlignment(.trailing)
                    }
                    
                    HStack(alignment: .center, spacing: 10)
                    {
                        Text("\(String(localized: "last_name").capitalized)s:")
                            .font(.system(size: 24))
                        
                        TextField("\(String(localized: "last_name"))s", text: $apellidos)
                            .font(.system(size: 24))
                            .autocorrectionDisabled(true)
                            .multilineTextAlignment(.trailing)
                    }
                }
                .padding(.horizontal, 40)
                
                Spacer()
                
                NavigationLink(destination: NuevoCliente())
                {
                    Botones("\(String(localized: "new").capitalized)")
                }
                .padding(.vertical)
                
                NavigationLink(destination: ActualizarCliente())
                {
                    Botones("\(String(localized: "update").capitalized)")
                }
                .padding(.vertical)
                
                NavigationLink(destination: ConsultarCliente())
                {
                    Botones("\(String(localized: "consult").capitalized)")
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
