# Implementation Of getLine() in C for Terminal Usage

```Objective-C
char * getLine(void) {
	////////////////Memory size//////////////
	const size_t INCREMENT_VALUE = 30;				//The amount of bytes to increase by. Each char is 1 byte.
	size_t total_size = INCREMENT_VALUE;			//The total capacity allocated.
	size_t current_size = 0;						//The used capacity.
	
	///////////////Line input pointers////////
	char *line = malloc(total_size);				//To store the user's sentence with total_size bytes.
	char *linePointer = line;						//To point to each character of line.
	
	//If space allocation cannot be made, exit.
	if (line == NULL) {
		return NULL;
	}
	
	///////////////Each character in line//////
	int eachCharacterAsInt = getc(stdin);			//The char to be stored as int
													//Can use either fgetc(FILE *) or getc(FILE *) (faster).
	
	while (eachCharacterAsInt != '\n' && eachCharacterAsInt != EOF)
	{
		//Add if Ascii printable characters.
		if (eachCharacterAsInt >= 32 || eachCharacterAsInt <= 127)
		{
			*linePointer++ = eachCharacterAsInt;
			current_size++;
		}
		
		//If the current_size and total_size are the same, then allocate more space.
		if (current_size == total_size)
		{
			total_size = current_size + INCREMENT_VALUE;
			line = realloc(line, total_size);
			if (line == NULL)
			{
				free(linePointer);
				return NULL;
			}
			linePointer = line + current_size;
		}
		
		//Get the next character.
		eachCharacterAsInt = getc(stdin);
	}
	
	*linePointer = '\0';
	
	return line;
}
```
