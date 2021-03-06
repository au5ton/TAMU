/* Write a program that implements a rudimentary movie database, called MyMDB. It will interact with the user to get and display information about movies. The data will be stored in a file so that it will persist between invocations of the program. You will need to devise a format for storing the information in the file.

The information for each movie should include, at a minimum, the following:

title
year
the names of 3 actors/actresses in the movie
genre (e.g., mystery, comedy, horror)
a list of scores (each score should be between 1 and 10)
When the program starts executing, it should query the user for the name of the file from which the data is to be obtained. Then it should present the user with the following menu of options (you can include more options if you like):

enter a new movie and its information
view all information about an existing movie
update the information about an existing movie (including the possibility of entering an additional score)
display the average/min/max/median score for a movie
output the titles of all movies starring a particular actor
output the titles of all movies made in a particular year
Before exiting, the program must write the information about all the movies to the file. */

#include "std_lib_facilities_4.h"

class Year 
{
	static const int min = 1800;
	static const int max = 2014;
	int y;
public:
	class Invalid{};
	Year(int x) : y{x} 
	{
		if (x<min || x>max) 
			throw Invalid{};
	}
	int year() {return y;}
};


class MyMDB {
public:
	enum Genre {mystery,comedy,horror,romance,documentary,family};
private:
	string title; 
	int year(Year);
	string actor1;
	string actor2;
	string actor3;
	Genre genre;
	vector<int> score;
public:
	string gettitle() { return title; };
	Year getyear() { return year; };
	string getactors() { return actor1,actor2,actor3; };
	Genre getgenre() { return genre; };
	vector<int> getscore() { return score; };
};

int main() {
	ofstream myfile (myfile);
	cout << "Please enter name of output file: " << endl;
	cin >> (myfile);
	string iname;
	cin >> iname;
	ifstream ist {iname};
	if (!ist) error("can't open input file ",iname);
}