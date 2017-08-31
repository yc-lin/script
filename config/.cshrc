#! /bin/csh
################### OS Basic Setting ########################################

set SHELL = /bin/csh

set filec                       # Expands file names with the ESC key
set nobeep                      # Doesn't beep you when you are expanding
                                # file name with the ESC key
umask 022                       # Create new files with rwxr-xr-x
limit coredumpsize 0            # Create core dump file limited to 50000 bytes
#set noclobber                  # Prevent accidental re-directs to a needed file
#set ignoreeof                  # Only "exit" (not Control d) will logout.
setenv PRINTER lw

#############################################################################

setenv MOTIFHOME        /usr/dt
setenv OPENWINHOME      /usr/openwin
setenv GTAGSCONF        /user/ylin/repo/global/share/gtags/gtags.conf
setenv GTAGSLABEL       ctags

################### Path Setting ############################################

set MyPath   = ( ~/bin )
set LD_LIBRARY_PATh =(~/lib)
set UnixPath = ( /bin /usr/bin /sbin /usr/sbin /etc /usr/etc /usr/ucb )
set XPath    = ( $MOTIFHOME/bin $OPENWINHOME/bin )
set UtilPath = ( /usr/local/bin )
set CADPath  = ( /sw/bin /opt/tools/process/bin)
set P4Path   = ( /sw/perforce /sw/perforce/p4v-2017.1.1491634/bin )
#set P4Path   = ( /sw/perforce /sw/perforce/p4v-2014.1.827578/bin )
#set LSFPath  = ( /sw/LSF/conf )<SID>my_cr_function()
set path     = ( . $UtilPath $CADPath $UnixPath $XPath $MyPath $P4Path )

#############################################################################
switch(`uname`)
    case SunOS :
        setenv LD_LIBRARY_PATH /usr/lib:$OPENWINHOME/lib:$MOTIFHOME/lib:/usr/local/GNOME2/lib
        breaksw
    case Linux :
        setenv LD_LIBRARY_PATH /usr/lib
        breaksw
    case HP-UX :
        setenv LD_LIBRARY_PATH /usr/lib:$OPENWINHOME/lib:$MOTIFHOME/lib
        breaksw
    default : breaksw
endsw

################### Tools Commands  Alias ###################################
alias a alias

a .  'echo $cwd'
a so source
a h "history \!*"
a mroe more

set history = 50
set savehist = 50

a cd 'set old=$cwd; chdir \!*; set bck=$cwd; SetPrompt'
a ,  'set bck=$cwd; chdir $old; set old=$bck; SetPrompt'

################### Basic Alias & Prompt ####################################
# [%n@%m %c05]$
set C0="%{\e[0m%}"
set C32="%{\e[32;1m%}"
set C33="%{\e[33;1m%}"
set C34="%{\e[34;1m%}"
set C35="%{\e[35;1m%}"
set C36="%{\e[36;1m%}"
set C37="%{\e[37;1m%}"

setenv LD_LIBRARY_PATH '/user/ylin/lib'
setenv DISPLAY "172.31.35.170:0.0"

a  SetPrompt   'set prompt = "${C32}λ${C37} %n${C32}|${C37}%j${C32}|${C37}%~${C32}|${C37}%{\n%}${C32}λ${C37} "'
SetPrompt

################### License Server ######################################
#setenv LM_LICENSE_FILE 4071@icmem51:1800@icmem51:27020@dl380fst01:26585@icmem51


################### Logic Tool Setting ######################################
#source /sw/Tools/Logic/Formality/Formality.env
#source /sw/Tools/Logic/LDV/INCISIV.env #will cause onyx make if Malform
#source /sw/Tools/Logic/Novas/Novas-2014.03.env
#source /sw/Tools/Logic/NOVAS/novas_mti.env
#source /sw/Tools/Logic/PrimeTime/pt.env
#source /sw/Tools/Logic/SpyGlass/spyglass.env
#source /sw/Tools/Logic/synopsys/Synopsys.env
#source /sw/Tools/Logic/Synplicity/Synplicity.env
#source /sw/Tools/Logic/TMAX/TMAX.env
#source /sw/Tools/Logic/VCS-MX/VCS-MX2013.06.env
#source /sw/Tools/Logic/nLint/nLint-2013.09.env
#source /sw/LSF/conf/cshrc.lsf
################### Set Your Own Setting ####################################


################### Perforce Setting ####################################


source ~/.alias
source ~/.my_env
set autolist
