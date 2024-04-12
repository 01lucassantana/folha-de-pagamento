Algoritmo "FOLHA DE PAGAMENTO"
// Disciplina   : [Linguagem e Lógica de Programação] 
// Professor   : Emerson


   // Título: Avaliação AC1 - Folha de Pagamento
   // Data: 09/04/2024
   // Aluno: Lucas Guilherme Sales Santana
   // RA: 241002166


Var


   // Variáveis
   
   Nome: caracter
   SalarioBase, SalarioHora, SalarioLiquido, Salario, HoraExtra, IRPF, INSS, Desconto, DescontoTotal: real
   HorasTrabalhadas, HorasExtrasTrabalhadas: inteiro

Inicio


   // Início do Algoritimo
   
   escreval( "-DIGITE SEUS DADOS-" )
   escreval()
   escreval()
   escreval( "-DADOS DO COLABORADOR-" )
   escreval()
   escreva( "Nome do colaborador: " )
   leia( Nome )
   
   escreva( "Digite o Valor do seu Salário Base: R$ " )
   leia( SalarioBase )
   
   escreva( "Digite a quantidade de Horas trabalhadas no mês: " )
   leia( HorasTrabalhadas )
   SalarioHora := SalarioBase / 160
   
   escreval()
   
   //Horas Trabalhadas
   
   se HorasTrabalhadas >= 160 entao
      SalarioLiquido := HorasTrabalhadas * SalarioHora
      HoraExtra := SalarioBase - SalarioHora * 160
      HorasExtrasTrabalhadas := HorasTrabalhadas - 160
      escreval( nome, " você trabalhou um total de: " ,HorasTrabalhadas, " horas. Sendo: ",HorasExtrasTrabalhadas, " Horas Extras: " )
   senao
      SalLiquido := HorasTrabalhadas * SalarioHora
      Desconto := SalarioBase - SalarioHora * 160
      escreval( nome, " você trabalhou um total de: " ,HorasTrabalhadas, " horas. Sendo: ",HorasExtrasTrabalhadas, " Horas Extras:" )
   fimse
   
   escreval()
   escreval( "-VENCIMENTOS-" )
   escreval( nome, " Esse é o Total dos seu Vencimentos: ",SalarioLiquido )
   escreval()
   
   escreval( "-DESCONTO-" )
   
   //INSS
   escreval( "Desconto Referente INSS" )
   se SalarioBase <= 1412 entao
      INSS := SalarioBase * 0.075
      escreval( "Será Descontado o Valor de: ",INSS, " Referente o INSS!" )
   senao
      se ( SalarioBase > 1412 ) e ( SalarioBase <= 2666.68 ) entao
         INSS := ( SalarioBase - 1412 ) * 0.09
         INSS := INSS + 105.9
         escreval( "Será Descontado o Valor de: ",INSS, " Referente o INSS!" )
      senao
         se ( SalarioBase > 2666.68 ) e ( SalarioBase <= 4000.03 ) entao
            INSS := ( SalBase - 2666.68 ) * 0.12
            INSS := INSS + 105.9 + 112.92
            escreval( "Será Descontado o Valor de: ",INSS, " Referente o INSS!" )
         senao
            se ( SalarioBase > 4000.03 ) e ( SalarioBase <= 7786.02 ) entao
               INSS := ( SalarioBase - 4000.03 ) * 0.14
               INSS := INSS + 105.9 + 112.92 + 160
               escreval( "Será Descontado o Valor de: ",INSS, " Referente o INSS!" )

            senao INSS := ( 7786.02 - 4000.03 ) * 0.14
               INSS := INSS + 105.9 + 112.92 + 160
               escreval( "Será Descontado o Valor de: ",INSS, " Referente o INSS!" )
            fimse
         fimse
      fimse
   fimse
   escreval()
   escreval( "-DESCONTO-" )
   
   //Imposto de Renda
   escreval( "Desconto Referente Imposto de renda" )
   se SalarioLiquido <= 2259.20 entao
      escreval( "Você não tem Desconto referente imposto de renda!" )
   senao
      se ( SalarioLiquido > 2259.20 ) e ( SalarioLiquido <= 2826.65 ) entao
         IRPF := SalarioLiquido * 0.750
         IRPF := IRPF - 169.44
         escreval( nome, " Desconto no Valor de: ",IRPF, " Referente ao Imposto de Renda!" )
      senao
         se ( SalarioLiquido > 2826.65 ) e ( SalarioLiquido <= 3751.05 ) entao
            IRPF := SalarioLiquido * 0.155
            IRPF := IRPF - 381.44
            escreval( nome, " Desconto no Valor de: ",IRPF, " Referente ao Imposto de Renda!" )
         senao
            se ( SalarioLiquido > 3751.05 ) e ( SalarioLiquido <= 4664 ) entao
               IRPF := SalLiquido * 0.225
               IRPF := IRPF - 662.77
               escreval( nome, " Desconto no Valor de: ",IRPF, " Referente ao Imposto de Renda!" )

            senao ( SalarioLiquido > 4664 ) entao
               IRPF := SalarioLiquido * 0.275
               IRPF := IRPF - 896
               escreval( nome, " Desconto no Valor de: ",IRPF, " Referente ao Imposto de Renda!" )
            fimse
         fimse
      fimse
   fimse


   //Descontos
   
   DescontoTotal := INSS + IRPF + Desconto
   Salario := SalarioLiquido - DescontoTotal + HoraExtra

   
   
   //Resultado
   escreval()
   escreval( "-RESULTADO-" )
   escreval()
   escreval( "Colaborador: ", Nome )
   escreval( "Sálario Base: ", SalarioBase )
   escreval( "Total de Horas Trabalhadas: ", HorasTrabalhadas )
   escreval( "Quantidade de Horas Extras Trabalhadas ", HorasExtrasTrabalhadas )
   escreval( "Valor referente horas extras: ", HoraExtra )
   escreval( "Desconto por atraso: ", Desconto )
   escreval( "Vencimentos: ", SalarioLiquido )
   escreval( "INSS Retido na fonte: ", INSS )
   escreval( "IRPF Retido na fonte: ", IRPF )
   escreval( "Desconto total: ", DescontoTotal )
   escreval( "Sálario a Receber: ", Salario )
   
   // Fim do Algoritimo
   
Fimalgoritmo
