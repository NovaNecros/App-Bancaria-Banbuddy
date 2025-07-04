import SwiftUI

struct ConsultarCliente : View
{
    @Environment(\.dismiss) private var dismiss
    
    @State private var displayMode : String = "Dark"
    
    let tiposDisplay : [String] = ["Dark", "Light", "Auto"]
    
    var body : some View
    {
        NavigationStack()
        {
            VStack(alignment: .center, spacing: 0)
            {
                Text("Consultar cliente")
                    .font(.system(
                        size: 30,
                        weight: .heavy,
                        design: .rounded
                    ))
                
                Image("search")
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
                    .padding(.bottom, 10)
                    
                    Spacer()

                    
                    List()
                    {
                        HStack(alignment: .center, spacing: 0)
                        {
                            Text("Nombre")
                                .font(.system(size: 20))
                        }
                        
                        HStack(alignment: .center, spacing: 0)
                        {
                            Text("Apellidos")
                                .font(.system(size: 20))
                        }
                        
                        HStack(alignment: .center, spacing: 0)
                        {
                            Text("Tarjetas")
                                .font(.system(size: 20))
                        }
                        
                        HStack(alignment: .center, spacing: 0)
                        {
                            Text("Movimientos")
                                .font(.system(size: 20))
                        }
                    }
                }
                .padding(40)
                
                Spacer()
                
                Button(action:
                {
                    withAnimation(.spring())
                    {
                        dismiss()
                    }
                })
                {
                    Botones("Regresar")
                }
            }
            .navigationBarBackButtonHidden(true)
            .padding()
        }
    }
}

#Preview
{
    ConsultarCliente()
}
