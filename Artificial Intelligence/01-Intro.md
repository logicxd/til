# Artificial Intelligence

> It is the science and engineering of making intelligent machines, especially intelligent computer programs. It is related to the similar task of using computers to understand human intelligence, but AI does not have to confine itself to methods that are biologically observable.
> Intelligence is the computational part of the ability to achieve goals in the world. Varying kinds and degrees of intelligence occur in people, many animals and some machines.

There are 4 main definitions of AI and they are categorized into these 4: thinking humanly, thinking rationally, acting humanly, acting rationally.

Act humanly
* The Turing Test - Determine if a human can't tell whether the computer is a person or a computer.
* Natural language processing - communication.
* Knowledge representation - to store what it knows or hears.
* Automated reasoning - to use the stored information to answer questions and to draw new conclusions.
* Machine learning - to adapt to new circumstances and to detect and extrapolate patterns.
* Computer vision - to perceive objects.
* Robotics - to manipulate objects and move about.

Thinking humanly
* The cognitive modeling approach.
* Introspection - trying to catch our own thoughts.
* Psychological experiments - observe a person in action.
* Brain imaging - observe the brain in action.

Thinking rationally
* The "laws of thought" approach.
* Solving a problem in with "right thinking" with irrefutable reasoning processes.

Acting rationally
* The rational agent approach
* Operate autonomously
* Perceive their environment
* Persist over a prolonged time period
* Adapt to change
* Create and pursue goals.

The three pillars of AI
* Search
* Logic
* Learning

## Agents and Environments

![Agent and environment picture](https://user-images.githubusercontent.com/12219300/31069140-0463e530-a710-11e7-9968-4ebbf773beb1.png)

Agent
* Anything that can be viewed as perceiving its environment through sensors and acting upon that environment through actuators.
* Architecture + program.
* Ex human agent: sensors - eyes, ears. Actuators - hands, legs, mouth.
* Ex robotic agent: sensors - cameras, range finders. Actuators: motors.

Percept
* The agent's perceptual inputs at any given instant

Percept sequence
* The complete history of everything the agent has ever perceived.

Agent function
* Maps any given percept sequence to an action.
* An abstract mathematical description.

Agent program
* Implementation of the agent function.
* A concrete implementation, running within some physical system.

## Good Behavior: The Concept of Rationality

Rational agent
* One that acts so as to achieve the best outcome or, when there is uncertainty, the best **expected** outcome.

Omniscience
* Knows the **actual** outcome of its actions and can act accordingly.

Performance measure
* An objective criterion for success of an agent's behavior.
* Ex of cleaning the floor: Measure performance by the amount of dirt cleaned up vs number of clean squares at each time step. Maximum amount of dirt cleaned up can be obtained by picking up dirt, dumping it, and picking up again, whereas having clean squares throughout the time.

Information gathering
* Doing actions in order to modify future percepts.
* **Exploration** are actions that are taken to explore unknown environments.

Autonomous
* Agent is autonomous if its behavior is determined by its own percepts and experience (with the ability to learn and adapt) without depending solely on build-in knowledge.

## Task Environment
The "problems" to which rational agents are the "solutions".

To design a task environment, we specify the PEAS (with automated taxi system as an example):
* Performance Measure - Safety, destination, profits, legality, comfort.
* Environment - City streets, freeways, traffic, pedestrians, weathers.
* Actuators - Steering, brakes, accelerator, horn.
* Sensors - Video, sonar, radar, GPS/navigation, keyboard.
