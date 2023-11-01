**PROMISE dataset metrics**
|Metric|Name|Definition|
|:---|:---|:---|
|AMC | Average Method Complexity| Number of JAVA byte codes  |
|AVG_CC |Average McCabe |Average McCabe’s cyclomatic complexity seen in class |
|CA |Afferent couplings  |How many other classes use the specific class |
|CAM |Cohesion Amongst Classes  |Summation of number of different types of method parameters in every method divided by a multiplication of number of different method parameter types in whole class and number of methods.|
|CBM |Coupling Between Methods  |Total number of new/redefined methods to which all the inherited methods are coupled |
|CBO |Coupling Between Objects  |Increased when the methods of one class access services of another.|
|CE |Efferent Couplings |How many other classes is used by the specific class.|
|DAM |Data Access |Ratio of private (protected) attributes to total attributes.|
|DIT |Depth of Inheritance Tree |It’s defined as the maximum length from the node to the root of the tree.|
|IC |Inheritance Coupling |Number of parent classes to which a given class is coupled (includes counts of methods and variables inherited).|
|LCOM |Lack of Cohesion in Methods |Number of pairs of methods that do not share a reference to an instance variable.|
|LCOM3 |Lack of Cohesion in Methods 3 |If <img src="https://render.githubusercontent.com/render/math?math=m">, <img src="https://render.githubusercontent.com/render/math?math=a"> are the number of methods, attributes in a class number and <img src="https://render.githubusercontent.com/render/math?math=\mu(a)"> is the number of methods accessing an attribute, then  <img src="https://render.githubusercontent.com/render/math?math=LCOM3 = ((\frac{1}{a} \sum^{a}_{j} \mu(a_{j}))-m)/(m-1)">|
|LOC |Lines Of Code |Total lines of code in this file or package.|
|MAX_CC |Maximum McCabe |Maximum McCabe’s cyclomatic complexity seen in class.|
|MFA |Methods Functional Abstraction |Number of methods inherited by a class plus number of methods accessible by member methods of the class.|
|MOA |Number of user defined fields |Count of the number of data declarations (class fields) whose types are user defined classes.|
|NOC |Number Of Children |Number of direct descendants (subclasses) for each class.|
|NPM |Number of public methods |Counts all the methods in a class that are declared as public.|
|RFC |Response For a Class  |Number of methods invoked in response to a message to the object.|
|WMC |Weighted Methods per Class  |A class with more member functions than its peers is considered to be more complex and therefore more error prone.|

**AMBROS dataset metrics**
|Metric|Name|Definition|
|:---|:---|:---|
|numberOfVersionsUntil | Number of versions| Number of versions of the given file until this version |
|numberOfFixesUntil | Number of Fixes| Number of times file was involved in bug-fixing |
|numberOfRefactoringsUntil | Number of refactorings| Number of fixes of the given file until this version |
|numberOfAuthorsUntil | Number of authors| Number of fixes of developers who changed the given file until this version |
|linesAddedUntil(Sum,Max,Avg) | Number of added lines| Number of added lines ((Sum,Max,Avg)) for each change of the given file until this version. |
|linesRemovedUntil(Sum,Max,Avg) | Number of removed lines| Number of removed lines ((Sum,Max,Avg)) for each change of the given file until this version. |
|codeChurnUntil(Sum,Max,Avg) | Code churn | Code churn ((Sum,Max,Avg)) for each change of the given file until this version. |
|ageWithRespectTo | Age in weeks | The age of the given file in weeks |
|weightedAgeWithRespectTo | Age in weeks | The age of the given file in weeks weighted my the number of lines of the file.|

**Eclipse dataset metrics**
|Metric|Name|Definition|
|:---|:---|:---|
|FOUT (avg, max, total) |Fan out | Number of method calls (avg, max, total) |
|MLOC (avg, max, total) |Methods lines of code  | The lines of code of the class methods (avg, max, total) |
|NBD (avg, max, total) |Nested block depth | Nested block depth for the considered class (avg, max, total) |
|PAR (avg, max, total) |Number of parameters | Number of parameters for the class methods (avg, max, total) |
|VG (avg, max, total) | McCabe cyclomatic complexity |McCabe cyclomatic complexity for the class methods (avg, max, total) |
|NOF (avg, max, total) |Number of fields |Number of fields for the class methods (avg, max, total) |
|NOM (avg, max, total) |Number of methods |Number of class methods  (avg, max, total) |
|NSF (avg, max, total) |Number of static fields |Number of static fields for a class (avg, max, total) |
|NSM (avg, max, total) |Number of static methods|Number of static fields for a class (avg, max, total) |
|ACD |Number of anonymous type declarations|Number of anonymous type declarations in the considered file|
|NOI  |Number of interfaces|Number of interfaces in the considered file|
|NOT |Number of classes|Number of classes in the considered file|
|TLOC | Total lines of code| Total lines of code the considered file|
|Pre | pre-release defects|The number of pre-release defects of the file in the past 6 months|











