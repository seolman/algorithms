#include <iostream>

int main() {
  std::string patient, doctor;
  std::cin >> patient;
  std::cin >> doctor;
  int patientA = patient.length() - 1;
  int doctorA =  doctor.length() - 1;
  if (patientA >= doctorA) {
    std::cout << "go" << std::endl;
  } else {
    std::cout << "no" << std::endl;
  }
  return 0;
}
