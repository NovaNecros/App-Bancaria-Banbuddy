import SwiftUI

struct NuevoCliente : View
{
    @Environment(\.dismiss) private var dismiss
    
    @State private var displayMode : String = "Dark"
    @State private var tipoCliente : String = "Dark"
    
    let tiposDisplay : [String] = ["Dark", "Light", "Auto"]
    
    var body : some View
    {
        NavigationStack()
        {
            VStack(alignment: .center, spacing: 0)
            {
                Text("\(String(localized: "new_fem").capitalized) \(String(localized: "account").capitalized)")
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
                                "\(String(localized: "client").capitalized)",
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
                                "\(String(localized: "display").capitalized)",
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
                .padding(.bottom, 12)
                
                Spacer()
                
                NavigationLink(destination: Clientes())
                {
                    Botones("\(String(localized: "generate").capitalized)")
                }
                .padding(.vertical)
                
                Button(action:
                {
                    withAnimation(.spring())
                    {
                        dismiss()
                    }
                })
                {
                    Botones("\(String(localized: "return").capitalized)")
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
    NuevoCliente()
}
