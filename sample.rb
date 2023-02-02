=begin
while true
    puts "Sélectionnez le processus que vous souhaitez mettre en œuvre"
    puts "1:Saisir les points d'évaluation et les commentaires"
    puts "2:Vérifiez les résultats jusqu'à présent"
    puts "3:Quitter"
    num = gets.to_i
  
    case num
    when 1
      puts "Veuillez indiquer une note sur une échelle de 1 à 5."
      point = gets.to_i
      while true
        if point <= 0 || point > 5
          puts "Veuillez indiquer sur une échelle de 1 à 5"
          point = gets.to_i
        else
          puts "Veuillez mettre votre commentaire:"
          comment = gets
          post = "Point: #{point} Commentaire ：#{comment}"
          File.open("data.txt", "a") do |file|
            file.puts(post)
          end
          break
        end
      end
    when 2
      puts "Résultats à ce jour."
      File.open("data.txt", "r") do |file|
        file.each_line do |line|
          puts line
        end
      end
    when 3
      puts ""
      break
    else
      puts "Veuillez entrer 1 à 3"
    end
  end
=end

#Creation de la fonction evaluation
def evaluation
  puts "Donner une note entre 1 et 5"
  point = gets.to_i
    while true
      if point <=0 || point> 5
          puts "Veuillez donner un point entre 1 et 5"
          point = gets.to_i
        else
          puts "Veuillez Saisir un commentaire"
          comment = gets
          post = "Points: #{point} Commentaire: #{comment}"
          File.open("data.txt", "a") do|file|
            file.puts(post)
          end
          break
        end
      end
    end
#Methode d'affichage des données
      def affiche_resultats
        puts "Resultats à ce jour"
        File.open("data.txt", "r") do |file|
          file.each_line do |line|
            puts line
          end
        end
      end
      #Appel des fonctions
      while true
        puts "Sélectionnez le processus que vous souhaitez mettre en œuvre"
        puts "1:Saisir les points d'évaluation et les commentaires"
        puts "2:Vérifiez les résultats jusqu'à présent"
        puts "3:Quitter"
        choix = gets.to_i
        case choix
        when 1 
          evaluation
        when 2
          affiche_resultats
        when 3
          puts "Quitter"
          break
        else
          puts "Veuillez entrer un choix entre 1 et 3"
        end
      end
    