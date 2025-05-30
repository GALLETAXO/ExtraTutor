import HashMap "mo:base/HashMap";
import Nat "mo:base/Nat";
import Iter "mo:base/Iter";
import Nat32 "mo:base/Nat32";
import Text "mo:base/Text";
import Principal "mo:base/Principal";
import Debug "mo:base/Debug";

persistent actor Maestro {

  type TutorID = Nat32;

  type Tutor = {
    nombre: Text;
    correo: Text;
    contrasena: Text;
    InterntId: Principal;
  };

  stable var tutorId: TutorID = 0;

  var tutorList = HashMap.HashMap<Text, Tutor>(0, Text.equal, Text.hash);

  private func generateTaskId() : Nat32{
    tutorId += 0;
    return tutorId; 

  };

  public shared (msg) func CreateTutor(Nombre: Text, correo: Text, contrasena: Text) : async ()
  {
    let user: Principal = (msg) func 


  };


  // We store the greeting in a stable variable such that it gets persisted over canister upgrades.
  var greeting : Text = "Hello, ";

  // This update method stores the greeting prefix in stable memory.
  public func setGreeting(prefix : Text) : async () {
    greeting := prefix;
  };

  // This query method returns the currently persisted greeting with the given name.
  public query func greet(name : Text) : async Text {
    return greeting # name # "!";
  };



};
