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
                    .padding(.top)
                
                Spacer()

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
                    .padding(.bottom, 50)
                    .padding(.top)
                
                VStack(alignment: .center, spacing: 20)
                {
                    ForEach(0..<2)
                    { i in
                        HStack(alignment: .center, spacing: 40)
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
                                    Botones("$ \(Int(montosDefault[2*i+j]))", width: 80, textSize: 24)
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
                    Botones("\(String(localized: "confirm").capitalized)")
                }
                .padding(.bottom)
                
                Button(action:
                {
                    withAnimation(.spring())
                    {
                        dismiss()
                    }
                })
                {
                    Botones("\(String(localized: "cancel").capitalized)")
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
    Depositos()
}
