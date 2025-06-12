#!/bin/bash
cd /home/NewpIIIREMD/desmond_remd_job_5_P3noLoops_500ns29replicasRESTRAINS/3rdpart

pwd
export SCHRODINGER=/opt/schrodinger2023-4
$SCHRODINGER/desmond -JOBNAME desmond_remd_job_5_P3noLoops_500ns29replicas_strain4initial_3rdpart -HOST localhost -gpu -restore desmond_remd_job_5_P3noLoops_500ns29replicas_strain4initial_3rdpart-in.cpt -in desmond_remd_job_5_P3noLoops_500ns29replicas_strain4initial_replica_0-in.cms -cfg remd.last_time=500000.0

$SCHRODINGER/jobcontrol -list
sleep 95h
$SCHRODINGER/jobcontrol -stop all
sleep 45m
$SCHRODINGER/jobcontrol -list
