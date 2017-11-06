%based on the assumption that the only input is the MATLAB sentence
List = {{'M','A','T','L','A','B'}, {' '}, {'i','s'}, {' '}, {'a'}, {' '}, {'s','t','r','a','n','g','e'}, {', '}, {'b','u','t',' '}, {'p','o','p','u','l','a','r'}, {' '}, {'p','r','o','g','r','a','m','m','i','n','g',' ','l','a','n','g','u','a','g','e'}};
for n = 1:1:length(List)
    for k = 1:1:length(List{n})
        if(n == 1 && k == 1)
            sentence = List{n}{k};
        else
            %ask if this warning is ok
            sentence = [sentence, List{n}{k}];
        end
    end
end
disp(sentence)
