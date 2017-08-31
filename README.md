# You have just found ygopro v2 in Unity 3D!

YGOPro v2 is a card simulation game created in Unity Engine, with same protocol to ygopro.

The game is now being tested in china now, with at least *100,000* users ( about *30%* active users ), which is calculated from the downloads of our weekly updating packages.

We use Yu-Gi-Oh card game only to test our engine, and the game is not for commercial use. When our card game engine is finally finished in about several years, all the contents about Yu-Gi-Oh will be deleted.

The feedbacks is checked every day.

![pic](https://raw.githubusercontent.com/lllyasviel/YGOProUnity_V2/master/gitpic/0.jpg)

# How to compile the game?

1. Download Unity 5.1.3 (https://unity3d.com/cn/get-unity/download/archive).

2. Clone the repository.

3. Double click Assets\main.unity to open the solution.

# How to compile the ocgcore wrapper?

*In most case you do not need to care about the ocgcore wrapper.*

1. Double click the **YGOProUnity_V2/AI_core_vs2017solution/Percy.sln**

2. build the c# solution in x64 and release mode and you get the **System.Servicemodel.Faltexception.dll**

3. copy it into **YGOProUnity_V2\Assets\Plugins**

*Yes, the name of the dll is System.Servicemodel.Faltexception.dll, though it does nothing with c# system :p*

# How to compile the ocgcore.dll?

*In most case you do not need to care about the ocgcore.dll.*

1. Double click the **YGOProUnity_V2/AI_core_vs2017solution/Percy.sln**

2. build the c++ solution in x64 and release mode and you get the **ocgcore.dll**

3. copy it into **YGOProUnity_V2\Assets\Plugins**