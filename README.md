# Microgradle

Self-made build tool with abilities to
resolve dependencies (using ivy library), 
build, run project and remove all generated values.

## Instruction
All logic located in "microgradle.sh". This is a simple
bash script. 
* Add dependencies to `ivy.xml`
* Resolve them with `microgradle.sh dependencies`
* Build: `microgradle.sh build`. Class files will be placed to `out/classes`
* Run: `microgradle.sh run path.to.main.class.MainClass`
* Clean: `microgradle.sh clean`. This command will remove all folders except for source folder `src`