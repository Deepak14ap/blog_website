#include<iostream>
#include<vector>
#include<queue>
#include<algorithm>
#include<stack>
using namespace std;
int ncr(int n, int r){
    int res=1;
    if(r>n-r){
        r=n-r;
    }
    for(int i=0;i<r;i++){
        res*=(n-i);
        res/=(i+1);
    }
    return res;
}
int countTeams(int num,vector<int> skills,int minAssociates,int minLevel,int maxLevel){
    int count=0;
    for(int i=0;i<num;i++){
        if(skills[i]>=minLevel && skills[i]<=maxLevel){
            count++;
        }
    }
    int ans=0;
    for(int r=minAssociates;r<=count;r++){
        ans+=ncr(count,r);
    }
    return ans;

}
int main(){
    int num;
    cin>>num;
    vector<int> skills(num);
    for(int i=0;i<num;i++){
        cin>>skills[i];
    }
    cout<<countTeams(num,skills,2,4,10);
}