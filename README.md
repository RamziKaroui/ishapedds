

iShapes Demonstrator Application                                                {#ishapes_readme}
================================

[TOC]

What is it?                                                                     {#ishapeswhat}
===========

iShapes is an interactive GUI based DDS (Data Distribution Service) Application to learn and test dds key concepts.

It shows and demonstrates the key dds concepts and some of the key DDS Quality of Services (QoSs). It has also been used at the OMG ( Object Management Group) to test the interoperability of the ADLINK DDS products with other compliant DDS implementations.

Each geometrical shape is represented by a dedicated dds topic such as a *Cercle*, *Triangle*, etc ....

All the geometrical shapes share the same *dataType*. The dataType structure is modeled in an .idl file.

The shape dataType is characterized by its color, its position in a 2D space and its Size. Shapes with different colors are considered different data objects, i,e different data instances, as the color data attribute is considered the @Key of the dataType. Each data instance has its unique identity, its own lifecycle and its data.    

![image-20201022104103958](C:\Users\User\Downloads\IshapesCycloneImage)

Running iShapes                                                                
===============

The iShapes demo allows you to publish and subscribe instances of various shapes. The demo is didactic if you run it as at least into two application instances, thus from a shell do one of the below then have one of
the applications publish some shapes and press the subscribe button on the other application to receive them.

The Cyclone DDS C core, CXX Idl compiler and the C++ binding for Eclipse Cyclone DDS need to be installed before proceeding.  

Linux:
------

Assuming Qt5 libs are already available on the library load path,cyclone_demo_ishapes is available in <install-location>/bin folder of Eclipse Cyclone installation :

    $ cyclone_demo_ishapes &
    $ cyclone_demo_ishapes &

Where <install-location> is the location of  Cyclone DDS C++ package 

Windows:
--------

The following QT5 environment variables has to be set in order to build and run ishapes:

    C:\> set QTDIR=<QT5-INSTALLATION-DIR>
    C:\> set QT_PLUGIN_PATH=<QT5-INSTALLATION-DIR>\plugins
    C:\> set PATH=<QT5-INSTALLATION-DIR>\bin;%PATH%
    C:\> start cyclone_demo_ishapes
    C:\> start cyclone_demo_ishapes

Where <QT5-INSTALLATION-DIR> is the installation directory of your QT5 installation , e.g (<C:\Qt\5.7.1> )

Rebuilding on Linux with cmake                                                    
===========================

To build the demo you need to have installed a QT5 development
environment. Assuming that this is the case, then you should need to
simply do the following:

    $ mkdir cyclone_demo_ishapes
    $ cd cyclone_demo_ishapes
    $ cmake <install-location>/share/CycloneDDS-CXX/demo/ishapes
    $ cmake --build .

Where <install-location> is the location of  Cyclone DDS C++ package 

Rebuilding on Windows with cmake                                         
================================

To build the demo you need to have installed a QT5 development
environment. Assuming that this is the case, then you should need to
simply do the following:

    $ mkdir cyclone_demo_ishapes
    $ cd cyclone_demo_ishapes
    $ cmake "<install-location>/share/CycloneDDS-CXX/demo/ishapes"
    $ cmake --build .

Where <install-location> is the location of the Cyclone DDS C++ package 