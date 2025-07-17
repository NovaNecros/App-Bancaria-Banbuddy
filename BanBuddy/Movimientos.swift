import SwiftUI

struct Movimientos : View
{
    @Environment(\.dismiss) private var dismiss
    
    var body : some View
    {
        NavigationStack()
        {
        
            VStack(alignment: .center, spacing: 0)
            {
                Text("\(String(localized: "transaction").capitalized)s")
                    .font(.system(
                        size: 30,
                        weight: .heavy,
                        design: .rounded
                    ))
                    .padding(.top)
                
                Spacer()
                
                Image("transaction2")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 250)
                    .padding()
                
                List()
                {
                    ForEach(0..<12)
                    { i in
                        HStack(alignment: .center, spacing: 0)
                        {
                            Text("\(String(localized: "transaction").capitalized) \(i+1)")
                                .font(.system(size: 20))
                                .multilineTextAlignment(.leading)
                            
                            Spacer()
                            
                            Text("$\(String(format: "%.2f", Double.random(in: 0...1000)))")
                                .font(.system(size: 20))
                                .multilineTextAlignment(.trailing)
                        }
                    }
                }
                .listStyle(DefaultListStyle())
                
                Spacer()
                
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
                .padding(.bottom)
            }
            .navigationBarBackButtonHidden(true)
            .padding()
        }
    }
}

#Preview
{
    Movimientos()
}
