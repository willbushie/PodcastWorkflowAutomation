# New Podcast Editing Workflow

This Bash file is designed to create new directories and copy the adequate data for streamlining workflows for podcast editing. 

# How To Use

## Installation

Simply place the `create_new.command` file inside of the directory as such:

```
John Podcast
    ├── Project Files
    │   └── John Podcast Episode
    │       └── John Podcast Episode.sesx
    ├── Raw Material
    └── create_new.command
```

## Execution

Executing the script is very simple. Once it is in the correct directory, it just needs to be double clicked. It will open a new terminal window and prompt the user for an episode number input. 

*Note: This script is general purpose. As long as the file structure is the exact same as above (with 'John' being replaced as needed), it will work.*

## Result

The resulting directory structure after execution will be as follows:

```
# user is asked for input and provides '10'
John Podcast
    ├── Project Files
    │   ├── John Podcast Episode
    │   │   └── John Podcast Episode.sesx
    │   └── John Podcast Episode 10
    │       └── John Podcast Episode 10.sesx
    ├── Raw Material
    │   └── Episode 10
    └── create_new.command
```