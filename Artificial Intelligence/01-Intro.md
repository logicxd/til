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

## Environment Types

Fully observable (vs partially observable)
* The agent's sensors give it access to the complete state of the environment at each point in time.
* The environment is **unobservable** if the agent has no sensors at all.

Single agent (vs multi-agent)
* Single agent if an agent is operating by itself in an environment.
* Multi-agent if there are other agents that interfere with an agent's performance measure.

Deterministic (vs stochastic)
* The next state of the environment is completely determined by the current state and the action executed by the agent.
* Environment is **strategic** if the environment is deterministic except for the actions of the others.

Episodic (vs sequential)
* Decisions do not depend on previous decisions/actions.
* The agent's experience is divided into atomic episodes. Each episode, the agent receives a percept and then performs a single action. So the next episode does not depend on the actions taken in previous episodes.

Static (vs dynamic)
* The environment is unchanged while an agent is deliberating.
* **Semidynamic** is when the environment does not change but the agent's performance score does.

Discrete (vs continuous)
* A limited number of distinct, clearly defined percepts and actions.

Known (vs unknown)
* The outcomes (or outcome probabilities if the environment is stochastic) for all actions are given.
* Not a strict property of the environment.

## Agent Types
Five basic types in order of increasing generality.
* Table Driven agents
* Simple reflex agents
* Model-based reflex agents
* Goal-based agents
* Utility-based agents

Table Driven agent
* Implements the desired agent function.
* Looks up the entire table of actions.
* Impractical; usually this approach does not work since the table would have too many entries to fill.

Simple reflex agent
* Selects actions on the basis of the current percept, ignoring the rest of the percept history.
* **condition-action rule** - ex: **if** car-in-front-is-braking **then** initiate-braking.
* Requires fully observable environment. Seriously goes wrong with even a little bit of un-observability.

Model-based reflex agent
* **Internal state** - keeps track of part of the world it can't see now which depends on the percept history and reflects at least some of the unobserved aspects of the current state.
* Keeps knowledge about *how the world works* by keeping internal states.
* Depends on two things:
    * How the world evolves independently of the agent.
    * How the agent's own actions affect the world.

Goal-based reflex agent
* Reason to prefer one action over the other.
* Describes situations that are desirable.
* Involves consideration of the future.
* Need plan & search.

Utility-based agents
* Some solutions to goal states are better than others.
* Chooses the best solutions for the agent that they will like.
* **Utility function** - an internalization of the performance measure.

Learning agents
* Agent improves over time.
* Can start in an initially unknown environment and then can be more competent than its initial knowledge might allow.
* **Learning element** - responsible for making improvements.
* **Performance element** - responsible for selecting external actions.
