class Hasta_Covid_19
    attr_reader :tc,:had,:hsoyad,:hcins,:hyas,:hsemp,:hkrnk,:hil,:htemas
   
    
    def initialize(tc, had, hsoyad, hcins, hyas, hsemp, hkrnk, hil, htemas)
     @tc, @had, @hsoyad, @hcins,@hyas,@hsemp, @hkrnk, @hil, @htemas = tc, had, hsoyad, hcins, hyas, hsemp, hkrnk, hil, htemas
    
    end
    def Hasta_Covid_19.hastalar()
    
    print "Komut Giriniz: "
    a = gets.chomp.to_s
    b = 0
    toptemas = 0
    cor = []

     while  a !="CIKIS"
      if(a == "EKLE" ) then
         
         print "Hastanın TC numarasını giriniz :" 
         tc = gets.chomp.to_i
         print "Hastanın adını giriniz :"
         had = gets.chomp.to_s
         print "Hastanın soy adını giriniz :"
         hsoyad = gets.chomp.to_s
         print "Hastanın cinsiyetini giriniz (Erkek/Kadın) :"
         hcins = gets.chomp.to_s
         print "Hastanın yaşını giriniz :"
         hyas = gets.chomp.to_i
         print "Hastanın varsa semptomlarını belirtiniz yoksa 0 bilgisi giriniz :"
         hsemp = gets.chomp
         print "Hastanın kronik rahatsızlığı varsa belirtiniz yoksa 0 bilgisi giriniz :"
         hkrnk = gets.chomp
         print "Hastanın bulunduğu ili giriniz :"
         hil = gets.chomp.to_s
         print "Hastanın temasta bulunduğu tahmini kişi sayısını belirtiniz yoksa 0 bilgisi giriniz :"
         htemas = gets.chomp.to_i 
         
         toptemas +=htemas

         enfekte = Hasta_Covid_19.new(tc, had, hsoyad, hcins, hyas, hsemp, hkrnk, hil, htemas)
         cor.push(enfekte)
         b += 1
        
      elsif(a == "LISTELE" ) then
         puts "Toplam hasta sayısı : #{b}"
        for enfekte in cor do
         puts enfekte.tc 
         puts enfekte.had 
         puts enfekte.hsoyad
         puts enfekte.hcins
         puts enfekte.hyas
         puts enfekte.hsemp
         puts enfekte.hkrnk
         puts enfekte.hil
       end
         puts "Toplam enfekte olması muhtemel kişi sayıs : #{toptemas}"
         puts "-----------------"
   
      else 
         puts "Hatalı bir komut girdiniz"
      end
         print "Komut Giriniz: "
         a = gets.chomp.to_s
    end 
   end  
end
    

   
    
def main
    puts "Sağlık Bakanlığı Covid-19 Bilgi Sistemine Hoş Geldiniz"
    
    Hasta_Covid_19.hastalar()
   
    puts "Sağlıklı Günler Dileriz"
    
end
main