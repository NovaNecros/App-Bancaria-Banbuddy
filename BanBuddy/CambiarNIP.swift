import SwiftUI

struct CambiarNIP : View
{
    @Environment(\.dismiss) private var dismiss
    
    @State private var actual : String = ""
    @State private var nuevo : String = ""
    @State private var nuevo2 : String = ""
    @State private var nuevoMatch : Bool = false
    
    init()
    {
        nuevoMatch = (nuevo == nuevo2 && !nuevo.isEmpty)
    }
    
    var body : some View
    {
        NavigationStack()
        {
            VStack(alignment: .center, spacing: 0)
            {
                Text("Cambiar NIP")
                    .font(.system(
                        size: 30,
                        weight: .heavy,
                        design: .rounded
                    ))
                
                Image("refresh")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200)
                    .padding(.top, 60)
                
                Spacer()
                
                VStack(alignment: .leading, spacing: 20)
                {
                    HStack(alignment: .center, spacing: 30)
                    {
                        Text("NIP Actual:")
                            .font(.system(size: 20))
                            .multilineTextAlignment(.center)
                        
                        SecureField("Actual", text: $actual)
                            .font(.system(size: 24))
                            .autocorrectionDisabled(true)
                            .multilineTextAlignment(.center)
                            .keyboardType(.numberPad)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .onChange(of: actual,
                            {
                                actual = String(actual.prefix(4))
                            })
                    }
                    
                    HStack(alignment: .center, spacing: 30)
                    {
                        Text("NIP Nuevo:")
                            .font(.system(size: 20))
                            .multilineTextAlignment(.center)
                        
                        SecureField("Nuevo", text: $nuevo)
                            .font(.system(size: 24))
                            .autocorrectionDisabled(true)
                            .multilineTextAlignment(.center)
                            .keyboardType(.numberPad)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .onChange(of: nuevo,
                            {
                                nuevo = String(nuevo.prefix(4))
                            })
                    }
                    
                    HStack(alignment: .center, spacing: 30)
                    {
                        Text("Confirmar NIP Nuevo:")
                            .font(.system(size: 20))
                            .multilineTextAlignment(.center)
                        
                        SecureField("Nuevo", text: $nuevo2)
                            .font(.system(size: 24))
                            .autocorrectionDisabled(true)
                            .multilineTextAlignment(.center)
                            .keyboardType(.numberPad)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .onChange(of: nuevo2,
                            {
                                nuevo2 = String(nuevo2.prefix(4))
                            })
                    }
                }
                .padding(.horizontal, 60)
                
                Spacer()
                
                NavigationLink(destination: MenuPrincipal())
                {
                    Botones("Confirmar")
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
                    Botones("Canclear")
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
    CambiarNIP()
}
