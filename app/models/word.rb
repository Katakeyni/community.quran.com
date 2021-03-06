class Word < QuranApiRecord
  belongs_to :verse
  belongs_to :char_type
  belongs_to :topic
  belongs_to :token

  has_many :translations, as: :resource
  has_many :transliterations, as: :resource
  has_many :word_lemmas
  has_many :lemmas, through: :word_lemmas
  has_many :word_stems
  has_many :stems, through: :word_stems
  has_many :word_roots
  has_many :roots, through: :word_roots
  has_many :pause_marks
  has_many  :audio_files, as: :resource

  has_one :word_corpus

  def code
    "&#x#{code_hex};"
  end

  def code_v3
    "&#x#{code_hex_v3};"
  end

  def audio
    "//audio.recitequran.com/wbw/arabic/wisam_sharieff/#{audio_url}"
  end
end
