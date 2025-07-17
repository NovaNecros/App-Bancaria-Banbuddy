import SwiftUI

struct Depositos : View
{
    @Environment(\.dismiss) private var dismiss
    
    @State private var monto : Double = 0
    @State private var montoTexto : String = "$ 0.00"
    @FocusState private var montoFocused : Bool
    
    private var montosDefault : [Int] = [100, 200, 500, 1000]
    
    var body : some View
    {
        NavigationStack()
        {
            VStack(alignment: .center, spacing: 0)
            {
                Text("\(String(localized: "deposit").capitalized)")
                    .font(.system(
                        size: 30,
                        weight: .heavy,
                        design: .rounded))
                    .padding(.vertical)
                
                Spacer()
                
                Image("piggy-bank")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150)
                    .padding()

                TextField("", text: $montoTexto)
                    .focused($montoFocused)
                    .font(.system(size: 30))
                    .multilineTextAlignment(.center)
                    .keyboardType(.decimalPad)
                    .opacity(montoFocused ? 1 : 0.3)
                    .onChange(of: montoTexto)
                    {
                        if !montoTexto.isEmpty && !montoFocused
                        {
                            monto = Double(montoTexto.replacingOccurrences(of: "$ ", with: "")) ?? 0
                            montoTexto = String(format: "$ %.2f", monto)
                                
                        }
                    }
                    .onChange(of: monto)
                    {
                        montoTexto = String(format: "$ %.2f", monto)
                    }
                    .onChange(of: montoFocused)
                    {
                        if(montoFocused)
                        {
                            montoTexto = ""
                        }
                        else
                        {
                            monto = Double(montoTexto.replacingOccurrences(of: "$ ", with: "")) ?? 0
                            montoTexto = String(format: "$ %.2f", monto)
                        }
                    }
                    .padding()
                
                Slider(value: $monto, in: 0...1000, step: 50)
                    .padding(.horizontal, 60)
                    .padding(.vertical)
                
                VStack(alignment: .center, spacing: 15)
                {
                    ForEach(0..<2)
                    { i in
                        HStack(alignment: .center, spacing: 30)
                        {
                            ForEach(0..<2)
                            { j in
                                Button(action:
                                {
                                    withAnimation(.spring())
                                    {
                                        monto = Double(montosDefault[2*i+j])
                                        montoFocused = false
                                    }
                                })
                                {
                                    Botones("$ \(Int(montosDefault[2*i+j]))", width: 80, height: 30, textSize: 24)
                                }
                            }
                        }
                    }
                }
                .padding()
                
                Spacer()
                
                Button(action:
                {
                    withAnimation(.spring())
                    {
                        dismiss()
                    }
                })
                {
                    Botones("\(String(localized: "confirm").capitalized)", height: 30)
                }
                .padding(.horizontal)
                
                Button(action:
                {
                    withAnimation(.spring())
                    {
                        dismiss()
                    }
                })
                {
                    Botones("\(String(localized: "cancel").capitalized)", height: 30)
                }
                .padding()
            }
            .navigationBarBackButtonHidden(true)
            .padding()
        }
    }
}

#Preview
{
    Depositos()
}
