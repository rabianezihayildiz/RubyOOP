# encoding: UTF-8
class Hasta_Covid_19
    attr_reader :dizi, :enfekt, :hasta, :tc, :ad, :soyad, :cinsiyet, :yas, :sempt, :kronik, :il, :etraf
      def initialize(dizi,enfekt, hasta,tc,ad,soyad,cinsiyet,yas,sempt,kronik,il,etraf)
       @dizi,@enfekt, @hasta, @tc, @ad, @soyad,@cinsiyet,@yas,@sempt,@kronik,@il,@etraf = dizi, enfekt, hasta,tc, ad, soyad, cinsiyet, yas, sempt, kronik, il, etraf
      end
      def bilgiler 
          
        puts @dizi
        puts "hasta sayısı" 
        puts @hasta
        puts "enfekte sayısı"
        puts @enfekt
      end
    end
    
    
    puts "Sağlık Bakanlığı Covid19 Bilgi Sistemine Hoş Geldiniz"
    puts "lütfen bir komut giriniz -> ekle-listele-cikis komutları geçerlidir"
    
    i=0
    hasta=0
    enfekt=0
    dizi=Array.new
    for i in 0..20
     puts "Komut giriniz"
    islem = gets.chomp 
      if islem == "ekle"
        puts "Hastanın TC kimlik numarası:"
        tc=gets.to_i
        puts "Hastanın adı:"
        ad=gets.chomp
        puts "Hastanın Soyadı:"
        soyad=gets.chomp
        puts "Hastanın cinsiyeti(kadın/erkek):"
        cinsiyet=gets.chomp
        puts "Hastanın yaşı:"
        yas=gets.to_i
        puts "Hastada görülen semptomlar:"
        sempt=gets.chomp
        puts "Hastanın kronik hastalığı var mı(evet/hayır)?"
        kronik=gets.chomp
        puts "Hastanın bulunduğu il:"
        il=gets.chomp
        puts "Hastanın temasta bulunduğu insan sayısı:"
        etraf=gets.to_i
        dizi.push(tc,ad,soyad,cinsiyet,yas,sempt,kronik,il,etraf)
        hasta +=1
        enfekt+=etraf
      elsif islem=="listele"
        sinif=Hasta_Covid_19.new(dizi,enfekt,hasta,tc,ad,soyad,cinsiyet,yas,sempt,kronik,il,etraf)   
        sinif.bilgiler
      elsif islem=="cikis"
        puts "Sağlıklı günler dileriz"
      break 
      else  
        puts "Hatalı komut girdiniz"    
       
      end
     
    end  
    