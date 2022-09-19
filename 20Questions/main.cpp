/*
	animal.cpp

	author: L. Henke and C. Painter-Wakefield
	date: 04 November 2019

	Animal/20 questions program for CSCI 262, starter code.
*/

#include <iostream>
#include <fstream>
#include <string>
#include <cstdlib>
#include <queue>

using namespace std;

class node {
public:
    string data;
    node* left;
    node* right;
};

void play_game(node*);
node* read_game_tree();
node* readPreorder(ifstream& fin);
void outPreorder(node* in);
void write_game_tree(node* , ofstream& out);
void delete_game_tree(node*);


/**
 * Handles showing the main menu/basic UI
 */
int main() {
    node* root = read_game_tree();
    string trash; // used because of an error that I found that made an extra loop
    //outPreorder(root); //debug function
    if (root == nullptr) return -1;

    while (true) {
        string tmp;
        int choice;

        cout << "Welcome to 20 questions!" << endl;
        cout << "  1) Play the game" << endl;
        cout << "  2) Save the game file" << endl;
        cout << "  3) Quit" << endl;
        cout << "Please make your selection: ";
        getline(cin, tmp);
        choice = atoi(tmp.c_str());

        if(choice == 1) {
            play_game(root);
        }else if(choice == 2) {
            ofstream out("animal_game_tree.txt"); // used if the user wants to save
            write_game_tree(root, out);
            out.close();
        }else if(choice == 3){
                break;
        }else{
            cout << "Sorry, I didn't understand\n";
        }
    }

    delete_game_tree(root);
    return 0;
}


node* read_game_tree() {
    ifstream fin("animal_game_tree.txt");
    node* root = readPreorder(fin);
    return root;
}

void outPreorder(node* in){ //this is just used for debugging the reading in function
    if(in != nullptr){
        cout << in->data << endl;
        outPreorder(in->left);
        outPreorder(in->right);
    }
}

node* readPreorder(ifstream& fin){
    node* root = new node;
    string line;
    getline(fin , line);
    root->data = line.substr(2 , 100);
    if(line.at(1) == 'Q'){
        root->left = readPreorder(fin);
        root->right = readPreorder(fin);
    }else if(line.at(1) == 'A'){
        root->left = nullptr;
        root->right = nullptr;
    }
    return root;
}

void play_game(node* root) {
    string throwaway;//used to get rid of bug
    string choice;
    cout << root->data << " (Y/N)";
    cin >> choice;
    if(choice == "Y" || choice == "y"){
        if(root->left == nullptr){
            cout << "I won!\n";
        }else{
            play_game(root->left);
        }
    }else if(choice == "N" || choice == "n"){
        if(root->right == nullptr){
            cout << "You won!\n";
            //below is game tree expansion
            cout << "Would you like to expand the game tree? (Y/N)";
            cin >> choice;
            if(choice == "Y" || choice == "y"){
                string newCorr;
                string newQuest;
                cout << "Enter a new animal in the form of a question,\n"
                        "e.g., 'Is it a whale?':\n";
                cin.ignore(1);
                getline(cin , newCorr);
                cout <<"Now enter a question for which the answer is 'yes' for your new\n"
                       "animal, and which does not contradict your previous answers:\n";
                getline(cin , newQuest);
                //ugly block of code below used to create new node, and replace questions and answers
                string temp = root->data;
                root->data = newQuest;
                root->left = new node;
                root->left->right = nullptr;
                root->left->left = nullptr;
                root->left->data = newCorr;
                root->right = new node;
                root->right->right = nullptr;
                root->right->left= nullptr;
                root->right->data = temp;
            }
        }else{
            play_game(root->right);
        }
    }else{
        cout << "Did not recognize guess, try again";
    }

}


void write_game_tree(node* in, ofstream& out) {

    if(in != nullptr){
        if(in->right == nullptr){
            out << "#A ";
        }else{
            out << "#Q ";
        }
        out << in->data << endl;
        write_game_tree(in->left , out);
        write_game_tree(in->right , out);
    }

}

void delete_game_tree(node* root) {
    // Optional. Do a post-order deletion of the game tree.
    // This isn't strictly needed as the program exits after this is called,
    // which frees up all the memory anyway.
}