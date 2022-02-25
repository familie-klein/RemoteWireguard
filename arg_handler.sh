## only a testfile - how you can handle the args of wireguard_user

help()
{
    echo "

	Usage: wireguard_user -o --option

	options:[ -u | --user ]
		[ -d | --del  ]
		[ -a | --add  ]
		[ -l | --list ]
                [ -h | --help ]

	examples: wireguard_user -u MyUserName -a
			-> creates a user
			-> output: user.config file

		 wireguard_user -u MyUserName -a
			-> deletes a user
			-> output: user xyz deleted or user xyz not found

	 	 wirguard_user -l
			-> output: list of all users

"
    exit 2
}


SHORT=u:,a,d,h,l
LONG=user:,add,del,help,list
OPTS=$(getopt -a -n wireguard_user --options $SHORT --longoptions $LONG -- "$@")

eval set -- "$OPTS"

while :
do
  case "$1" in
    -u | --user )
      USERNAME="$2"
      shift 2
      ;;
    -a | --add )
      ADD=true
	echo "add"
	shift 1
	;;
    -d | --del )
      DEL=true
	echo "del"
	shift 1
      ;;
    -h | --help)
      help
      exit 2
      ;;
    --)
      shift;
      break
      ;;
    *)
      echo "error: Unexpected option: $1"
      break
      ;;
  esac
done
