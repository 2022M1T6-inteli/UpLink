extends Resource # estamos criando do resource e nao do node
class_name QuizQuestion # apenas para facilitar a procura para adicionar o node

enum QuestionType {TEXT, IMAGE, VIDEO, AUDIO}

export(String) var question_info
export(QuestionType) var type
export(Texture) var question_image
export (AudioStream) var question_audio
export (VideoStream) var question_video
export (Array, String) var options #opcoes
export (String) var correct # opcao correta
