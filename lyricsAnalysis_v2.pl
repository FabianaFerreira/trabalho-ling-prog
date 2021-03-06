# Universidade Federal do Rio de Janeiro - UFRJ
# Departamento de Engenharia Eletrônica e de Computação - DEL
# Disciplina de Linguagens de Programação 2019.1
# Trabalho: Gerenciador de Busca de Cifras
# Alunas: Fabiana Ferreira e Tamine Alves
use lib './';
use open IN => ':std', ':encoding(UTF-8)';  #Using these lines to print special characters correctly
use open OUT => ':utf8';
use strict;
use warnings;

use lyricsAnalysisModule;

sub searchChordsFromLyrics
{
	return SearchChordsFromLyrics($_[0]);
}

sub searchLyricsByTune
{
	return SearchLyricsByTune($_[0], $_[1]);
}

sub searchLyricsByNumberOfChords 
{
	return SearchLyricsByNumberOfChords($_[0], $_[1]);
}

sub changeLyricsTune
{
	return ChangeLyricsTune($_[0], $_[1]);
}

sub searchSimilarChordsInDict
{
	return SearchSimilarChordsInDict($_[0]);
}

sub checkIfLyricsHaveIntro
{
	return CheckIfLyricsHaveIntro($_[0]);
}

sub searchModifiedChordsInDict
{
	return SearchModifiedChordsInDict($_[0]);
}

sub searchMajorOrMinorChordsInDict
{
	return SearchMajorOrMinorChordsInDict($_[0]);
}

sub identifyMusicAndArtistName
{
	return IdentifyMusicAndArtistName($_[0]);
}


# --------------------------------------- DEBUG ------------------------------------

# my @result = identifyMusicAndArtistName("/home/fabiana/Desktop/trabalho-ling-prog/cifras/sandy_junior/no_fundo_do_coracao.txt");

# print "oi\n";

# foreach (@result) 
# {
# 	print ($_);
# }
# print $result;

# print "teste identify\n";
# my $path = "/home/fabiana/Desktop/trabalho-ling-prog/cifras/sandy_junior/no_fundo_do_coracao.txt";
# my @result;

# if ($path =~ /^.*\/cifras\/(.+)\/(.+)\.txt$/g) {
# 	my $artist = $1;
# 	my $name = $2;

# 	# Removing underscores and replacing them with whitespace
# 	$artist =~ s/_/ /g;
# 	$name =~ s/_/ /g;

# 	# Capitalizing first letter
# 	$artist =~ s/^([a-z])/\U$1/g;
# 	$name =~ s/^([a-z])/\U$1/g;

# 	print ($artist, $name);

# 	push (@result, $artist);
# 	push (@result, $name);
# }