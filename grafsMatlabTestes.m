clear
clc

%% Pior caso ImageLocateSubImage()

w_ImgGrande = [300 350 400 450 500 550 600];
h_ImgGrande = [300 350 400 450 500 550 600];

% Testes para imagens e subimagens de diferentes tamanhos
for image = 1:length(w_ImgGrande)

    w1 = w_ImgGrande(image);
    h1 = h_ImgGrande(image);

    tamanhosX = zeros(1, w1);   % array com os tamanhos da imagem pequena
    nCompsY = zeros(1, w1);     % array com os nºs de comparaçoes

    for i=1:length(tamanhosX)
        w2 = i;
        h2 = i;
        tamanhosX(i) = w2*h2;
        nCompsY(i) = nCompsPiorCaso(w1, h1, w2, h2);
    end

    %figure(image);
    %plot(tamanhosX, nCompsY);
    %xlabel("Tamanhos Subimagem (width X height) -> nº de pixeis");
    %ylabel("Numero de comparaçoes (complexidade)");
    %title("Numero de comparaçoes em funçao do tamanho da subimagem");
end

w1 = 400;
h1 = 400;
tamanhosX = zeros(1, w1);   % array com os tamanhos da imagem pequena
nCompsY = zeros(1, w1);     % array com os nºs de comparaçoes
for i=1:400
        w2 = i;
        h2 = i;
        tamanhosX(i) = w2*h2;
        nCompsY(i) = nCompsPiorCaso(w1, h1, w2, h2);
end

xExp = [1 2500 10000 22500 40000 62500 90000 122500 160000];
yExp = [160000 308002500 906010000 1417522500 1616040000 1425062500 918090000 318622500 160000];

figure(1)
plot(tamanhosX, nCompsY, '-b')
hold on;
plot(xExp, yExp, '-r')
legend("Valores Analiticos (Formal)", "Valores Experimentais")
xlabel("Dimensao Subimagem (n = width X height = nº de pixeis)")
ylabel("Numero de Comparaçoes");
title("ImageLocateSubImage(): Pior Caso");
%Numero de comparaçoes para o pior caso ImageLocateSubImage() em funçao da dimensao da subimagem para uma mesma imagem (400x400)


%% Melhor caso ImageLocateSubImage()
w_ImgGrande = [300 350 400 450 500 550 600];
h_ImgGrande = [300 350 400 450 500 550 600];


% Testes para imagens e subimagens de diferentes tamanhos

for image = 1:length(w_ImgGrande)

    w1 = w_ImgGrande(image);
    h1 = h_ImgGrande(image);

    tamanhosX = zeros(1, w1);   % array com os tamanhos da imagem pequena
    nCompsY = zeros(1, w1);     % array com os nºs de comparaçoes

    for i=1:length(tamanhosX)
        w2 = i;
        h2 = i;
        tamanhosX(i) = w2*h2;
        nCompsY(i) = nCompsMelhorCaso(w2, h2);
    end

    %figure(image);
    %plot(tamanhosX, nCompsY);
    %xlabel("Tamanhos Subimagem (width X height) -> nº de pixeis");
    %ylabel("Numero de comparaçoes (complexidade)");
    %title("Numero de comparaçoes em funçao do tamanho da subimagem");
end

w1 = 400;
h1 = 400;
tamanhosX = zeros(1, w1);   % array com os tamanhos da imagem pequena
nCompsY = zeros(1, w1);     % array com os nºs de comparaçoes
for i=1:400
        w2 = i;
        h2 = i;
        tamanhosX(i) = w2*h2;
        nCompsY(i) = nCompsMelhorCaso(w2, h2);
end

xExp = [1 2500 10000 22500 40000 62500 90000 122500 160000];
yExp = [1 2500 10000 22500 40000 62500 90000 122500 160000];

figure(2)
plot(tamanhosX, nCompsY, '-b')
hold on;
plot(xExp, yExp, 'ro')
legend("Valores Analiticos (Formal)", "Valores Experimentais")
xlabel("Dimensao Subimagem (n = width X height = nº de pixeis)")
ylabel("Numero de Comparaçoes");
title("ImageLocateSubImage(): Melhor Caso");


%% Algoritmo melhorado Blur

tamanhosX = zeros(1, w1);   % array com os tamanhos da imagem
nOpsY = zeros(1, w1);     % array com os nºs de operações

for i=1:400
        w1 = i;
        h1 = i;
        tamanhosX(i) = w1*h1;
        nOpsY(i) = nOperationsMelhorado(w1, h1);
end

xExp = [2500 10000 22500 40000 62500 90000 122500 160000];
yExp = [2500 10000 22500 40000 62500 90000 122500 160000];

figure(3)
plot(tamanhosX, nOpsY, '-b')
hold on;
plot(xExp, yExp, 'ro')
legend("Valores Analiticos (Formal)", "Valores Experimentais")
xlabel("Dimensao Imagem (n = width X height = nº de pixeis)")
ylabel("Numero de Operaçoes");
title("ImageBlur(): Versao Melhorada");



%% Algoritmo basico Blur

tamanhosX = zeros(1, w1);   % array com os tamanhos da imagem
nOpsY = zeros(1, w1);     % array com os nºs de operações

for i = 1:400
        w1 = i;
        h1 = i;
        tamanhosX(i) = w1*h1;
        nOpsY(i) = nOperationsBasico(w1, h1);
end

xExp = [2500 10000 22500 40000 62500 90000 122500 160000];
yExp = [6250000 100000000 506250000 1600000000 3906250000 8100000000 15006250000 25600000000];

figure(4)
plot(tamanhosX, nOpsY, '-b')
hold on;
plot(xExp, yExp, 'ro')
legend("Valores Analiticos (Formal)", "Valores Experimentais")
xlabel("Dimensao Imagem (n = width X height = nº de pixeis)")
ylabel("Numero de Operaçoes");
title("ImageBlur(): Versao Basica");




% PARA TODAS AS IMAGENS, OS GRAFICOS TEM A MESMA FORMA!

function nComps = nCompsPiorCaso(w1, h1, w2, h2)
    nComps = - w2*h2^2 - w2^2*h2 - w2^2*h1*h2 - w1*w2*h2^2 + w2^2*h2^2 + ...
                                w2*h2 + w1*w2*h2 + h1*h2*w2 + w1*h1*w2*h2;
end


function nComps = nCompsMelhorCaso(w2, h2)
    nComps = w2*h2;
end


function nOps = nOperationsMelhorado(w1, h1)
    nOps = w1*h1;
end

function nOps = nOperationsBasico(w1, h1)
    nOps = w1*h1*w1*h1;
end
