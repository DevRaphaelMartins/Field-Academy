#!/bin/bash
clear
pr=1
while [ $pr = "1" ];
do
echo "Bem vindo ao Script"
echo
echo "[1] - Criar diretório"
echo "[2] - Compactar diretório"
echo "[3] - Descompactar diretório"
echo "[4] - Excluir diretório"
read -p "opção: " opcao;
clear
case $opcao in

	"1")
	   rep=1
	   while [ $rep = "1" ];
	   do
	   echo
	   echo "1-) Arquivos existentes"
	   echo
	   ls
	   echo
	   echo "********************************************************************************************************************************"
	   echo
           read -p "> Digite o nome do diretório a ser criado: " NewDir
	   echo
	   read -p "> Digite a mensagem para o arquivo HelloWorld criado na pasta: " msg 
	   clear
	   if [ -d $NewDir ];
	    then
	      echo
	      echo "*** ATENÇÃO: Diretório "$Newdir" já existente ***";
	    else
	      echo
	      mkdir $NewDir;
	      echo "*** A pasta "$NewDir" foi criada com sucesso ***" 
	    fi
	    cd $NewDir
	    touch HelloWorld.js
	    echo
            echo "console.log('$msg')" > HelloWorld.js
            cd ..
	    echo "1-) Arquivos existentes"
	    echo
	    ls
	    echo 
            echo "*******************************************************************************************************************************"
            echo
	    echo "Deseja inserir um novo diretório?"
	    echo "[1] - sim"
	    echo "[2] - não"
	    read -p "opção: " rep
	    clear
	   done
	;;
	"2")
	    rep=1
	    while [ $rep = 1 ];
	    do
            echo "Escolha a forma de compactar"
	    echo "[1] - .zip"
	    echo "[2] - .tar.gz"
	    read -p "Opção: " opcao
		clear
		echo
		echo "1-) Arquivos existentes"
	        echo
		ls
		echo
                echo "***************************************************************************************************************************"
                echo
		case $opcao in
			"1")
			read -p "> Digite o nome do diretório a ser compactado: " Dircomp
			if [ -d $Dircomp ];
				then
					echo
					zip -r $Dircomp.zip $Dircomp;
					clear
					echo
					echo "***Arquivo "$Dircomp" compactado com sucesso!***"
				else
				       clear
					echo "***Atenção: Diretório não existe***"
			fi
			;;
			"2")
			read -p "> Digite o nome do diretório a ser compactado: " Dircomp
			if [ -d $Dircomp ];
                                then
					echo
                                        tar -czf $Dircomp.tar.gz $Dircomp;
					clear
					echo "***Arquivo "$Dircomp" compactado com sucesso!***"
                                else
					clear
                                        echo "***Atenção: Diretório não existe***"
                        fi
			;;
		esac
		echo
	        ls
		echo
                echo "****************************************************************************************************************************"
                echo
            	echo "Deseja compactar um novo arquivo?"
            	echo "[1] - sim"
            	echo "[2] - não"
            	read -p "opção: " rep
		clear
		done
	;;
	"3")
	    rep=1
	    while [ $rep = "1" ]
	    do
	    echo
            echo "Escolha o diretório a ser descompactado"
	    echo
	    echo "1-) Arquivos gerais"
	    echo
	    ls
	    echo
	    echo "2-) Arquivos compactados"
	    echo
	    ls *.zip
	    ls *.tar.gz	
	    echo
	    echo "*******************************************************************************************************************************"
            echo
	            read -p "> Nome do arquivo a ser descompactado: " opcao
			if [ -e $opcao ];
			   then
			     echo
			     unzip $opcao;
			     tar -xzf $opcao;
			     clear
			     echo "*** Arquivo "$opcao" descompactado com sucesso!!"
			   else
			     echo
	  		     clear
			     echo "***Atenção: Diretório inexistênte***";
			fi
	     echo
	     ls
	     echo
	     echo "******************************************************************************************************************************"
             echo
	     echo "Deseja descompactar um novo arquivo?"
	     echo "[1] - sim"
	     echo "[2] - não"
	     read -p "opção: " rep
	     clear
	     done
	;;
	"4")
	    rep=1
	    while [ $rep = 1 ]
	    do
	    echo "Escolha o diretório a ser excluído"
		echo
		echo "1-) Arquivos existentes"
	        echo
		ls
		echo
		echo "***************************************************************************************************************************"
                echo
		read -p "Nome do diretório: " opcao
		    if [ -e $opcao ];
			then
			  rm -r $opcao;
			  clear
			  echo
			  echo
			  echo "***O arquivo "$opcao" foi excluído com sucesso!***"
			else
			  echo
			  echo "*** atenção: Diretório inexistênte ***"
		    fi
	    echo
	    echo
	    ls
	    echo
            echo "*******************************************************************************************************************************"
            echo
            echo "Deseja excluir um outro arquivo?"
            echo "[1] - sim"
            echo "[2] - não"
            read -p "opção: " rep
            clear
            done
	;;
esac
clear
echo "Deseja realizar uma nova operação?"
echo "[1] - sim"
echo "[2] - não"
echo "opção: "
read pr
clear
done
