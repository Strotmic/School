namespace Howest.mct.models;

public record Registration(string RegistrationId, string LastName, string FirstName, string Email, string Zipcode, int Age, bool IsFirstTimer);

// maak hier class van dat je id automatisch generate in de constructor