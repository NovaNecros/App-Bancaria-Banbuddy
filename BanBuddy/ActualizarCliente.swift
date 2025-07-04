import SwiftUI

struct ActualizarCliente : View
{
    @State private var displayMode : String = "Dark"
    @State private var nombre : String = ""
    @State private var apellido : String = ""
    
    let tiposDisplay : [String] = ["Dark", "Light", "Auto"]
    
    var body : some View
    {
        NavigationStack()
        {
        
            VStack(alignment: .center, spacing: 0)
            {
                Text("Actualizar cliente")
                    .font(.system(
                        size: 30,
                        weight: .heavy,
                        design: .rounded
                    ))
                
                Image("transaction")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 180)
                    .padding(.top, 60)
                
                Spacer()
                
                VStack(alignment: .leading, spacing: 20)
                {
                    Form()
                    {
                        Section()
                        {
                            Picker(
                                "Display",
                                selection: $displayMode)
                            {
                                ForEach(tiposDisplay, id: \.self)
                                {
                                    Text($0)
                                        .font(.system(size: 22))
                                }
                            }
                            .font(.system(
                                size: 22,
                                design: .rounded
                            ))
                        }
                    }
                    .padding(.vertical, 25)
                    
                    Spacer()
                    
                    HStack(alignment: .center, spacing: 0)
                    {
                        Text("Nombre:")
                            .font(.system(size: 24))
                        
                        TextField("nombre", text: $nombre)
                            .font(.system(size: 24))
                            .autocorrectionDisabled(true)
                            .multilineTextAlignment(.trailing)
                    }
                    
                    HStack(alignment: .center, spacing: 0)
                    {
                        Text("Apellido:")
                            .font(.system(size: 24))
                        
                        TextField("apellidos", text: $apellido)
                            .font(.system(size: 24))
                            .autocorrectionDisabled(true)
                            .multilineTextAlignment(.trailing)
                    }
                }
                .padding(40)
                
                Spacer()
                
                NavigationLink(destination: Clientes())
                {
                    Botones("Actualizar")
                }
            }
            .navigationBarBackButtonHidden(true)
            .padding()
        }
    }
}

#Preview
{
    ActualizarCliente()
}
