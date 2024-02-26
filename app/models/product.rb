class Product < ApplicationRecord

  mount_uploader :image, ImageUploader

  #複数ファイルを保持するため、imagesで宣言
  has_many_attached :images

  #外部キーの設定[nilの許可]
  belongs_to :product_category, optional: true
  has_rich_text :content

  #enum設定 1:刀 2:刀装具 3:甲冑
  enum article: {japanese_sword: 0,tosogu: 1,kattyu: 2}

  #enum設定 0の場合：売り切れ,1の場合販売中
  enum sales_status:{sold_out: 0,on_sale: 1}

  enum appraisal_document: {
    general: 0,        # 保存刀剣
    special: 1,        # 特別保存刀剣
    important: 2,      # 重要刀剣
    special_important: 3  # 特別重要刀剣
  }


  enum country:{
    higo: 0,          # 肥後
    yamato: 1,        # 大和
    izumo: 2,         # 出雲
    harima: 3,        # 播磨
    hitachi: 4,       # 常陸
    hizen: 5,         # 肥前
    kaga: 6           # 加賀
  }

  enum era:{
    jomon: 0,         # 縄文時代
    yayoi: 1,         # 弥生時代
    kofun: 2,         # 古墳時代
    asuka: 3,         # 飛鳥時代
    nara: 4,          # 奈良時代
    heian: 5,         # 平安時代
    kamakura: 6,      # 鎌倉時代
    muromachi: 7,     # 室町時代
    sengoku: 8,       # 戦国時代
    edo: 9,           # 江戸時代
    meiji: 10,        # 明治時代
    taisho: 11,       # 大正時代
    showa: 12,        # 昭和時代
    heisei: 13,       # 平成時代
    reiwa: 14         # 令和時代
  }

  enum era_name: {
    taika: 0,   # 大化
    hakuchi: 1, # 白雉
    shuchou: 2, # 朱鳥
    jinki: 3,   # 神亀
    taikou: 4,  # 大宝
    hakuhou: 5, # 白鳳
    keiun: 6,   # 慶雲
    wadou: 7,   # 和銅
    reiki: 8,   # 霊亀
    yoro: 9,    # 養老
    jinguu: 10, # 神功
    keiou: 11,  # 景云
    hakou: 12,  # 白凰
    chouki: 13, # 長期
    tennou: 14, # 天応
    jinshou: 15, # 仁寿
    jinmu: 16,  # 神武
    daikou: 17, # 大統
    jougan: 18, # 貞観
    ninnna: 19, # 仁和
    karoku: 20, # 花略
    engi: 21,   # 延喜
    tenchou: 22, # 天長
    tenyou: 23, # 天慶
    enryaku: 24, # 延曆
    dahou: 25,  # 大宝
    kouki: 26,  # 弘慶
    tenen: 27,  # 天延
    joon: 28,   # 承暦
    tenki: 29,  # 天喜
    anna: 30,   # 安和
    joohei: 31, # 承平
    kangou: 32, # 寛弘
    chouji: 33, # 長治
    tennnou: 34, # 天仁
    chouetsu: 35, # 長德
    tennei: 36,  # 天永
    ennyaku: 37, # 延喜
    eiwa: 38,   # 永和
    kouhei: 39, # 康平
    jokyou: 40, # 承平
    eijin: 41,  # 永禎
    kouji: 42,  # 康和
    tenrou: 43, # 天延
    jogan: 44,  # 貞元
    ankan: 45   # 安貞
  }

  enum sign: {
    masamune: 0,       # 正宗
    muramasa: 1,       # 村正
    kotetsu: 2,        # 肥後守小楢住虎徹
    yoshihiro: 3,      # 吉弘
    sadamune: 4,       # 貞宗
    norishige: 5,      # 則重
    soshu: 6,          # 相州
    yasutsuna: 7,      # 安綱
    gojou: 8,          # 五条
    awataguchi: 9,     # 粟田口
    kanemitsu: 10,     # 兼光
    kanesada: 11       # 兼定
  }

  #バリデーション設定
  validates :product_name,presence: true
  validates :tax_excluded_price,numericality: {only_integer: true}
  validates :content,presence: true
  validates :product_category,presence: true
  validates :article,presence: true
  validates :appraisal_document,presence: true
  validates :country,presence: true
  validates :era,presence: true
  validates :era_name,presence: true
  validates :sign,presence: true
  validates :sales_status,presence: true

end
