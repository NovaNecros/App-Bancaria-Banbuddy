import SwiftUI

struct NuevoCliente : View
{
    @State private var displayMode : String = "Dark"
    @State private var tipoCliente : String = "Dark"
    
    let tiposDisplay : [String] = ["Dark", "Light", "Auto"]
    
    var body : some View
    {
        NavigationStack()
        {
            VStack(alignment: .center, spacing: 0)
            {
                Text("Nueva Cuenta")
                    .font(.system(
                        size: 30,
                        weight: .heavy,
                        design: .rounded
                    ))
                
                Image("add-user")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300)
                    .padding(.top, 60)
                
                Spacer()
                
                VStack(alignment: .leading, spacing: 0)
                {
                    Form()
                    {
                        Section()
                        {
                            Picker(
                                "Display",
                                selection: $tipoCliente)
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
                    .padding(.bottom, 25)
                    
                    Spacer()
                }
                .padding(40)
                
                Spacer()
                
                NavigationLink(destination: Clientes())
                {
                    Botones("Generar")
                }
            }
            .navigationBarBackButtonHidden(true)
            .padding()
        }
    }
}

#Preview
{
    NuevoCliente()
}
