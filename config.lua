Config={}

Config.KarpuzToplama = { -- Karpuzların Çıkacağı Konumlar
        vector3(211.17, 6475.84, 31.55),
        vector3(214.22, 6476.35, 31.47),
        vector3(216.88, 6476.5, 31.42)
}
Config.PortakalToplama = { -- Portakalların Çıkacağı Konumlar
        vector3(209.87, 6496.77, 31.43),
        vector3(201.53, 6496.76, 31.47),
        vector3(208.52, 6509.29, 31.47)
}
Config.MandalinToplama = { -- Mandalinlerin Çıkacağı Konumlar
        vector3(209.87, 6496.77, 31.43),
        vector3(201.53, 6496.76, 31.47),
        vector3(208.52, 6509.29, 31.47)
}
Config.BalToplama = { -- Balların Çıkacağı Konumlar
        vector3(209.87, 6496.77, 31.43),
        vector3(201.53, 6496.76, 31.47),
        vector3(208.52, 6509.29, 31.47)
}
-- Mesleklerin Temelleri
Config.MeslekislemeMiktar = 1 -- Mesleklerde malzeme işlemek için minimum gereken miktar
Config.MeslekMin = 1  -- Mesleklerde toplarken minimum vereceği sayı
Config.MeslekMax = 5 -- Mesleklerde toplarken maximum vereceği sayı
Config.markerboyutu = 0.7 -- Marker Boyutu
Config.xdblipac = true --Blip açıp kapatma (true/false)
Config.MesleksatisMiktar = 1 -- Meslek malzemeleri satarken minimum satılan miktar
Config.MeslekOdeme = "cash" -- Karpuz satılınca para bankayamı nakitmi gelsin (Nakit = cash / Banka = cash)

--Karpuz Mesleği
Config.xdKarpuzIsleme = vector3(2725.57, 1540.15, 50.53)-- Karpuz işleme kordinatı
Config.xdKarpuzSatis = vector3(1545.24, 2226.2, 77.54)-- Karpuz satış kordinatı
Config.KarpuzToplamaBlip = vector3(211.17, 6475.84, 31.55) 
Config.KarpuzToplamaBlipAd = "Karpuz Toplama"
Config.KarpuzIslemeBlip = vector3(2725.57, 1540.15, 50.53)
Config.KarpuzIslemeBlipAd = "Karpuz İşleme"
Config.KarpuzSatisBlip = vector3(1545.24, 2226.2, 77.54)
Config.KarpuzSatisBlipAd = "Karpuz Satış"
Config.KarpuzFiyat = 350 -- Karpuz satış fiyatı
Config.KarpuzSatisNPC = vector4(1545.24, 2226.2, 77.54, 187.85) --Satış NPC'sinin konumu
Config.KarpuzIslemeNPC = vector4(2725.57, 1540.15, 50.53, 261.46) --İsleme NPC'sinin konumu

--Portakal Mesleği
Config.xdPortakalIsleme = vector3(291.67, 6511.51, 29.77) -- Portakal işleme kordinatı
Config.xdPortakalSatis = vector3(291.8, 6524.24, 29.77) -- Portakal satış kordinatı
Config.PortakalToplamaBlip = vector3(201.53, 6496.76, 31.47) -- Portakal toplama bölgesi için blip
Config.PortakalToplamaBlipAd = "Portakal Toplama" -- Portakal toplama bölgesi için blip adı
Config.PortakalIslemeBlip = vector3(291.8, 6524.24, 29.77) -- Portakal işleme bölgesi için blip
Config.PortakalIslemeBlipAd = "Portakal İşleme" -- Portakal işleme bölgesi için blip adı
Config.PortakalSatisBlip = vector3(291.8, 6524.24, 29.77) -- Portakal satış bölgesi için blip
Config.PortakalSatisBlipAd = "Portakal Satış"
Config.PortakalFiyat = 350 -- Portakal satış fiyatı
Config.PortakalSatisNPC = vector4(291.8, 6524.24, 29.77, 96.1) --Satış NPC'sinin konumu
Config.PortakalIslemeNPC = vector4(291.67, 6511.51, 29.77, 98.29) --İşleme NPC'sinin konumu

--Mandalin Mesleği
Config.xdMandalinIsleme = vector3(291.67, 6511.51, 29.77) -- Mandalin işleme kordinatı
Config.xdMandalinSatis = vector3(291.8, 6524.24, 29.77) -- Mandalin satış kordinatı
Config.MandalinToplamaBlip = vector3(201.53, 6496.76, 31.47) -- Mandalin toplama bölgesi için blip
Config.MandalinToplamaBlipAd = "Mandalin Toplama" -- Mandalin toplama bölgesi için blip adı
Config.MandalinIslemeBlip = vector3(291.8, 6524.24, 29.77) -- Mandalin işleme bölgesi için blip
Config.MandalinIslemeBlipAd = "Mandalin İşleme" -- Mandalin işleme bölgesi için blip adı
Config.MandalinSatisBlip = vector3(291.8, 6524.24, 29.77) -- Mandalin satış bölgesi için blip
Config.MandalinSatisBlipAd = "Mandalin Satış"
Config.MandalinFiyat = 350 -- Mandalin satış fiyatı
Config.MandalinSatisNPC = vector4(291.8, 6524.24, 29.77, 96.1) --Satış NPC'sinin konumu
Config.MandalinIslemeNPC = vector4(291.67, 6511.51, 29.77, 98.29) --İşleme NPC'sinin konumu

--Bal Mesleği
Config.xdBalIsleme = vector3(291.67, 6511.51, 29.77) -- Bal işleme kordinatı
Config.xdBalSatis = vector3(291.8, 6524.24, 29.77) -- Bal satış kordinatı
Config.BalToplamaBlip = vector3(201.53, 6496.76, 31.47) -- Bal toplama bölgesi için blip
Config.BalToplamaBlipAd = "Bal Toplama" -- Bal toplama bölgesi için blip adı
Config.BalIslemeBlip = vector3(291.8, 6524.24, 29.77) -- Bal işleme bölgesi için blip
Config.BalIslemeBlipAd = "Bal İşleme" -- Bal işleme bölgesi için blip adı
Config.BalSatisBlip = vector3(291.8, 6524.24, 29.77) -- Bal satış bölgesi için blip
Config.BalSatisBlipAd = "Bal Satış"
Config.BalFiyat = 350 -- Bal satış fiyatı
Config.BalSatisNPC = vector4(291.8, 6524.24, 29.77, 96.1) --Satış NPC'sinin konumu
Config.BalIslemeNPC = vector4(291.67, 6511.51, 29.77, 98.29) --İşleme NPC'sinin konumu
