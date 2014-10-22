CoDeSys+.                     @        @   2.3.9.31    @/    @                             МET L   c:\users\max\desktop\twincat\lib\ @                           лvS          @   |   c:\users\max\desktop\twincat\lib\TcpIp.lib @                                                                                          F_GETVERSIONTCPIP               nVersionElement           §џ                 F_GetVersionTcpIp                                     |ET      џџџџ           FB_SOCKETACCEPT        
   fbAdsRdWrt       _    ( PORT := AMSPORT_TCPIPSRV, IDXGRP := TCPADS_IGR_CONLIST, IDXOFFS := TCPADSCONLST_IOF_ACCEPT )              	   T_AmsPort                           ADSRDWRT ` §џ              fbRTrig                 R_TRIG ` §џ              nStep         ` §џ              response                ST_TcIpConnSvrResponse ` §џ              request                ST_SockAddr ` §џ              	   sSrvNetId           ''    
   T_AmsNetId   §џ       Y    The network address of the TcpIpserver.exe. If empty string=>server runs on local system	   hListener              	   T_HSOCKET   §џ       x    Listener handle identifying a socket that has been placed in a listening state with the FB_SocketListen function block    bExecute            §џ       F    Function block execution is triggered by a rising edge at this input.   tTimeout         §џ       3    States the time before the function is cancelled.    	   bAccepted            §џ
       ;    TRUE = new connection is made. FALSE = no new connection.    bBusy            §џ              bError            §џ              nErrId           §џ              hSocket              	   T_HSOCKET   §џ       V   This returned value is a handle for the socket on which the actual connection is made.            |ET     џџџџ           FB_SOCKETCLOSE        
   fbAdsWrite       V    ( PORT := AMSPORT_TCPIPSRV, IDXGRP := TCPADS_IGR_CLOSEBYHDL, SRCADDR := 0, LEN := 0 )              	   T_AmsPort                              ADSWRITE ` §џ              fbRTrig                 R_TRIG ` §џ              nStep         ` §џ              	   sSrvNetId           ''    
   T_AmsNetId   §џ       Y    The network address of the TcpIpserver.exe. If empty string=>server runs on local system   hSocket              	   T_HSOCKET   §џ       4    Local or remote client or listener socket to close.   bExecute            §џ       F    Function block execution is triggered by a rising edge at this input.   tTimeout         §џ       3    States the time before the function is cancelled.       bBusy            §џ              bError            §џ              nErrId           §џ                       |ET     џџџџ           FB_SOCKETCLOSEALL        
   fbAdsWrite       y    ( PORT := AMSPORT_TCPIPSRV, IDXGRP := TCPADS_IGR_CONLIST, IDXOFFS := TCPADSCONLST_IOF_CLOSEALL, SRCADDR := 0, LEN := 0 )              	   T_AmsPort                                 ADSWRITE ` §џ              fbRTrig                 R_TRIG ` §џ              nStep         ` §џ              	   sSrvNetId           ''    
   T_AmsNetId   §џ       Y    The network address of the TcpIpserver.exe. If empty string=>server runs on local system   bExecute            §џ       F    Function block execution is triggered by a rising edge at this input.   tTimeout         §џ       3    States the time before the function is cancelled.       bBusy            §џ	              bError            §џ
              nErrId           §џ                       |ET     џџџџ           FB_SOCKETCONNECT        
   fbAdsRdWrt       _    ( PORT := AMSPORT_TCPIPSRV, IDXGRP :=TCPADS_IGR_CONLIST, IDXOFFS := TCPADSCONLST_IOF_CONNECT )              	   T_AmsPort                           ADSRDWRT ` §џ              fbRTrig                 R_TRIG ` §џ              nStep         ` §џ              request                ST_SockAddr ` §џ              response                ST_TcIpConnSvrResponse ` §џ              	   sSrvNetId           ''    
   T_AmsNetId   §џ       Y    The network address of the TcpIpserver.exe. If empty string=>server runs on local system   sRemoteHost               §џ       X    Remote (server) address. String containing an (Ipv4) Internet Protocol dotted address.    nRemotePort           §џ       .    Remote (server) Internet Protocol (IP) port.    bExecute            §џ       F    Function block execution is triggered by a rising edge at this input.   tTimeout    ШЏ     §џ       3    States the time before the function is cancelled.       bBusy            §џ              bError            §џ              nErrId           §џ              hSocket              	   T_HSOCKET   §џ       V   This returned value is a handle for the socket on which the actual connection is made.            |ET     џџџџ           FB_SOCKETLISTEN        
   fbAdsRdWrt       ]    ( PORT := AMSPORT_TCPIPSRV, IDXGRP :=TCPADS_IGR_CONLIST, IDXOFFS :=TCPADSCONLST_IOF_LISTEN )              	   T_AmsPort                           ADSRDWRT ` §џ              fbRTrig                 R_TRIG ` §џ              nStep         ` §џ              request                ST_SockAddr ` §џ              response                ST_TcIpConnSvrResponse ` §џ              	   sSrvNetId           ''    
   T_AmsNetId   §џ       Y    The network address of the TcpIpserver.exe. If empty string=>server runs on local system
   sLocalHost               §џ       W    Local (server) address. String containing an (Ipv4) Internet Protocol dotted address. 
   nLocalPort           §џ       -    Local (server) Internet Protocol (IP) port.    bExecute            §џ       F    Function block execution is triggered by a rising edge at this input.   tTimeout         §џ	       3    States the time before the function is cancelled.       bBusy            §џ              bError            §џ              nErrId           §џ           	   hListener              	   T_HSOCKET   §џ       _   This returned value is a handle for the listener socket on which the actual connection is made.            |ET     џџџџ           FB_SOCKETRECEIVE           fbAdsReadEx       <    ( PORT := AMSPORT_TCPIPSRV, IDXGRP :=TCPADS_IGR_RECVBYHDL )              	   T_AmsPort                    	   ADSREADEX ` §џ              fbRTrig                 R_TRIG ` §џ              nStep         ` §џ              	   sSrvNetId           ''    
   T_AmsNetId   §џ       Y    The network address of the TcpIpserver.exe. If empty string=>server runs on local system   hSocket              	   T_HSOCKET   §џ       ?    Handle for the socket on which the actual connection is made.    cbLen           §џ       3    Contains the max. number of bytes to be received.    pDest           §џ       ;    Contains the address of the buffer for the received data.    bExecute            §џ       F    Function block execution is triggered by a rising edge at this input.   tTimeout         §џ	       3    States the time before the function is cancelled.       bBusy            §џ              bError            §џ              nErrId           §џ           	   nRecBytes           §џ       2    Contains the number of bytes currently received.             |ET     џџџџ           FB_SOCKETSEND        
   fbAdsWrite       >    ( PORT :=  AMSPORT_TCPIPSRV, IDXGRP := TCPADS_IGR_SENDBYHDL )              	   T_AmsPort                      ADSWRITE ` §џ              fbRTrig                 R_TRIG ` §џ              nStep         ` §џ              	   sSrvNetId           ''    
   T_AmsNetId   §џ       Y    The network address of the TcpIpserver.exe. If empty string=>server runs on local system   hSocket              	   T_HSOCKET   §џ       ?    Handle for the socket on which the actual connection is made.    cbLen           §џ       *    Contains the number of bytes to be send.    pSrc           §џ       D    Contains the address of the buffer containing the data to be send.    bExecute            §џ       F    Function block execution is triggered by a rising edge at this input.   tTimeout         §џ	       3    States the time before the function is cancelled.       bBusy            §џ              bError            §џ              nErrId           §џ                       |ET     џџџџ           FB_SOCKETUDPADDMULTICASTADDRESS        
   fbAdsWrite       E    ( PORT := AMSPORT_TCPIPSRV, IDXGRP :=TCPADS_IGR_MULTICAST_ADDBYHDL )              	   T_AmsPort                      ADSWRITE ` §џ              fbRTrig                 R_TRIG ` §џ              nStep         ` §џ              	   sSrvNetId           ''    
   T_AmsNetId   §џ       Y    The network address of the TcpIpserver.exe. If empty string=>server runs on local system   hSocket              	   T_HSOCKET   §џ       )    udp socket to add multicast address  to.   sMulticastAddr               §џ          Multicast address to add   bExecute            §џ       F    Function block execution is triggered by a rising edge at this input.   tTimeout         §џ       3    States the time before the function is cancelled.       bBusy            §џ              bError            §џ              nErrId           §џ                       |ET     џџџџ           FB_SOCKETUDPCREATE        
   fbAdsRdWrt       ^    ( PORT := AMSPORT_TCPIPSRV, IDXGRP :=TCPADS_IGR_CONLIST, IDXOFFS :=TCPADSCONLST_IOF_UDPBIND )              	   T_AmsPort                           ADSRDWRT ` §џ              fbRTrig                 R_TRIG ` §џ              nStep         ` §џ              request                ST_SockAddr ` §џ              response                ST_TcIpConnSvrResponse ` §џ              	   sSrvNetId           ''    
   T_AmsNetId   §џ       Y    The network address of the TcpIpserver.exe. If empty string=>server runs on local system
   sLocalHost               §џ       N    Local address. String containing an (Ipv4) Internet Protocol dotted address. 
   nLocalPort           §џ	       $    Local Internet Protocol (IP) port.    bExecute            §џ
       F    Function block execution is triggered by a rising edge at this input.   tTimeout         §џ       3    States the time before the function is cancelled.       bBusy            §џ              bError            §џ              nErrId           §џ              hSocket              	   T_HSOCKET   §џ       ?   This returned value is a handle for the bind (reserved) socket.            |ET     џџџџ            FB_SOCKETUDPDROPMULTICASTADDRESS        
   fbAdsWrite       F    ( PORT := AMSPORT_TCPIPSRV, IDXGRP :=TCPADS_IGR_MULTICAST_DROPBYHDL )              	   T_AmsPort         	             ADSWRITE ` §џ              fbRTrig                 R_TRIG ` §џ              nStep         ` §џ              	   sSrvNetId           ''    
   T_AmsNetId   §џ       Y    The network address of the TcpIpserver.exe. If empty string=>server runs on local system   hSocket              	   T_HSOCKET   §џ       .    udp socket to remove multicast address  from.   sMulticastAddr               §џ          Multicast address to remove   bExecute            §џ       F    Function block execution is triggered by a rising edge at this input.   tTimeout         §џ       3    States the time before the function is cancelled.       bBusy            §џ              bError            §џ              nErrId           §џ                       |ET     џџџџ           FB_SOCKETUDPRECEIVEFROM           fbAdsReadEx       @    ( PORT := AMSPORT_TCPIPSRV, IDXGRP :=TCPADS_IGR_RECVFROMBYHDL )              	   T_AmsPort                    	   ADSREADEX ` §џ              fbRTrig                 R_TRIG ` §џ              nStep         ` §џ              buffer                ST_TcIpConnSvrUdpBuffer ` §џ              	   sSrvNetId           ''    
   T_AmsNetId   §џ       Y    The network address of the TcpIpserver.exe. If empty string=>server runs on local system   hSocket              	   T_HSOCKET   §џ       ?    Handle for the socket on which the actual connection is made.    cbLen           §џ       3    Contains the max. number of bytes to be received.    pDest           §џ       ;    Contains the address of the buffer for the received data.    bExecute            §џ       F    Function block execution is triggered by a rising edge at this input.   tTimeout         §џ	       3    States the time before the function is cancelled.       bBusy            §џ              bError            §џ              nErrId           §џ              sRemoteHost               §џ       p    Remote address from which the data was received. String containing an (Ipv4) Internet Protocol dotted address.    nRemotePort           §џ       G    Remote Internet Protocol (IP) port  from which the data was received. 	   nRecBytes           §џ       2    Contains the number of bytes currently received.             |ET     џџџџ           FB_SOCKETUDPSENDTO        
   fbAdsWrite       @    ( PORT :=  AMSPORT_TCPIPSRV, IDXGRP := TCPADS_IGR_SENDTOBYHDL )              	   T_AmsPort                      ADSWRITE ` §џ              fbRTrig                 R_TRIG ` §џ              nStep         ` §џ              buffer                ST_TcIpConnSvrUdpBuffer ` §џ              	   sSrvNetId           ''    
   T_AmsNetId   §џ       Y    The network address of the TcpIpserver.exe. If empty string=>server runs on local system   hSocket              	   T_HSOCKET   §џ       ?    Handle for the socket on which the actual connection is made.    sRemoteHost               §џ       d    Remote address of the target socket. String containing an (Ipv4) Internet Protocol dotted address.    nRemotePort           §џ       :    Remote Internet Protocol (IP) port of the target socket.    cbLen           §џ       *    Contains the number of bytes to be send.    pSrc           §џ	       D    Contains the address of the buffer containing the data to be send.    bExecute            §џ
       F    Function block execution is triggered by a rising edge at this input.   tTimeout         §џ       3    States the time before the function is cancelled.       bBusy            §џ              bError            §џ              nErrId           §џ                       |ET     џџџџ    }   c:\users\max\desktop\twincat\lib\TcBase.lib @                                                                                          FW_ADSCLEAREVENTS           STAMP_I            §џ              ACCESSCNT_I            §џ              BUSY_I             §џ              ERR_I             §џ              ERRID_I            §џ           
   READ_SAV_I             §џ              TICKSTART_I            §џ                 sNetId               §џ              bClear            §џ              nMode           §џ              tTimeout           §џ                 bBusy            §џ	              bError            §џ
              nErrId           §џ                       |ET     џџџџ           FW_ADSLOGDINT            	   nCtrlMask           §џ              sMsgFmt               §џ              nArg           §џ                 FW_AdsLogDINT                                     |ET     џџџџ           FW_ADSLOGEVENT        
   STAMPREQ_I            §џ           
   STAMPRES_I            §џ           
   STAMPSIG_I            §џ           
   STAMPCON_I            §џ              ACCESSCNT_I            §џ           	   AMSADDR_I   	                         §џ              EVENT_I                      
   FW_TcEvent    §џ              pTCEVENTSTREAM_I            §џ              CBEVENTSTREAM_I            §џ              nSTATE_I            §џ              nSTATEREQ_I            §џ              nSTATERES_I            §џ              nSTATESIG_I            §џ               nSTATECON_I            §џ!              ERR_I             §џ"              ERRID_I            §џ#              bEVENT_SAV_I             §џ$              bEVENTQUIT_SAV_I             §џ%              TICKSTART_I            §џ&           	      sNetId               §џ              nPort           §џ              bEvent            §џ           
   bEventQuit            §џ              stEventConfigData                      
   FW_TcEvent   §џ              pEventDataAddress           §џ       	    pointer    cbEventDataLength           §џ	           
   bFbCleanup            §џ
              tTimeout           §џ                 nEventState           §џ              bError            §џ              nErrId           §џ              bQuit            §џ                       |ET     џџџџ           FW_ADSLOGLREAL            	   nCtrlMask           §џ              sMsgFmt               §џ              fArg                        §џ                 FW_AdsLogLREAL                                     |ET     џџџџ           FW_ADSLOGSTR            	   nCtrlMask           §џ              sMsgFmt               §џ              sArg               §џ                 FW_AdsLogSTR                                     |ET     џџџџ           FW_ADSRDWRT           STAMP_I            §џ              ACCESSCNT_I            §џ              BUSY_I             §џ              ERR_I             §џ              ERRID_I            §џ              WRTRD_SAV_I             §џ              PDESTADDR_I            §џ              TICKSTART_I            §џ           
      sNetId               §џ              nPort           §џ              nIdxGrp           §џ              nIdxOffs           §џ           
   cbWriteLen           §џ           	   cbReadLen           §џ           
   pWriteBuff           §џ	           	   pReadBuff           §џ
              bExecute            §џ              tTimeout           §џ                 bBusy            §џ              bError            §џ              nErrId           §џ              cbRead           §џ           count of bytes actually read             |ET     џџџџ           FW_ADSRDWRTIND           CLEAR_I             §џ                 bClear            §џ           	      bValid            §џ              sNetId               §џ              nPort           §џ           	   nInvokeId           §џ	              nIdxGrp           §џ
              nIdxOffs           §џ           	   cbReadLen           §џ           
   cbWriteLen           §џ           
   pWriteBuff           §џ                       |ET     џџџџ           FW_ADSRDWRTRES        	   RESPOND_I             §џ                 sNetId               §џ              nPort           §џ           	   nInvokeId           §џ              nErrId           §џ           	   cbReadLen           §џ           	   pReadBuff           §џ              bRespond            §џ	                           |ET     џџџџ        
   FW_ADSREAD           STAMP_I            §џ              ACCESSCNT_I            §џ              BUSY_I             §џ              ERR_I             §џ              ERRID_I            §џ           
   READ_SAV_I             §џ              TICKSTART_I            §џ                 sNetId               §џ              nPort           §џ              nIdxGrp           §џ              nIdxOffs           §џ           	   cbReadLen           §џ           	   pReadBuff           §џ              bExecute            §џ	              tTimeout           §џ
                 bBusy            §џ              bError            §џ              nErrId           §џ              cbRead           §џ           count of bytes actually read             |ET     џџџџ           FW_ADSREADDEVICEINFO           STAMP_I            §џ              ACCESSCNT_I            §џ              BUSY_I             §џ              ERR_I             §џ              ERRID_I            §џ              RDINFO_SAV_I             §џ              TICKSTART_I            §џ                 sNetId               §џ              nPort           §џ              bExecute            §џ              tTimeout           §џ                 bBusy            §џ	              bError            §џ
              nErrId           §џ              sDevName               §џ              nDevVersion           §џ                       |ET     џџџџ           FW_ADSREADIND           CLEAR_I             §џ                 bClear            §џ                 bValid            §џ              sNetId               §џ              nPort           §џ           	   nInvokeId           §џ	              nIdxGrp           §џ
              nIdxOffs           §џ           	   cbReadLen           §џ                       |ET     џџџџ           FW_ADSREADRES        	   RESPOND_I             §џ                 sNetId               §џ              nPort           §џ           	   nInvokeId           §џ              nErrId           §џ           	   cbReadLen           §џ           	   pReadBuff           §џ              bRespond            §џ	                           |ET     џџџџ           FW_ADSREADSTATE           STAMP_I            §џ              ACCESSCNT_I            §џ              BUSY_I             §џ              ERR_I             §џ              ERRID_I            §џ              RDSTATE_SAV_I             §џ              TICKSTART_I            §џ                 sNetId               §џ              nPort           §џ              bExecute            §џ              tTimeout           §џ                 bBusy            §џ	              bError            §џ
              nErrId           §џ           	   nAdsState           §џ           	   nDevState           §џ                       |ET     џџџџ           FW_ADSWRITE           STAMP_I            §џ              ACCESSCNT_I            §џ              BUSY_I             §џ              ERR_I             §џ              ERRID_I            §џ              WRITE_SAV_I             §џ              TICKSTART_I            §џ                 sNetId               §џ              nPort           §џ              nIdxGrp           §џ              nIdxOffs           §џ           
   cbWriteLen           §џ           
   pWriteBuff           §џ              bExecute            §џ	              tTimeout           §џ
                 bBusy            §џ              bError            §џ              nErrId           §џ                       |ET     џџџџ           FW_ADSWRITECONTROL           STAMP_I            §џ              ACCESSCNT_I            §џ              BUSY_I             §џ              ERR_I             §џ              ERRID_I            §џ              WRITE_SAV_I             §џ              TICKSTART_I            §џ                 sNetId               §џ              nPort           §џ           	   nAdsState           §џ           	   nDevState           §џ           
   cbWriteLen           §џ           
   pWriteBuff           §џ              bExecute            §џ	              tTimeout           §џ
                 bBusy            §џ              bError            §џ              nErrId           §џ                       |ET     џџџџ           FW_ADSWRITEIND           CLEAR_I             §џ                 bClear            §џ                 bValid            §џ              sNetId               §џ              nPort           §џ           	   nInvokeId           §џ	              nIdxGrp           §џ
              nIdxOffs           §џ           
   cbWriteLen           §џ           
   pWriteBuff           §џ                       |ET     џџџџ           FW_ADSWRITERES        	   RESPOND_I             §џ                 sNetId               §џ              nPort           §џ           	   nInvokeId           §џ              nErrId           §џ              bRespond            §џ                           |ET     џџџџ           FW_DRAND           FirstCall_i             §џ	           
   HoldRand_i            §џ
              R250_Buffer_i   	  љ                        §џ           
   R250_Index            §џ                 nSeed           §џ                 fRndNum                        §џ                       |ET     џџџџ           FW_GETCPUACCOUNT                   dwCpuAccount           §џ                       |ET     џџџџ           FW_GETCPUCOUNTER                
   dwCpuCntLo           §џ           
   dwCpuCntHi           §џ                       |ET     џџџџ           FW_GETCURTASKINDEX                   nIndex           §џ                       |ET     џџџџ           FW_GETSYSTEMTIME                   dwTimeLo           §џ              dwTimeHi           §џ                       |ET     џџџџ           FW_GETVERSIONTCBASE               nVersionElement           §џ                 FW_GetVersionTcBase                                     |ET     џџџџ           FW_LPTSIGNAL            	   nPortAddr           §џ              nPinNo           §џ              bOnOff            §џ	                 FW_LptSignal                                      |ET     џџџџ        	   FW_MEMCMP               pBuf1           §џ           First buffer    pBuf2           §џ           Second buffer    cbLen           §џ           Number of characters    	   FW_MemCmp                                     |ET     џџџџ        	   FW_MEMCPY               pDest           §џ           New buffer    pSrc           §џ           Buffer to copy from    cbLen           §џ           Number of characters to copy    	   FW_MemCpy                                     |ET     џџџџ        
   FW_MEMMOVE               pDest           §џ           New buffer    pSrc           §џ           Buffer to copy from    cbLen           §џ           Number of characters to copy    
   FW_MemMove                                     |ET     џџџџ        	   FW_MEMSET               pDest           §џ           Pointer to destination 	   nFillByte           §џ           Character to set    cbLen           §џ           Number of characters    	   FW_MemSet                                     |ET     џџџџ           FW_PORTREAD            	   nPortAddr           §џ           	   eNoOfByte               FW_NoOfByte   §џ                 FW_PortRead                                     |ET     џџџџ           FW_PORTWRITE            	   nPortAddr           §џ           	   eNoOfByte               FW_NoOfByte   §џ              nValue           §џ                 FW_PortWrite                                      |ET     џџџџ       c:\users\max\desktop\twincat\lib\TcSystem.lib @                                                                                P          ADSCLEAREVENTS           fbAdsClearEvents                            FW_AdsClearEvents ` §џ                 NetID            
   T_AmsNetId   §џ              bClear            §џ              iMode           §џ              tTimeout         §џ                 bBusy            §џ	              bErr            §џ
              iErrId           §џ                       |ET     џџџџ        
   ADSLOGDINT               msgCtrlMask           §џ           	   msgFmtStr               T_MaxString   §џ              dintArg           §џ              
   ADSLOGDINT                                     |ET      џџџџ           ADSLOGEVENT           fbAdsLogEvent                                               FW_AdsLogEvent ` §џ           	      NETID            
   T_AmsNetId   §џ              PORT           §џ              Event            §џ           	   EventQuit            §џ              EventConfigData               TcEvent   §џ              EventDataAddress           §џ       	    pointer    EventDataLength           §џ	           	   FbCleanup            §џ
              TMOUT         §џ              
   EventState           §џ              Err            §џ              ErrId           §џ              Quit            §џ                       |ET     џџџџ           ADSLOGLREAL               msgCtrlMask           §џ           	   msgFmtStr               T_MaxString   §џ              lrealArg                        §џ                 ADSLOGLREAL                                     |ET      џџџџ        	   ADSLOGSTR               msgCtrlMask           §џ           	   msgFmtStr               T_MaxString   §џ              strArg               T_MaxString   §џ              	   ADSLOGSTR                                     |ET      џџџџ           ADSRDDEVINFO           fbAdsReadDeviceInfo                              FW_AdsReadDeviceInfo    §џ                 NETID            
   T_AmsNetId   §џ              PORT            	   T_AmsPort   §џ              RDINFO            §џ              TMOUT         §џ                 BUSY            §џ	              ERR            §џ
              ERRID           §џ              DEVNAME               §џ              DEVVER           §џ                       |ET     џџџџ        
   ADSRDSTATE           fbAdsReadState                              FW_AdsReadState    §џ                 NETID            
   T_AmsNetId   §џ              PORT            	   T_AmsPort   §џ              RDSTATE            §џ              TMOUT         §џ                 BUSY            §џ	              ERR            §џ
              ERRID           §џ              ADSSTATE           §џ              DEVSTATE           §џ                       |ET     џџџџ           ADSRDWRT        
   fbAdsRdWrt                                    FW_AdsRdWrt    §џ           
      NETID            
   T_AmsNetId   §џ              PORT            	   T_AmsPort   §џ              IDXGRP           §џ              IDXOFFS           §џ              WRITELEN           §џ              READLEN           §џ              SRCADDR           §џ	              DESTADDR           §џ
              WRTRD            §џ              TMOUT         §џ                 BUSY            §џ              ERR            §џ              ERRID           §џ                       |ET     џџџџ        
   ADSRDWRTEX        
   fbAdsRdWrt                                    FW_AdsRdWrt    §џ           
      NETID            
   T_AmsNetId   §џ              PORT            	   T_AmsPort   §џ              IDXGRP           §џ              IDXOFFS           §џ              WRITELEN           §џ              READLEN           §џ              SRCADDR           §џ	              DESTADDR           §џ
              WRTRD            §џ              TMOUT         §џ                 BUSY            §џ              ERR            §џ              ERRID           §џ              COUNT_R           §џ           count of bytes actually read             |ET     џџџџ           ADSRDWRTIND           fbAdsRdWrtInd                         FW_AdsRdWrtInd    §џ                 CLEAR            §џ           	      VALID            §џ              NETID            
   T_AmsNetId   §џ              PORT            	   T_AmsPort   §џ              INVOKEID           §џ	              IDXGRP           §џ
              IDXOFFS           §џ              RDLENGTH           §џ           	   WRTLENGTH           §џ              DATAADDR           §џ                       |ET      џџџџ           ADSRDWRTRES           fbAdsRdWrtRes                      FW_AdsRdWrtRes    §џ                 NETID            
   T_AmsNetId   §џ              PORT            	   T_AmsPort   §џ              INVOKEID           §џ              RESULT           §џ              LEN           §џ              DATAADDR           §џ              RESPOND            §џ	                           |ET      џџџџ           ADSREAD        	   fbAdsRead                              
   FW_AdsRead    §џ                 NETID            
   T_AmsNetId   §џ              PORT            	   T_AmsPort   §џ              IDXGRP           §џ              IDXOFFS           §џ              LEN           §џ              DESTADDR           §џ              READ            §џ	              TMOUT         §џ
                 BUSY            §џ              ERR            §џ              ERRID           §џ                       |ET     џџџџ        	   ADSREADEX        	   fbAdsRead                              
   FW_AdsRead    §џ                 NETID            
   T_AmsNetId   §џ              PORT            	   T_AmsPort   §џ              IDXGRP           §џ              IDXOFFS           §џ              LEN           §џ              DESTADDR           §џ              READ            §џ	              TMOUT         §џ
                 BUSY            §џ              ERR            §џ              ERRID           §џ              COUNT_R           §џ           count of bytes actually read             |ET     џџџџ        
   ADSREADIND           fbAdsReadInd        	               FW_AdsReadInd    §џ                 CLEAR            §џ                 VALID            §џ              NETID            
   T_AmsNetId   §џ              PORT            	   T_AmsPort   §џ              INVOKEID           §џ	              IDXGRP           §џ
              IDXOFFS           §џ              LENGTH           §џ                       |ET      џџџџ        
   ADSREADRES           fbAdsReadRes                      FW_AdsReadRes    §џ                 NETID            
   T_AmsNetId   §џ              PORT            	   T_AmsPort   §џ              INVOKEID           §џ              RESULT           §џ              LEN           §џ              DATAADDR           §џ              RESPOND            §џ	                           |ET      џџџџ           ADSWRITE        
   fbAdsWrite                                FW_AdsWrite    §џ                 NETID            
   T_AmsNetId   §џ              PORT            	   T_AmsPort   §џ              IDXGRP           §џ              IDXOFFS           §џ              LEN           §џ              SRCADDR           §џ              WRITE            §џ	              TMOUT         §џ
                 BUSY            §џ              ERR            §џ              ERRID           §џ                       |ET     џџџџ           ADSWRITEIND           fbAdsWriteInd        
                FW_AdsWriteInd    §џ                 CLEAR            §џ                 VALID            §џ              NETID            
   T_AmsNetId   §џ              PORT            	   T_AmsPort   §џ              INVOKEID           §џ	              IDXGRP           §џ
              IDXOFFS           §џ              LENGTH           §џ              DATAADDR           §џ                       |ET      џџџџ           ADSWRITERES           fbAdsWriteRes                    FW_AdsWriteRes    §џ                 NETID            
   T_AmsNetId   §џ              PORT            	   T_AmsPort   §џ              INVOKEID           §џ              RESULT           §џ              RESPOND            §џ                           |ET      џџџџ        	   ADSWRTCTL           fbAdsWriteControl                                FW_AdsWriteControl    §џ                 NETID            
   T_AmsNetId   §џ              PORT            	   T_AmsPort   §џ              ADSSTATE           §џ              DEVSTATE           §џ              LEN           §џ              SRCADDR           §џ              WRITE            §џ	              TMOUT         §џ
                 BUSY            §џ              ERR            §џ              ERRID           §џ                       |ET     џџџџ           ANALYZEEXPRESSION               InputExp            §џ           	   DoAnalyze            §џ              	   ExpResult            §џ           	   OutString               §џ                       |ET      џџџџ           ANALYZEEXPRESSIONCOMBINED           Index            §џ                 InputExp            §џ           	   DoAnalyze            §џ              	   ExpResult            §џ              OutTable   	                        ExpressionResult           §џ           	   OutString               §џ	                       |ET      џџџџ           ANALYZEEXPRESSIONTABLE           Index            §џ                 InputExp            §џ           	   DoAnalyze            §џ              	   ExpResult            §џ              OutTable   	                        ExpressionResult           §џ                       |ET      џџџџ           APPENDERRORSTRING               strOld               §џ              strNew               §џ                 AppendErrorString                                         |ET      џџџџ           BAVERSION_TO_DWORD               nVersion         ` §џ           	   nRevision         ` §џ	              nBuild         ` §џ
                 BAVERSION_TO_DWORD                                     |ET      џџџџ        
   CLEARBIT32           dwConst        ` §џ                 inVal32           §џ              bitNo           §џ              
   CLEARBIT32                                     |ET      џџџџ        	   CSETBIT32           dwConst        ` §џ	                 inVal32           §џ              bitNo           §џ              bitVal            §џ       &    value to which the bit should be set    	   CSETBIT32                                     |ET      џџџџ           DRAND           fbDRand                    FW_DRand ` §џ
                 Seed           §џ                 Num                        §џ                       |ET      џџџџ           F_COMPAREFWVERSION           soll         ` §џ              ist         ` §џ                 major         ` §џ           requiered major version    minor         ` §џ	           requiered minor version    revision         ` §џ
       )    requiered revision/service pack version    patch         ` §џ       0    required patch version (reserved, default = 0 )      F_CompareFwVersion                                      |ET      џџџџ           F_CREATEAMSNETID           idx         ` §џ                 nIds               T_AmsNetIdArr   §џ           Ams Net ID as array of bytes.       F_CreateAmsNetId            
   T_AmsNetId                             |ET      џџџџ           F_CREATEIPV4ADDR           idx         ` §џ                 nIds               T_IPv4AddrArr   §џ       <    Internet Protocol dotted address (ipv4) as array of bytes.       F_CreateIPv4Addr            
   T_IPv4Addr                             |ET      џџџџ           F_GETSTRUCTMEMBERALIGNMENT           tmp                ST_StructMemberAlignmentProbe ` §џ                     F_GetStructMemberAlignment                                     |ET      џџџџ           F_GETVERSIONTCSYSTEM               nVersionElement           §џ                 F_GetVersionTcSystem                                     |ET      џџџџ           F_IOPORTREAD               nAddr           §џ           Port address    eSize               E_IOAccessSize   §џ           Number of bytes to read       F_IOPortRead                                     |ET      џџџџ           F_IOPORTWRITE               nAddr           §џ           Port address    eSize               E_IOAccessSize   §џ           Number of bytes to write    nValue           §џ           Value to write       F_IOPortWrite                                      |ET      џџџџ           F_SCANAMSNETIDS           pNetID               ` §џ              b               T_AmsNetIdArr ` §џ              w         ` §џ	              id         ` §џ
           	   Index7001                            sNetID            
   T_AmsNetID   §џ       :    String containing the Ams Net ID. E.g. '127.16.17.3.1.1'       F_ScanAmsNetIds               T_AmsNetIdArr                             |ET      џџџџ           F_SCANIPV4ADDRIDS           b               T_AmsNetIdArr ` §џ           	   Index7001                            sIPv4            
   T_IPv4Addr   §џ       M    String containing the Internet Protocol dotted address. E.g. '172.16.7.199'       F_ScanIPv4AddrIds               T_IPv4AddrArr                             |ET      џџџџ           F_SPLITPATHNAME           pPath               ` §џ              pSlash               ` §џ              pDot               ` §џ              p               ` §џ              length         ` §џ              	   sPathName               T_MaxString   §џ                 F_SplitPathName                                sDrive               §џ              sDir                T_MaxString  §џ           	   sFileName                T_MaxString  §џ              sExt                T_MaxString  §џ	                   |ET      џџџџ           F_TOASC           pChar               ` §џ                 str    Q       Q    §џ                 F_ToASC                                     |ET      џџџџ           F_TOCHR           pChar    	                            ` §џ                 c           §џ                 F_ToCHR    Q       Q                              |ET      џџџџ           FB_BADEVICEIOCONTROL           fbRW       O    ( PORT := AMSPORT_R3_SYSSERV, IDXGRP := SYSTEMSERVICE_BADEVAPI, IDXOFFS := 0 )              	   T_AmsPort         L                 
   ADSRDWRTEX ` §џ              req                ST_AdsBaDevApiReq ` §џ              state         ` §џ              rtrig                 R_TRIG ` §џ                 sNetID           ''    
   T_AmsNetID ` §џ           Ams net id    affinity           ( lower :=0, higher := 0 )                T_U64KAFFINITY ` §џ       )    Affinity mask (default  = 0 = not used) 	   nModifier         ` §џ       +    Optional command modifier (0 == not used)    nIdxGrp         ` §џ           Api function group    nIdxOffs         ` §џ           Api function offset 
   cbWriteLen         ` §џ	           Input data byte size 	   cbReadLen         ` §џ
           Output data byte size 
   pWriteBuff         ` §џ           Pointer to input data buffer 	   pReadBuff         ` §џ           Pointer to output data buffer    bExecute          ` §џ       &    Rising edge starts command execution    tTimeout       ` §џ                 bBusy          ` §џ              bError          ` §џ              nErrID         ` §џ              cbRead         ` §џ           Count of bytes actually read             |ET     џџџџ           FB_BAGENGETVERSION           fbCtrl           ( nModifier := 0, affinity := ( lower := 0, higher := 0 ), nIdxGrp := BADEVAPIIGRP_GENERAL, nIdxOffs := BADEVAPIIOFFS_GENERAL_VERSION )                ( lower :=0, higher := 0 )                T_U64KAFFINITY                                             FB_BaDeviceIoControl ` §џ              rtrig                 R_TRIG ` §џ              state         ` §џ              rsp         ` §џ                 sNetID           ''    
   T_AmsNetID ` §џ           ams net id    bExecute          ` §џ       &    rising edge starts command execution    tTimeout       ` §џ                 bBusy          ` §џ	              bError          ` §џ
              nErrID         ` §џ              nVersion         ` §џ           	   nRevision         ` §џ              nBuild         ` §џ                       |ET     џџџџ           FB_CREATEDIR        
   fbAdsRdWrt       ]    ( nPort:= AMSPORT_R3_SYSSERV, nIdxGrp:= SYSTEMSERVICE_MKDIR, cbReadLen := 0, pReadBuff:= 0 )             '                            FW_AdsRdWrt ` §џ                 sNetId            
   T_AmsNetId   §џ           ams net id 	   sPathName               T_MaxString   §џ           max directory length = 255    ePath           PATH_GENERIC    
   E_OpenPath   §џ       +    Default: Create directory at generic path    bExecute            §џ       %    rising edge start command execution    tTimeout         §џ                 bBusy            §џ
              bError            §џ              nErrId           §џ                       |ET     џџџџ           FB_EOF        
   fbAdsRdWrt       `    (nPort := AMSPORT_R3_SYSSERV, nIdxGrp := SYSTEMSERVICE_FEOF, cbWriteLen := 0, pWriteBuff := 0 )             '                            FW_AdsRdWrt ` §џ              iEOF         ` §џ           	   fbTrigger                 R_TRIG ` §џ              state         ` §џ                 sNetId            
   T_AmsNetId   §џ           ams net id    hFile           §џ           file handle    bExecute            §џ           control input    tTimeout         §џ                 bBusy            §џ	              bError            §џ
              nErrId           §џ              bEOF            §џ                       |ET     џџџџ           FB_FILECLOSE        
   fbAdsRdWrt           ( nPort := AMSPORT_R3_SYSSERV, nIdxGrp := SYSTEMSERVICE_FCLOSE, cbWriteLen := 0,	cbReadLen := 0,	pWriteBuff := 0, pReadBuff := 0 )             '   y                                 FW_AdsRdWrt ` §џ                 sNetId            
   T_AmsNetId   §џ           ams net id    hFile           §џ       %    file handle obtained through 'open'    bExecute            §џ           close control input    tTimeout         §џ                 bBusy            §џ	              bError            §џ
              nErrId           §џ                       |ET     џџџџ           FB_FILEDELETE        
   fbAdsRdWrt       a    (nPort := AMSPORT_R3_SYSSERV, nIdxGrp := SYSTEMSERVICE_FDELETE, cbReadLen := 0, pReadBuff := 0 )             '                            FW_AdsRdWrt ` §џ              tmpOpenMode         ` §џ                 sNetId            
   T_AmsNetId   §џ           ams net id 	   sPathName               T_MaxString   §џ           file path and name    ePath           PATH_GENERIC    
   E_OpenPath   §џ           Default: Open generic file    bExecute            §џ           open control input    tTimeout         §џ                 bBusy            §џ
              bError            §џ              nErrId           §џ                       |ET     џџџџ           FB_FILEGETS        
   fbAdsRdWrt       b    ( nPort := AMSPORT_R3_SYSSERV, nIdxGrp := SYSTEMSERVICE_FGETS, cbWriteLen := 0, pWriteBuff := 0 )             '   ~                         FW_AdsRdWrt ` §џ           	   fbTrigger                 R_TRIG ` §џ              state         ` §џ                 sNetId            
   T_AmsNetId   §џ           ams net id    hFile           §џ           file handle    bExecute            §џ           control input    tTimeout         §џ                 bBusy            §џ	              bError            §џ
              nErrId           §џ              sLine               T_MaxString   §џ              bEOF            §џ                       |ET     џџџџ           FB_FILEOPEN        
   fbAdsRdWrt       @    ( nPort := AMSPORT_R3_SYSSERV, nIdxGrp := SYSTEMSERVICE_FOPEN )             '   x                 FW_AdsRdWrt ` §џ              tmpOpenMode         ` §џ              tmpHndl         ` §џ           	   fbTrigger                 R_TRIG ` §џ              state         ` §џ                 sNetId            
   T_AmsNetId   §џ           ams net id 	   sPathName               T_MaxString   §џ           max filename length = 255    nMode           §џ           open mode flags    ePath           PATH_GENERIC    
   E_OpenPath   §џ           Default: Open generic file    bExecute            §џ           open control input    tTimeout         §џ                 bBusy            §џ              bError            §џ              nErrId           §џ              hFile           §џ           file handle             |ET     џџџџ           FB_FILEPUTS        
   fbAdsRdWrt       `    ( nPort := AMSPORT_R3_SYSSERV, nIdxGrp := SYSTEMSERVICE_FPUTS, cbReadLen := 0, pReadBuff := 0 )             '                            FW_AdsRdWrt ` §џ                 sNetId            
   T_AmsNetId   §џ           ams net id    hFile           §џ           file handle    sLine               T_MaxString   §џ           string to write    bExecute            §џ           control input    tTimeout         §џ                 bBusy            §џ
              bError            §џ              nErrId           §џ                       |ET     џџџџ           FB_FILEREAD        
   fbAdsRdWrt       b    ( nPort := AMSPORT_R3_SYSSERV, nIdxGrp := SYSTEMSERVICE_FREAD, cbWriteLen := 0, pWriteBuff := 0 )             '   z                         FW_AdsRdWrt ` §џ           	   fbTrigger                 R_TRIG ` §џ              state         ` §џ                 sNetId            
   T_AmsNetId   §џ           ams net id    hFile           §џ           file handle 	   pReadBuff           §џ           buffer address for read 	   cbReadLen           §џ           count of bytes for read    bExecute            §џ           read control input    tTimeout         §џ                 bBusy            §џ              bError            §џ              nErrId           §џ              cbRead           §џ           count of bytes actually read    bEOF            §џ                       |ET     џџџџ           FB_FILERENAME        
   fbAdsRdWrt       b    ( nPort := AMSPORT_R3_SYSSERV, nIdxGrp := SYSTEMSERVICE_FRENAME, cbReadLen := 0, pReadBuff := 0 )             '                            FW_AdsRdWrt ` §џ              tmpOpenMode         ` §џ           
   sBothNames   	                    T_MaxString         ` §џ           = SIZEOF( T_MaxString ) * 2    nOldLen         ` §џ              nNewLen         ` §џ           	   fbTrigger                 R_TRIG ` §џ              state         ` §џ                 sNetId            
   T_AmsNetId   §џ           ams net id    sOldName               T_MaxString   §џ           max filename length = 255    sNewName               T_MaxString   §џ           max filename length = 255    ePath           PATH_GENERIC    
   E_OpenPath   §џ           Default: generic file path   bExecute            §џ           open control input    tTimeout         §џ                 bBusy            §џ              bError            §џ              nErrId           §џ                       |ET     џџџџ           FB_FILESEEK        
   fbAdsRdWrt       `    ( nPort := AMSPORT_R3_SYSSERV, nIdxGrp := SYSTEMSERVICE_FSEEK, cbReadLen := 0, pReadBuff := 0 )             '   |                         FW_AdsRdWrt ` §џ           
   tmpSeekPos   	                       ` §џ                 sNetId            
   T_AmsNetId   §џ           ams net id    hFile           §џ	           file handle    nSeekPos           §џ
           new seek pointer position    eOrigin       	    SEEK_SET       E_SeekOrigin   §џ              bExecute            §џ           seek control input    tTimeout         §џ                 bBusy            §џ              bError            §џ              nErrId           §џ                       |ET     џџџџ           FB_FILETELL        
   fbAdsRdWrt       b    ( nPort := AMSPORT_R3_SYSSERV, nIdxGrp := SYSTEMSERVICE_FTELL, cbWriteLen := 0, pWriteBuff := 0 )             '   }                         FW_AdsRdWrt ` §џ                 sNetId            
   T_AmsNetId   §џ           ams net id    hFile           §џ           file handle    bExecute            §џ           control input    tTimeout         §џ                 bBusy            §џ	              bError            §џ
              nErrId           §џ              nSeekPos           §џ          	On error, nSEEKPOS returns -1             |ET     џџџџ           FB_FILEWRITE        
   fbAdsRdWrt       A    ( nPort := AMSPORT_R3_SYSSERV, nIdxGrp := SYSTEMSERVICE_FWRITE )             '   {                 FW_AdsRdWrt ` §џ           	   fbTrigger                 R_TRIG ` §џ              state         ` §џ                 sNetId            
   T_AmsNetId   §џ           ams net id    hFile           §џ           file handle 
   pWriteBuff           §џ           buffer address for write 
   cbWriteLen           §џ           count of bytes for write    bExecute            §џ           write control input    tTimeout         §џ                 bBusy            §џ              bError            §џ              nErrId           §џ              cbWrite           §џ       !    count of bytes actually written             |ET     џџџџ           FB_PCWATCHDOG           bRetVal          ` §џ              iTime         ` §џ              iIdx         ` §џ              iPortArr   	                 >    16#2E, 16#2E, 16#2E, 16#2F, 16#2E, 16#2F, 16#2E, 16#2F, 16#2E	      .      .      .      /      .      /      .      /      .    ` §џ              iArrEn   	                 >    16#87, 16#87, 16#07, 16#08, 16#F6, 16#05, 16#30, 16#01, 16#AA	                              і            0            Њ    ` §џ              iArrDis   	                 >    16#87, 16#87, 16#07, 16#08, 16#F6, 16#00, 16#30, 16#00, 16#AA	                              і             0             Њ    ` §џ                 tTimeOut           §џ       ;    Watchdog TimeOut Time 1s..255s, disabled if tTimeOut < 1s    bEnable            §џ           Enable / Disable Watchdog       bEnabled            §џ       2    TRUE: Watchdog Enabled; FALSE: Watchdog Disabled    bBusy            §џ           FB still busy    bError            §џ	           FB has error     nErrId           §џ
           FB error ID               |ET      џџџџ           FB_REMOVEDIR        
   fbAdsRdWrt       `    ( nPort := AMSPORT_R3_SYSSERV, nIdxGrp := SYSTEMSERVICE_RMDIR, cbReadLen := 0, pReadBuff := 0 )             '                            FW_AdsRdWrt ` §џ                 sNetId            
   T_AmsNetId   §џ           ams net id 	   sPathName               T_MaxString   §џ           max filename length = 255    ePath           PATH_GENERIC    
   E_OpenPath   §џ       +    Default: Delete directory at generic path    bExecute            §џ       &    rising edge starts command execution    tTimeout         §џ                 bBusy            §џ
              bError            §џ              nErrId           §џ                       |ET     џџџџ           FB_SIMPLEADSLOGEVENT           fbEvent       9    ( NETID := '', PORT := AMSPORT_EVENTLOG, TMOUT:= t#15s )             
   T_AmsNetId         n          :         ADSLOGEVENT ` §џ              cfgEvent               TcEvent ` §џ              bInit         ` §џ                 SourceID           §џ              EventID           §џ           	   bSetEvent           §џ              bQuit            §џ                 ErrId           §џ	              Error            §џ
                       |ET     џџџџ        	   FILECLOSE        
   fbAdsWrite                                FW_AdsWrite    §џ                 NETID            
   T_AmsNetId   §џ           ams net id    HFILE           §џ       )    file handle obtained through 'FILEOPEN'    CLOSE            §џ           close control input    TMOUT         §џ                 BUSY            §џ	              ERR            §џ
              ERRID           §џ                       |ET     џџџџ           FILEOPEN        
   fbAdsWrite                                FW_AdsWrite    §џ           
   RisingEdge                 R_TRIG    §џ              FallingEdge                 F_TRIG    §џ                 NETID            
   T_AmsNetId   §џ           ams net id 	   FPATHNAME               T_MaxString   §џ       #    default max filename length = 255    OPENMODE           §џ           open mode flags    OPEN            §џ           open control input    TMOUT         §џ                 BUSY            §џ
              ERR            §џ              ERRID           §џ              HFILE           §џ           file handle             |ET     џџџџ           FILEREAD        	   fbAdsRead                              
   FW_AdsRead    §џ                 NETID            
   T_AmsNetId   §џ           ams net id    HFILE           §џ           file handle    BUFADDR           §џ           buffer address for read    COUNT           §џ           count of bytes for read    READ            §џ           read control input    TMOUT         §џ                 BUSY            §џ              ERR            §џ              ERRID           §џ              COUNT_R           §џ           count of bytes actually read             |ET     џџџџ           FILESEEK        
   fbAdsWrite                                FW_AdsWrite    §џ                 NETID            
   T_AmsNetId   §џ           ams net id    HFILE           §џ           file handle    SEEKPOS           §џ           new seek pointer position    SEEK            §џ           seek control input    TMOUT         §џ                 BUSY            §џ
              ERR            §џ              ERRID           §џ                       |ET     џџџџ        	   FILEWRITE        
   fbAdsWrite                                FW_AdsWrite    §џ           
   RisingEdge                 R_TRIG    §џ              FallingEdge                 F_TRIG    §џ              tmpCount            §џ                 NETID            
   T_AmsNetId   §џ           ams net id    HFILE           §џ           file handle    BUFADDR           §џ           buffer address for write    COUNT           §џ           count of bytes for write    WRITE            §џ           write control input    TMOUT         §џ                 BUSY            §џ              ERR            §џ              ERRID           §џ              COUNT_W           §џ       !    count of bytes actually written             |ET     џџџџ           FW_CALLGENERICFB           fbCall       w    ( 	sNetID := '', nPort := 16#1234,
								bExecute := FALSE, tTimeout := T#0s,
								ACCESSCNT_I := 16#0000BEC1 )     СО                 4                          FW_AdsRdWrt ` §џ                 funGrp         ` §џ       #    Function block group (identifier)    funNum         ` §џ       $    Function block number (identifier)    pWrite         ` §џ       +    Byte length of output parameter structure    cbWrite         ` §џ       *    Byte length of input parameter structure    pRead         ` §џ	           Points ot output buffer    cbRead         ` §џ
           Points to input buffer       nErrID         ` §џ           0 => no error, <> 0 => error
   cbReturned         ` §џ       ,    Number of successfully returned data bytes             |ET      џџџџ           FW_CALLGENERICFUN           fbCall       y    ( 	sNetID := '', nPort := 16#1234,
									bExecute := FALSE, tTimeout := T#0s,
									ACCESSCNT_I := 16#0000BEC2 )     ТО                 4                          FW_AdsRdWrt ` §џ           don't use it!        funGrp         ` §џ           Function group (identifier)    funNum         ` §џ       $    Function block number (identifier)    pWrite         ` §џ       +    Byte length of output parameter structure    cbWrite         ` §џ	       *    Byte length of input parameter structure    pRead         ` §џ
           Points ot output buffer    cbRead         ` §џ           Points to input buffer    pcbReturned               ` §џ       ,    Number of successfully returned data bytes       FW_CallGenericFun                                     |ET      џџџџ           GETBIT32           dwConst        ` §џ                 inVal32           §џ              bitNo           §џ                 GETBIT32                                      |ET      џџџџ           GETCPUACCOUNT           fbGetCpuAccount               FW_GetCpuAccount ` §џ                     cpuAccountDW           §џ                       |ET      џџџџ           GETCPUCOUNTER           fbGetCpuCounter                FW_GetCpuCounter ` §џ                  
   cpuCntLoDW           §џ           
   cpuCntHiDW           §џ                       |ET      џџџџ           GETCURTASKINDEX           fbGetCurTaskIndex               FW_GetCurTaskIndex ` §џ                     index           §џ           Task index [1..4]             |ET      џџџџ           GETSYSTEMTIME           fbGetSystemTime                FW_GetSystemTime ` §џ                     timeLoDW           §џ              timeHiDW           §џ                       |ET      џџџџ           GETTASKTIME           out   	                       ` §џ	           
   cbReturned         ` §џ
                     timeLoDW           §џ              timeHiDW           §џ                       |ET      џџџџ        	   LPTSIGNAL               PortAddr           §џ              PinNo           §џ              OnOff            §џ	              	   LPTSIGNAL                                      |ET      џџџџ           MEMCMP               pBuf1           §џ           First buffer    pBuf2           §џ           Second buffer    n           §џ           Number of characters       MEMCMP                                     |ET      џџџџ           MEMCPY               destAddr           §џ           New buffer    srcAddr           §џ           Buffer to copy from    n           §џ           Number of characters to copy       MEMCPY                                     |ET      џџџџ           MEMMOVE               destAddr           §џ           New buffer    srcAddr           §џ           Buffer to copy from    n           §џ           Number of characters to copy       MEMMOVE                                     |ET      џџџџ           MEMSET               destAddr           §џ           Pointer to destination    fillByte           §џ           Character to set    n           §џ           Number of characters       MEMSET                                     |ET      џџџџ           ROL32               inVal32           §џ              n           §џ                 ROL32                                     |ET      џџџџ           ROR32               inVal32           §џ              n           §џ                 ROR32                                     |ET      џџџџ           SETBIT32           dwConst        ` §џ                 inVal32           §џ              bitNo           §џ                 SETBIT32                                     |ET      џџџџ           SFCACTIONCONTROL     
      S_FF                 RS    §џ              L_TMR                    TON    §џ              D_TMR                    TON    §џ              P_TRIG                 R_TRIG    §џ              SD_TMR                    TON    §џ              SD_FF                 RS    §џ              DS_FF                 RS    §џ              DS_TMR                    TON    §џ              SL_FF                 RS    §џ              SL_TMR                    TON    §џ           
      N            §џ              R0            §џ              S0            §џ              L            §џ              D            §џ              P            §џ              SD            §џ	              DS            §џ
              SL            §џ              T           §џ                 Q            §џ                       |ET      џџџџ           SHL32               inVal32           §џ              n           §џ                 SHL32                                     |ET      џџџџ           SHR32               inVal32           §џ              n           §џ                 SHR32                                     |ET      џџџџ       c:\users\max\desktop\twincat\lib\TcBaseMath.lib @                                                                                          FW_FLOOR               lr_in                        §џ                 FW_Floor                                                  |ET     џџџџ           FW_LREALFRAC               lr_in                        §џ                 FW_LrealFrac                                                  |ET     џџџџ           FW_LREALMODP               lr_val                        §џ              lr_mod                        §џ                 FW_LrealModP                                                  |ET     џџџџ           FW_LREALTRUNC               lr_in                        §џ                 FW_LrealTrunc                                                  |ET     џџџџ    }   c:\users\max\desktop\twincat\lib\TcMath.lib @                                                                                          F_GETVERSIONTCMATH               nVersionElement           §џ                 F_GetVersionTcMath                                     |ET      џџџџ           FLOOR               lr_in                        §џ                 FLOOR                                                  |ET      џџџџ           FRAC               lr_in                        §џ                 FRAC                                                  |ET      џџџџ           LMOD               lr_Value                        §џ              lr_Arg                        §џ                 LMOD                                                  |ET      џџџџ           LTRUNC               lr_in                        §џ                 LTRUNC                                                  |ET      џџџџ           MODABS               lr_Value                        §џ              lr_Arg                        §џ                 MODABS                                                  |ET      џџџџ           MODTURNS           lr_Tmp                         §џ                 lr_Value                        §џ              lr_Arg                        §џ                 MODTURNS                                     |ET      џџџџ    |   c:\users\max\desktop\twincat\lib\TcMC2.lib @                                                                                `          _F_AXISSTATE                   _F_AxisState               MC_AxisStates                       NcToPlc                                        NCTOPLC_AXIS_REF` §џ              PlcToNc                                   PLCTONC_AXIS_REF` §џ                   |ET      џџџџ           _F_GETINDEXGROUP        
   IndexGroup         ` §џ              IndexOffset         ` §џ	              nType               _E_ParameterType ` §џ
              lrValue                      ` §џ              
   ParaNumber         ` §џ              Mode         ` §џ           read/write       _F_GetIndexGroup                   _ST_ParaStruct                             |ET      џџџџ           _F_NCCYCLECOUNTERUPDATED           pData                   _InternalAxisRefData         §џ	              NcCycleCounter            §џ
                 LastNcCycleCounter           §џ                 _F_NcCycleCounterUpdated                                Axis                AXIS_REF  §џ                   |ET      џџџџ           _F_READSTATUS           GetTaskIndex                GETCURTASKINDEX ` §џ                 ForceTaskIndexUpdate          ` §џ       `    force update of the taskindex with GETCURTASKINDEX - otherwise update only once - 20100416 KSt       _F_ReadStatus        1                                                       ST_AxisStatus                       NcToPlc                                        NCTOPLC_AXIS_REF` §џ              PlcToNc                                   PLCTONC_AXIS_REF` §џ           
   LastStatus         1                                                       ST_AxisStatus` §џ	                   |ET      џџџџ           _F_TCMC_DWORD_TO_HEXSTR           str1             ` §џ              pstr               ` §џ	              i         ` §џ
              digit         ` §џ                 in         ` §џ                 _F_TcMC_DWORD_TO_HEXSTR                                         |ET      џџџџ           _F_TCMC_ROUND           n                      ` §џ                 value                      ` §џ              digits         ` §џ                 _F_TcMC_Round                                                  |ET      џџџџ           _F_UPDATENCCYCLECOUNTER                   _F_UpdateNcCycleCounter                               Axis                AXIS_REF  §џ                   |ET      џџџџ           _FB_MOVEUNIVERSALGENERIC           iState           STATE_INITIALIZATION       _E_TcMC_STATES    §џ               sStartRequest                      !   _ST_TcNC_UnversalAxisStartRequest    §џ!              sStartResponse             "   _ST_TcNC_UnversalAxisStartResponse    §џ"              fbAdsReadWrite                          
   ADSRDWRTEX    §џ#              ContinousMode             §џ$           
   InVelocity             §џ%              DiffCycleCounter            §џ&       5    last recent PLC cycle counter difference while Busy    EmptyStartResponse             "   _ST_TcNC_UnversalAxisStartResponse ` §џ*              COUNT_R         ` §џ+              CounterCmdNoZero         ` §џ,              CounterCmdNotStarted         ` §џ-           	   DiffCmdNo         ` §џ.              NcCycleCounter         ` §џ/              LastNcCycleCounter         ` §џ0              NcMappingCounter         ` §џ1              NcCycleCounterAvailable          ` §џ2              NcCycleCounterNotAvailable          ` §џ3              NcCyclicFeedbackExpected          ` §џ4              PlcDebugCode         ` §џ5       a    additional information for debugging purposes will be added to debug messages (ActErrorMessage)    AxisIsSlave          ` §џ6              GetTaskIndex                GETCURTASKINDEX ` §џ7              CycleCounter         ` §џ8       *    last recent PLC cycle counter while Busy 	   fbTimeOut                    TON ` §џ9              fbStopMonitoringTimeOut                    TON ` §џ:              fbTimeOutMappingCounter                    TON ` §џ;              fbOnTrigger                 R_TRIG ` §џ<              sTempMsg             ` §џ=              OpMode                  _ST_TcNc_OperationModes ` §џ@                 Execute            §џ          	StartType		: 	UDINT; 	   StartType               _E_TCNC_StartPosType   §џ	       #    20110511 KSt type changed for Tc3    Position                        §џ
              Velocity                        §џ              Acceleration                        §џ              Deceleration                        §џ              Jerk                        §џ       6   	Direction			:	MC_Direction := MC_Positive_Direction;	
   BufferMode               MC_BufferMode   §џ              Options                  ST_MoveOptions   §џ              Reset            §џ           for internal use only    GotoRunState            §џ           for internal use only       Done            §џ       :    Same meaning as InVelocity for continous motion commands    Busy            §џ              Active            §џ              CommandAborted            §џ              Error            §џ              ErrorID           §џ              CmdNo           §џ              ADSbusy            §џ                 Axis                AXIS_REF  §џ              LastExecutionResult                   _ST_FunctionBlockResults  §џ                   |ET      џџџџ           _FB_PHASINGGENERIC           LastExecutionResult                  _ST_FunctionBlockResults    §џ              ADSbusy             §џ              iState           STATE_INITIALIZATION       _E_TcMC_STATES    §џ          	fbAdsReadWrite	: 	ADSRDWRTEX;
   fbAdsWrite                          ADSWRITE    §џ!           
   sNcPhasing                           _ST_TcNC_PhasingRequest    §џ"              PhasingStarted             §џ#           	   fbTrigger                 R_TRIG ` §џ'           	   fbTimeOut                    TON ` §џ(           
      Execute            §џ           B 	   StartType               _E_TcNC_StartPosType   §џ	           command type start, stop etc, 
   PhaseShift                        §џ
           B    PhasingType               E_PhasingType   §џ       1    type of phase shift value, absolute or relative    Velocity                        §џ           E    Acceleration                        §џ           E    Deceleration                        §џ           E    Jerk                        §џ           E 
   BufferMode               MC_BufferMode   §џ           E    Options               ST_PhasingOptions   §џ           V       Done            §џ           B    Busy            §џ           E    Active            §џ           E    CommandAborted            §џ           E    Error            §џ           B    ErrorID           §џ           E    PhaseShiftFeedback                        §џ           E       Master                AXIS_REF  §џ              Slave                AXIS_REF  §џ                   |ET      џџџџ        !   _FB_POSITIONCORRECTIONTABLELOOKUP           nState            §џ              dwSize            §џ              eActiveDirection           WorkDirectionNone       E_WorkDirection    §џ           	   bExecCalc             §џ           
   stElement1             #   ST_PositionCompensationTableElement    §џ           
   stElement2             #   ST_PositionCompensationTableElement    §џ            
   nLeftIndex            §џ!       #    Index starting from 0 up to (N-1)    fSetPos                         §џ"       A    position setpoint (absolute linear position or modulo position) 	   pTmpTable              #   ST_PositionCompensationTableElement         §џ$       0    helper variable: pointer to table of this type    fTmpStep                         §џ%           helper variable    fTmpA                         §џ&           helper variable    fTmpB                         §џ'           helper variable 
   fTmpDelta1                         §џ(           helper variable 
   fTmpDelta2                         §џ)           helper variable    ERRORCODE_PARAMSIZE    CK     §џ,              ERRORCODE_PARAMPOS    DK     §џ-       +   	ERRORCODE_TCNCNOTIMPL	: UDINT := 16#4B45;       Enable            §џ       )    rising edge triggers initialize routine    pTable              #   ST_PositionCompensationTableElement        §џ           pointer to table of this type 	   TableSize           §џ       +    size of data in bytes related to 'pTable'    TableParameter                %   ST_PositionCompensationTableParameter   §џ       1    position compensation table parameter structure       Compensation                        §џ              Error            §џ              ErrorID           §џ              Active            §џ                 Axis                Axis_Ref  §џ                   |ET      џџџџ           _FB_READWRITEPARAMETER           iState           STATE_INITIALIZATION       _E_TcMC_STATES ` §џ           	   fbAdsRead                          ADSREAD ` §џ           
   fbAdsWrite                          ADSWRITE ` §џ              dwValue         ` §џ              lrValue   	  
                                 ` §џ              NcBoolValue         ` §џ              bStarted          ` §џ!              stParaStruct                   _ST_ParaStruct ` §џ"              n         ` §џ#              i         ` §џ$           	   ParaLREAL        ` §џ(          	ParaBOOL		:	INT := 3;      Enable          ` §џ              ParameterNumber               MC_AxisParameter ` §џ              Mode         ` §џ	           read/write    ParameterType         ` §џ
           bool/ not  bool       Done          ` §џ              Busy          ` §џ              Error          ` §џ              ErrorID         ` §џ              ADSbusy          ` §џ                 Axis                AXIS_REF` §џ           
   ValueLreal                      ` §џ           
   ValueDword         ` §џ           	   ValueBool          ` §џ                   |ET      џџџџ           _FBAXIS_REF        	   _internal                  _InternalAxisRefData ` §џ              Storage   	                       ` §џ       $    universal storage for internal use       PlcToNc                                  PLCTONC_AXIS_REF   §џ                 NcToPlc                                       NCTOPLC_AXIS_REF  §џ              ADS                 ST_AdsAddress   §џ              Status        1                                                       ST_AxisStatus   §џ                       |ET     џџџџ           _MC_HALTPHASING           PhasingGeneric                                         _FB_PhasingGeneric    §џ                 Execute            §џ           B    Deceleration                        §џ           E    Jerk                        §џ	           E 
   BufferMode               MC_BufferMode   §џ
           E    Options               ST_PhasingOptions   §џ           V       Done            §џ           B    Busy            §џ           E    Active            §џ           E    CommandAborted            §џ           E    Error            §џ           B    ErrorID           §џ           E       Master                AXIS_REF  §џ              Slave                AXIS_REF  §џ                   |ET      џџџџ           _MC_PHASINGABSOLUTE           PhasingGeneric                                         _FB_PhasingGeneric    §џ$                 Execute            §џ           B 
   PhaseShift                        §џ           B    Velocity                        §џ           E    Acceleration                        §џ           E    Deceleration                        §џ           E    Jerk                        §џ           E 
   BufferMode               MC_BufferMode   §џ           E    Options               ST_PhasingOptions   §џ           V       Done            §џ           B    Busy            §џ           E    Active            §џ           E    CommandAborted            §џ           E    Error            §џ           B    ErrorID           §џ            E    AbsolutePhaseShift                        §џ!           E       Master                AXIS_REF  §џ              Slave                AXIS_REF  §џ                   |ET      џџџџ           _MC_PHASINGRELATIVE           PhasingGeneric                                         _FB_PhasingGeneric    §џ&                 Execute            §џ           B 
   PhaseShift                        §џ           B    Velocity                        §џ           E    Acceleration                        §џ           E    Deceleration                        §џ           E    Jerk                        §џ           E 
   BufferMode               MC_BufferMode   §џ           E    Options               ST_PhasingOptions   §џ           V       Done            §џ           B    Busy            §џ           E    Active            §џ           E    CommandAborted            §џ            E    Error            §џ!           B    ErrorID           §џ"           E    CoveredPhaseShift                        §џ#           E       Master                AXIS_REF  §џ              Slave                AXIS_REF  §џ                   |ET      џџџџ           _TCMC_ADSRDWRT        
   fbAdsRdWrt                                    FW_AdsRdWrt    §џ              NcCycleCounter            §џ              NcCycleCounterAdsEnd            §џ              UpdateCounter            §џ               NoUpdateCounter            §џ!           used for timeout detection    state            §џ"           
      NETID            
   T_AmsNetId   §џ              PORT            	   T_AmsPort   §џ              IDXGRP           §џ              IDXOFFS           §џ              WRITELEN           §џ              READLEN           §џ              SRCADDR           §џ              DESTADDR           §џ              WRTRD            §џ              TMOUT         §џ                 BUSY            §џ              ERR            §џ              ERRID           §џ              COUNT_R           §џ           count of bytes actually read       Axis                AXIS_REF  §џ                   |ET     џџџџ           _TCMC_ADSREAD        	   fbAdsRead                              
   FW_AdsRead    §џ              NcCycleCounter            §џ              NcCycleCounterAdsEnd            §џ              UpdateCounter            §џ              NoUpdateCounter            §џ           used for timeout detection    state            §џ                  NETID            
   T_AmsNetId   §џ              PORT            	   T_AmsPort   §џ              IDXGRP           §џ              IDXOFFS           §џ              LEN           §џ              DESTADDR           §џ              READ            §џ              TMOUT         §џ                 BUSY            §џ              ERR            §џ              ERRID           §џ              COUNT_R           §џ           count of bytes actually read       Axis                AXIS_REF  §џ                   |ET     џџџџ           _TCMC_ADSWRITE        
   fbAdsWrite                                FW_AdsWrite    §џ              NcCycleCounter            §џ              NcCycleCounterAdsEnd            §џ              UpdateCounter            §џ              NoUpdateCounter            §џ           used for timeout detection    state            §џ                 NETID            
   T_AmsNetId   §џ              PORT            	   T_AmsPort   §џ              IDXGRP           §џ              IDXOFFS           §џ              LEN           §џ              SRCADDR           §џ              WRITE            §џ              TMOUT         §џ                 BUSY            §џ              ERR            §џ              ERRID           §џ                 Axis                AXIS_REF  §џ                   |ET     џџџџ           _TCMCGLOBAL     	      Axis                 _ST_NCADS_Axis   §џ       A    IDXGRP and IDXOFFS constants of axis parameter/status/functions    Table                _ST_NCADS_Table   §џ       B    IDXGRP and IDXOFFS constants of table parameter/status/functions     NCPORT_TCNCCAMMING_TABLEFUNCTION    є     §џ       	    timeout    tTargetPosTimeOut    p     §џ       T    20050128 KSt - changed from 5 sec to 6 sec to be later than a NC PEH error (5 sec)    tADSTimeOut    ш     §џ              tStopMonitoringTimeOut    d      §џ       C    20111208 KSt - new for stop monitoring (axis in standstill window    NCTOPLC_FEEDBACK_MAXWAITCYCLES    
      §џ       \    maximum number of PLC cycles to wait for a cyclic feedback in NcToPlc after an ADS command    fbADSRDDEVINFO        
                ADSRDDEVINFO    §џ              DeviceVersion            §џ                  NCPORT_TCMC    є     §џ       (    20110511 type changed from INT to UINT    NCPORT_TCMC_COUPLING    є     §џ       6    used with all axis coupling commands - 12.7.2006 KSt    NCNETID_TCMC           ''    
   T_AmsNetId   §џ              NCPORT_TCMC_CAM    є     §џ       (    20110511 type changed from INT to UINT    NCNETID_TCMC_CAM           ''    
   T_AmsNetId   §џ                 NcDeviceInfoTcMainVersion           §џ              NcDeviceInfoTcSubVersion           §џ              NcDeviceInfoNcDriverVersion           §џ              NcDeviceInfoNcVersion           §џ              NcDeviceInfoNcName               §џ                       |ET     џџџџ           F_AXISCAMDATAQUEUED            
   StateDWord           §џ
                 F_AxisCamDataQueued                                      |ET      џџџџ           F_AXISCAMSCALINGPENDING            
   StateDWord           §џ                 F_AxisCamScalingPending                                      |ET      џџџџ           F_AXISCAMTABLEQUEUED            
   StateDWord           §џ
                 F_AxisCamTableQueued                                      |ET      џџџџ           F_AXISCONTROLLOOPCLOSED            
   StateDWord           §џ                 F_AxisControlLoopClosed                                      |ET      џџџџ           F_AXISEXTERNALLATCHVALID            
   StateDWord           §џ                 F_AxisExternalLatchValid                                      |ET      џџџџ           F_AXISGOTNEWTARGETPOSITION            
   StateDWord           §џ
                 F_AxisGotNewTargetPosition                                      |ET      џџџџ           F_AXISHASBEENSTOPPED            
   StateDWord           §џ                 F_AxisHasBeenStopped                                      |ET      џџџџ           F_AXISHASEXTSETPOINTGEN            
   StateDWord           §џ                 F_AxisHasExtSetPointGen                                      |ET      џџџџ           F_AXISHASJOB            
   StateDWord           §џ                 F_AxisHasJob                                      |ET      џџџџ           F_AXISINERRORSTATE            
   StateDWord           §џ                 F_AxisInErrorState                                      |ET      џџџџ           F_AXISINPOSITIONWINDOW            
   StateDWord           §џ                 F_AxisInPositionWindow                                      |ET      џџџџ           F_AXISINPROTECTEDMODE            
   StateDWord           §џ                 F_AxisInProtectedMode                                      |ET      џџџџ           F_AXISINPTPMODE            
   StateDWord           §џ
                 F_AxisInPTPmode                                      |ET      џџџџ           F_AXISIODATAISINVALID            
   StateDWord           §џ                 F_AxisIoDataIsInvalid                                      |ET      џџџџ           F_AXISISATTARGETPOSITION            
   StateDWord           §џ                 F_AxisIsAtTargetPosition                                      |ET      џџџџ           F_AXISISCALIBRATED            
   StateDWord           §џ                 F_AxisIsCalibrated                                      |ET      џџџџ           F_AXISISCALIBRATING            
   StateDWord           §џ                 F_AxisIsCalibrating                                      |ET      џџџџ           F_AXISISCOMPENSATING            
   StateDWord           §џ                 F_AxisIsCompensating                                      |ET      џџџџ           F_AXISISCOUPLED               nCoupleState           §џ                 F_AxisIsCoupled                                      |ET      џџџџ           F_AXISISMOVING            
   StateDWord           §џ                 F_AxisIsMoving                                      |ET      џџџџ           F_AXISISMOVINGBACKWARDS            
   StateDWord           §џ                 F_AxisIsMovingBackwards                                      |ET      џџџџ           F_AXISISMOVINGENDLESS            
   StateDWord           §џ                 F_AxisIsMovingEndless                                      |ET      џџџџ           F_AXISISMOVINGFORWARD            
   StateDWord           §џ                 F_AxisIsMovingForward                                      |ET      џџџџ           F_AXISISNOTMOVING            
   StateDWord           §џ                 F_AxisIsNotMoving                                      |ET      џџџџ           F_AXISISREADY            
   StateDWord           §џ                 F_AxisIsReady                                      |ET      џџџџ           F_AXISJOBPENDING            
   StateDWord           §џ
                 F_AxisJobPending                                      |ET      џџџџ           F_AXISMOTIONCOMMANDSLOCKED            
   StateDWord           §џ                 F_AxisMotionCommandsLocked                                      |ET      џџџџ           F_AXISPHASINGACTIVE            
   StateDWord           §џ                 F_AxisPhasingActive                                      |ET      џџџџ           F_AXISREACHEDCONSTANTVELOCITY            
   StateDWord           §џ                 F_AxisReachedConstantVelocity                                      |ET      џџџџ           F_GETVERSION_TCMC2               nVersionElement           §џ                 F_GetVersion_TcMC2                                     |ET      џџџџ           MC_ABORTSUPERPOSITION           LastExecutionResult                  _ST_FunctionBlockResults    §џ              ADSbusy             §џ              fbOnTrigger                 R_TRIG    §џ           
   fbADSwrite                          ADSWRITE    §џ              iState           STATE_INITIALIZATION       _E_TcMC_STATES    §џ                 Execute            §џ           Starts touch probe recording       Done            §џ           move completed    Busy            §џ       "    function block is currently Busy    Error            §џ       6    Signals that error has occured within Function Block    ErrorID           §џ	           Error identification       Axis                AXIS_REF  §џ       f    Identifies the axis of which the position should be recorded at a defined event at the trigger input         |ET      џџџџ           MC_ABORTTRIGGER           ADSbusy             §џ           
   fbADSwrite                          ADSWRITE    §џ              OLDADSINTERFACE         ` §џ       A    temporary flag to test old and new NC ADS touch probe interface    LatchID         ` §џ              fbOnTrigger                 R_TRIG ` §џ                 Execute            §џ
           B       Done            §џ           B    Busy            §џ           E    Error            §џ           B    ErrorID           §џ           E       Axis                AXIS_REF  §џ           B    TriggerInput                       TRIGGER_REF  §џ           E         |ET      џџџџ           MC_ABORTTRIGGER_V2_00           ADSbusy             §џ           
   fbADSwrite                          ADSWRITE    §џ              LatchID         ` §џ              fbOnTrigger                 R_TRIG ` §џ              stTouchProbeDeactivation                 _ST_TcNc_TouchProbeDeactivation ` §џ                 Execute            §џ
           B       Done            §џ           B    Busy            §џ           E    Error            §џ           B    ErrorID           §џ           E       Axis                AXIS_REF  §џ           B    TriggerInput                       TRIGGER_REF  §џ           E         |ET      џџџџ           MC_BACKLASHCOMPENSATION           InternalEnable             §џ&            trick for internal FB handling    state            §џ'              GetThisTaskIndex                GETCURTASKINDEX    §џ(           	   CycleTime                         §џ)           task cycle time [s]    fbCalcBacklashCorrection                                    !   _FB_PositionCorrectionTableLookup    §џ*       4    based on old 'FB_PositionCompensation' in TcNc.lib    fbFeedBacklashCorrection                                    MC_PositionCorrectionLimiter    §џ+       N    s.TcMC2.lib (original based on old 'FB_WritePositionCorrection' in TcNc.lib)    CalcBacklashCorrOut                    ST_McOutputs    §џ,              FeedBacklashCorrOut                    ST_McOutputs    §џ-              ReadParameter                              MC_ReadParameter    §џ.           	   iBacklash                         §џ/              InternalAcceleration                         §џ0       E    input of FB 'MC_PositionCorrectionLimiter': 'Acceleration' [mm/s^2]    InternalBacklashValue                         §џ1       M    output of FB 'MC_PositionCorrectionLimiter': 'PositionCorrectionValue' [mm]    InternalLimitingActive             §џ2       ?    output of FB 'MC_PositionCorrectionLimiter': 'Limiting' [0/1]    stPosCompParameter       w   
								( MinPosition := -1.0E+12, MaxPosition :=1.0E+12, NoOfTableElements :=2, Direction := WorkDirectionNegative )       ЂmТ   -1.0E+12    ЂmB   1.0E+12            WorkDirectionBoth       E_WorkDirection         %   ST_PositionCompensationTableParameter    §џ4              stPosCompTable   	                   #   ST_PositionCompensationTableElement   o   
								( Position := -1.0E+12,	Compensation := 0.0 ),
								( Position := +1.0E+12,	Compensation := 0.0 )                 ЂmТ   -1.0E+12            0.0              ЂmB   1.0E+12            0.0    §џ7                 Enable            §џ       *    switch to activate backlash compensation    Backlash    3tЌ<{Ќ   1.0E3073tЌ<{Ќ   §џ       ~    signed backlash value [mm] (when using default value the internal nc backlash value will be read by ADS and used in this FB)    CompensationInPositiveDirection            §џ       @    compensation is just working in the selected working direction    Ramp                        §џ           velocity limit for feeded backlash compensation (constant velocity and linear position sub profile for backlash compensation) [mm/s] (default:=0.0)    DisableMode               E_DisableMode   §џ       S    disable mode defines whow to react in case of disabling: (0)=HOLD, (1)=RESET, ...    Options               ST_BacklashCompensationOptions   §џ       $    optional parameters (NOT USED YET)       Enabled            §џ              Busy            §џ              Error            §џ               ErrorID           §џ!              CurrentBacklash                        §џ"       $    current actual backlash value [mm]    Limiting            §џ#       >    function block is currently limiting the Backlash Correction       Axis                Axis_Ref  §џ                   |ET     џџџџ           MC_EXTSETPOINTGENDISABLE           LastExecutionResult                  _ST_FunctionBlockResults    §џ              iState           STATE_INITIALIZATION       _E_TcMC_STATES    §џ              ADSbusy             §џ           
   fbADSwrite                          ADSWRITE    §џ              fbOnTrigger                 R_TRIG ` §џ              TimerStateFeedback                    TON ` §џ                 Execute            §џ                 Done            §џ	              Busy            §џ
              Error            §џ              ErrorID           §џ              Enabled            §џ                 Axis                AXIS_REF  §џ                   |ET      џџџџ           MC_EXTSETPOINTGENENABLE           LastExecutionResult                  _ST_FunctionBlockResults    §џ              iState           STATE_INITIALIZATION       _E_TcMC_STATES    §џ              ADSbusy             §џ              sExtSetPointGen                _ST_TcNC_SetPos    §џ           
   fbADSwrite                          ADSWRITE    §џ              fbOnTrigger                 R_TRIG ` §џ              TimerStateFeedback                    TON ` §џ                 Execute            §џ              Position                        §џ              PositionType               E_PositionType   §џ                 Done            §џ              Busy            §џ              Error            §џ              ErrorID           §џ              Enabled            §џ                 Axis                AXIS_REF  §џ                   |ET      џџџџ           MC_EXTSETPOINTGENFEED           GetTaskIndex                GETCURTASKINDEX    §џ                 Position                        §џ              Velocity                        §џ              Acceleration                        §џ           	   Direction           §џ	                 MC_ExtSetPointGenFeed                                Axis                AXIS_REF  §џ                   |ET      џџџџ        	   MC_GEARIN           LastExecutionResult                  _ST_FunctionBlockResults    §џ              ADSbusy             §џ              iState           STATE_INITIALIZATION       _E_TcMC_STATES    §џ           
   fbAdsWrite                          ADSWRITE    §џ              sCouple                      _ST_TcNC_CoupleSlave    §џ               fbOptGearInDyn                                         MC_GearInDyn    §џ!              fbOnTrigger                 R_TRIG ` §џ%              TimerStateFeedback                    TON ` §џ&                 Execute            §џ           B    RatioNumerator          №?   1      №?   §џ
       %    changed from INT (PLCopen) to LREAL    RatioDenominator          §џ           	MasterValueSource :	MC_SOURCE;    Acceleration                        §џ           E    Deceleration                        §џ           E    Jerk                        §џ           E 
   BufferMode               MC_BufferMode   §џ           E    Options               ST_GearInOptions   §џ           V       InGear            §џ           B    Busy            §џ           E    Active            §џ           E    CommandAborted            §џ           E    Error            §џ           B    ErrorID           §џ           E       Master                AXIS_REF  §џ           B    Slave                AXIS_REF  §џ           B         |ET      џџџџ           MC_GEARINDYN           LastExecutionResult                  _ST_FunctionBlockResults    §џ              ADSbusy             §џ               iState           STATE_INITIALIZATION       _E_TcMC_STATES    §џ!           	   iSubState            §џ"           
   fbAdsWrite                          ADSWRITE    §џ#           	   fbAdsRead                          ADSREAD    §џ$              sCouple                      _ST_TcNC_CoupleSlave    §џ%              v_max                         §џ&              pa_limit                         §џ'           	   WasInGear             §џ(              iAcceleration                      ` §џ,              TimerStateFeedback                    TON ` §џ-                 Enable            §џ           	   GearRatio          №?   1.0      №?   §џ              Acceleration                        §џ              Deceleration                        §џ       
    not used    Jerk                        §џ       
    not used 
   BufferMode               MC_BufferMode   §џ           E    Options               ST_GearInDynOptions   §џ           V       InGear            §џ              Busy            §џ              Active            §џ              CommandAborted            §џ              Error            §џ              ErrorID           §џ                 Master                AXIS_REF  §џ
              Slave                AXIS_REF  §џ                   |ET      џџџџ           MC_GEARINMULTIMASTER           ADSbusy             §џ%              iState           STATE_INITIALIZATION       _E_TcMC_STATES    §џ&           
   fbAdsWrite                          ADSWRITE    §џ'              sCouple                           _ST_TcNC_CoupleSlaveMultiMaster    §џ(           	   sCoupleV2                                  _ST_TcNC_CoupleSlaveMultiMaster2    §џ)              LastExecutionResult                  _ST_FunctionBlockResults    §џ*           	   IsCoupled             §џ+              TimerStateFeedback                    TON ` §џ/              iAdvancedSlaveDynamics          ` §џ0              iAcceleration                      ` §џ1              iDeceleration                      ` §џ2           just used in version 2 mode    iJerk                      ` §џ3           just used in version 2 mode 	   WasInGear          ` §џ4              ParameterChanged          ` §џ5           
      Enable            §џ           
   GearRatio1          №?   1.0      №?   §џ           
   GearRatio2          №?   1.0      №?   §џ           
   GearRatio3          №?   1.0      №?   §џ           
   GearRatio4          №?   1.0      №?   §џ              Acceleration                        §џ              Deceleration                        §џ       5    just used in version 2 mode (AdvancedSlaveDynamics)    Jerk                        §џ       5    just used in version 2 mode (AdvancedSlaveDynamics) 
   BufferMode               MC_BufferMode   §џ           E    Options                ST_GearInMultiMasterOptions   §џ           V       InGear            §џ              Busy            §џ              Active            §џ              CommandAborted            §џ               Error            §џ!              ErrorID           §џ"                 Master1                AXIS_REF  §џ
              Master2                AXIS_REF  §џ              Master3                AXIS_REF  §џ              Master4                AXIS_REF  §џ              Slave                AXIS_REF  §џ                   |ET      џџџџ        
   MC_GEAROUT           LastExecutionResult                  _ST_FunctionBlockResults    §џ              ADSbusy             §џ              iState           STATE_INITIALIZATION       _E_TcMC_STATES    §џ           
   fbAdsWrite                          ADSWRITE    §џ              fbOnTrigger                 R_TRIG ` §џ              TimerStateFeedback                    TON ` §џ                 Execute            §џ           B    Options               ST_GearOutOptions   §џ           V       Done            §џ           B    Busy            §џ           E    Error            §џ           B    ErrorID           §џ           E       Slave                AXIS_REF  §џ	           B         |ET      џџџџ           MC_HALT           LastExecutionResult                  _ST_FunctionBlockResults    §џ$              ADSbusy             §џ%              MoveGeneric        1                                                       _FB_MoveUniversalGeneric    §џ&              CmdNo            §џ'                 Execute            §џ           B    Deceleration                        §џ           E    Jerk                        §џ           E 
   BufferMode               MC_BufferMode   §џ           E    Options                  ST_MoveOptions   §џ           V       Done            §џ           B    Busy            §џ           E    Active            §џ           E    CommandAborted            §џ           E    Error            §џ            B    ErrorID           §џ!           E       Axis                AXIS_REF  §џ           B         |ET      џџџџ           MC_HOME           LastExecutionResult                  _ST_FunctionBlockResults    §џ              ADSbusy             §џ              iState           STATE_INITIALIZATION       _E_TcMC_STATES    §џ            	   iSubState            §џ!              fbAdsWriteCmd                          ADSWRITE    §џ"              fbAdsWriteRefPos                          ADSWRITE    §џ#              fbAdsReadRefPos                          ADSREAD    §џ$              ReferenceFlagValue            §џ%              fbSetPosition                            MC_SetPosition    §џ&              NcHomePosition                         §џ'           	   fbTrigger                 R_TRIG ` §џ+           	   fbTimeOut                    TON ` §џ,                 Execute            §џ           B    Position    3tЌ<{Ќ   1.0E3073tЌ<{Ќ   §џ           
   HomingMode               MC_HomingMode   §џ           V 
   BufferMode               MC_BufferMode   §џ           E    Options               ST_HomingOptions   §џ           V    bCalibrationCam            §џ           V       Done            §џ           B    Busy            §џ           E    Active            §џ           E    CommandAborted            §џ           E    Error            §џ           B    ErrorID           §џ           E       Axis                AXIS_REF  §џ           B         |ET     џџџџ           MC_JOG           state            §џ              LastExecutionResult                  _ST_FunctionBlockResults    §џ           
   StateDWord             §џ              ExecuteMoveVelocity          ` §џ               MoveVelocity                                 MC_MoveVelocity ` §џ!              MoveVelocityOut                    ST_McOutputs ` §џ"           	   Direction               MC_Direction ` §џ#              ExecuteHalt          ` §џ%              Halt                              MC_Halt ` §џ&              HaltOut                    ST_McOutputs ` §џ'              ExecuteMoveAbsolute          ` §џ)              MoveAbsolute                                 MC_MoveAbsolute ` §џ*              MoveAbsoluteOut                    ST_McOutputs ` §џ+              ExecuteMoveRelative          ` §џ-              MoveRelative                                 MC_MoveRelative ` §џ.              MoveRelativeOut                    ST_McOutputs ` §џ/              JogMove        1                                                       _FB_MoveUniversalGeneric ` §џ1              LastJogMoveResult                  _ST_FunctionBlockResults ` §џ2              ExecuteJogMove          ` §џ3           	   StartType               _E_TCNC_StartPosType ` §џ4           
   JogMoveOut                    ST_McOutputs ` §џ5              JogEnd          ` §џ7              TargetPosition                      ` §џ8              modulo                      ` §џ9              
   JogForward            §џ              JogBackwards            §џ              Mode            	   E_JogMode   §џ	              Position                        §џ
              Velocity                        §џ              Acceleration                        §џ              Deceleration                        §џ              Jerk                        §џ          	BufferMode		:	MC_BufferMode;      Done            §џ              Busy            §џ              Active            §џ              CommandAborted            §џ              Error            §џ              ErrorID           §џ                 Axis                AXIS_REF  §џ                   |ET      џџџџ           MC_MOVEABSOLUTE           LastExecutionResult                  _ST_FunctionBlockResults    §џ              ADSbusy             §џ              MoveGeneric        1                                                       _FB_MoveUniversalGeneric    §џ              CmdNo            §џ                 Execute            §џ           B    Position                        §џ	           B    Velocity                        §џ
           E    Acceleration                        §џ           E    Deceleration                        §џ           E    Jerk                        §џ           E 
   BufferMode               MC_BufferMode   §џ           E    Options                  ST_MoveOptions   §џ           V       Done            §џ           B    Busy            §џ           E    Active            §џ           E    CommandAborted            §џ           E    Error            §џ           B    ErrorID           §џ           E       Axis                AXIS_REF  §џ           B         |ET      џџџџ           MC_MOVEADDITIVE           LastExecutionResult                  _ST_FunctionBlockResults    §џ%              ADSbusy             §џ&              MoveGeneric        1                                                       _FB_MoveUniversalGeneric    §џ'              CmdNo            §џ(                 Execute            §џ           B    Distance                        §џ           B    Velocity                        §џ           E    Acceleration                        §џ           E    Deceleration                        §џ           E    Jerk                        §џ           E 
   BufferMode               MC_BufferMode   §џ           E    Options                  ST_MoveOptions   §џ           V       Done            §џ           B    Busy            §џ           E    Active            §џ           E    CommandAborted            §џ            E    Error            §џ!           B    ErrorID           §џ"           E       Axis                AXIS_REF  §џ           B         |ET      џџџџ           MC_MOVECONTINUOUSABSOLUTE           LastExecutionResult                  _ST_FunctionBlockResults    §џ+              ADSbusy             §џ,              MoveGeneric        1                                                       _FB_MoveUniversalGeneric    §џ-              CmdNo            §џ.           	      Execute            §џ           B    Position                        §џ           B    Velocity                        §џ           B    EndVelocity                        §џ           B    Acceleration                        §џ           E    Deceleration                        §џ           E    Jerk                        §џ           E 
   BufferMode               MC_BufferMode   §џ           E    Options                  ST_MoveOptions   §џ                  InEndVelocity            §џ#           B    Busy            §џ$           E    Active            §џ%           E    CommandAborted            §џ&           E    Error            §џ'           B    ErrorID           §џ(           E       Axis                AXIS_REF  §џ           B         |ET      џџџџ           MC_MOVECONTINUOUSRELATIVE           LastExecutionResult                  _ST_FunctionBlockResults    §џ*              ADSbusy             §џ+              MoveGeneric        1                                                       _FB_MoveUniversalGeneric    §џ,              CmdNo            §џ-           	      Execute            §џ           B    Distance                        §џ           B    Velocity                        §џ           B    EndVelocity                        §џ           B    Acceleration                        §џ           E    Deceleration                        §џ           E    Jerk                        §џ           E 
   BufferMode               MC_BufferMode   §џ           E    Options                  ST_MoveOptions   §џ                 InEndVelocity            §џ"           B    Busy            §џ#           E    Active            §џ$           E    CommandAborted            §џ%           E    Error            §џ&           B    ErrorID           §џ'           E       Axis                AXIS_REF  §џ           B         |ET      џџџџ           MC_MOVEMODULO           LastExecutionResult                  _ST_FunctionBlockResults    §џ              ADSbusy             §џ              MoveGeneric        1                                                       _FB_MoveUniversalGeneric    §џ          	StartType: UDINT;	   StartType               _E_TcNC_StartPosType    §џ       #    20110511 KSt type changed for TC3    CmdNo            §џ              TriggerExecute                 R_TRIG ` §џ#           	      Execute            §џ              Position                        §џ              Velocity                        §џ	              Acceleration                        §џ
              Deceleration                        §џ              Jerk                        §џ           	   Direction               MC_Direction   §џ           E 
   BufferMode               MC_BufferMode   §џ           E    Options                  ST_MoveOptions   §џ                 Done            §џ           B    Busy            §џ           E    Active            §џ           E    CommandAborted            §џ           E    Error            §џ           B    ErrorID           §џ           E       Axis                AXIS_REF  §џ                   |ET      џџџџ           MC_MOVERELATIVE           LastExecutionResult                  _ST_FunctionBlockResults    §џ              ADSbusy             §џ              MoveGeneric        1                                                       _FB_MoveUniversalGeneric    §џ              CmdNo            §џ                 Execute            §џ	           B    Distance                        §џ           B    Velocity                        §џ           E    Acceleration                        §џ           E    Deceleration                        §џ           E    Jerk                        §џ           E 
   BufferMode               MC_BufferMode   §џ           E    Options                  ST_MoveOptions   §џ           V       Done            §џ           B    Busy            §џ           E    Active            §џ           E    CommandAborted            §џ           E    Error            §џ           B    ErrorID           §џ           E       Axis                AXIS_REF  §џ           B         |ET      џџџџ           MC_MOVESUPERIMPOSED     
      LastExecutionResult                  _ST_FunctionBlockResults    §џ1              ADSbusy             §џ2              CompensationStarted             §џ3              AxisHasJobAtStartOfCompensation             §џ4       ,    HasJob flag when starting the compensation !   AxisIsMovingAtStartOfCompensation             §џ5       ,    Moving flag when starting the compensation    iState           STATE_INITIALIZATION       _E_TcMC_STATES    §џ6              fbAdsReadWrite                          
   ADSRDWRTEX    §џ7              sNcCompensation                      _ST_TcNC_Compensation2    §џ8           	   fbTrigger                 R_TRIG ` §џ<           	   fbTimeOut                    TON ` §џ=           
      Execute            §џ           B    Mode               E_SuperpositionMode   §џ           V    Distance                        §џ           B    VelocityDiff                        §џ           E    Acceleration                        §џ           E    Deceleration                        §џ           E    Jerk                        §џ           E    VelocityProcess                        §џ           V    Length                        §џ           V    Options               ST_SuperpositionOptions   §џ           V       Done            §џ!           B    Busy            §џ"           E    Active            §џ#           E    CommandAborted            §џ$           E    Error            §џ%           B    ErrorID           §џ&           E    Warning            §џ(           V 	   WarningId           §џ)           V    ActualVelocityDiff                        §џ*           V    ActualDistance                        §џ+           V    ActualLength                        §џ,           V    ActualAcceleration                        §џ-           V    ActualDeceleration                        §џ.           V       Axis                AXIS_REF  §џ           B         |ET      џџџџ           MC_MOVEVELOCITY           LastExecutionResult                  _ST_FunctionBlockResults    §џ              ADSbusy             §џ              MoveGeneric        1                                                       _FB_MoveUniversalGeneric    §џ              CmdNo            §џ                 Execute            §џ           B    Velocity                        §џ	           E    Acceleration                        §џ
           E    Deceleration                        §џ           E    Jerk                        §џ           E 	   Direction           MC_Positive_Direction       MC_Direction   §џ           E 
   BufferMode               MC_BufferMode   §џ           E    Options                  ST_MoveOptions   §џ           V    
   InVelocity            §џ           B    Busy            §џ           E    Active            §џ           E    CommandAborted            §џ           E    Error            §џ           B    ErrorID           §џ           E       Axis                AXIS_REF  §џ           B         |ET      џџџџ           MC_OVERRIDEFILTER           bFirstCycle            §џ              bThresholdActive            §џ              InternalOverrideValueRaw            §џ              LastOverrideValueRaw    џџ      §џ              OverrideRange            §џ              fbTimer                    TON ` §џ                 OverrideValueRaw           §џ           parameter    LowerOverrideThreshold           §џ           0...32767 digits    UpperOverrideThreshold    џ     §џ           0...32767 digits    OverrideSteps    Ш      §џ           200 steps => 0.5 percent    OverrideRecoveryTime          §џ	           150 ms       OverrideValueFiltered           §џ           0...1000000 counts    OverridePercentFiltered                        §џ           0...100 %    Error            §џ              ErrorID           §џ                       |ET      џџџџ           MC_POSITIONCORRECTIONLIMITER           GetThisTaskIndex                GETCURTASKINDEX    §џ(           	   CycleTime                         §џ)              MaxDeltaVelocity                         §џ*              MaxDeltaPosition                         §џ+              DeltaCorrection                         §џ,              InitialDeltaCorrection                         §џ-              EndOfEnablePhase             §џ.              iCorrectionMode               E_AxisPositionCorrectionMode    §џ/              state            §џ0              NumberOfCycles            §џ1              DeltaCorrectionPerCycle                         §џ2              LastPositionCorrectionValue                         §џ3                 Enable            §џ              PositionCorrectionValue                        §џ              CorrectionMode               E_AxisPositionCorrectionMode   §џ              Acceleration                        §џ              CorrectionLength                        §џ       8    optional length - comparable to 'superposition length'       Busy            §џ"              Error            §џ#              ErrorID           §џ$              Limiting            §џ%       >    function block is currently limiting the Position Correction       Axis                AXIS_REF  §џ                   |ET      џџџџ           MC_POWER           EnableTimeout                    TON ` §џ              EnableOffOnDelay                   TP ` §џ          	iOverride: DINT;	   iOverride         ` §џ        $    20110511 KSt type adaption for TC3       Enable            §џ           B    Enable_Positive            §џ           E    Enable_Negative            §џ           E    Override          Y@   100.0      Y@   §џ       )    in percent - Beckhoff proprietary input 
   BufferMode               MC_BufferMode   §џ           V       Status            §џ           B    Busy            §џ           V    Active            §џ           V    Error            §џ           B    ErrorID           §џ           E       Axis                AXIS_REF  §џ
           B         |ET      џџџџ           MC_POWERSTEPPER     $      fbPower                            MC_Power    §џ           	   ErrorCode            §џ              fbWriteErrCode                          ADSWRITE    §џ           	   nRefState            §џ              fbWriteNonRef                          ADSWRITE    §џ              fbReadParams                          ADSREAD    §џ              fbWriteInstOvr                          ADSWRITE    §џ              bAdsInitDone             §џ           	   bOverTemp             §џ           
   rtOverTemp                 R_TRIG    §џ               bUnderVoltage             §џ!              rtUnderVoltage                 R_TRIG    §џ"           
   bOpenLoopA             §џ#              rtOpenLoopA                 R_TRIG    §џ$           
   bOpenLoopB             §џ%              rtOpenLoopB                 R_TRIG    §џ&              bOverCurrentA             §џ'              rtOverCurrentA                 R_TRIG    §џ(              bOverCurrentB             §џ)              rtOverCurrentB                 R_TRIG    §џ*              rtStallError                 R_TRIG    §џ+           	   bOldState             §џ,              bLagFilterInit             §џ.              tonLagFilter                    TON    §џ/              tonNoLagFilter                    TON    §џ0              wState2            §џ2              nAngle            §џ3           	   nOldAngle            §џ4           	   AngleDiff            §џ5              bInErrorState             §џ6           	   nParamIdx            §џ8              bParamEnabled             §џ9           	   fLagLimit                         §џ:           
   fLagFilter                         §џ;              nTries            §џ<              tTimeOut                    TON    §џ=                 Enable            §џ              Enable_Positive            §џ              Enable_Negative            §џ              Override          Y@   100.0      Y@   §џ	           in percent    DestallParams                    ST_PowerStepperStruct   §џ
           	   KL_Status           §џ           
   KL_Status2           §џ                 Status            §џ              Error            §џ              ErrorID           §џ              Stalled            §џ           
   StallError            §џ                 Axis                AXIS_REF  §џ                   |ET      џџџџ           MC_READACTUALPOSITION               Enable            §џ           B       Valid            §џ
           B    Busy            §џ           E    Error            §џ           B    ErrorID           §џ           E    Position                        §џ           B       Axis                AXIS_REF  §џ           B         |ET      џџџџ           MC_READACTUALVELOCITY               Enable            §џ           B       Valid            §џ           B    Busy            §џ           E    Error            §џ           B    ErrorID           §џ           E    ActualVelocity                        §џ           B       Axis                AXIS_REF  §џ           B         |ET      џџџџ           MC_READAPPLICATIONREQUEST           TriggerExecute                 R_TRIG    §џ              state           STATE_INITIALIZATION       _E_TcMC_STATES    §џ           	   fbAdsRead                          ADSREAD    §џ                 Execute            §џ                 Done            §џ              Busy            §џ              Error            §џ              ErrorID           §џ              Request            §џ           application request bit [0/1]    RequestType           §џ           application request TYPE/ID       ApplicationRequest                    ST_NcApplicationRequest  §џ              Axis                AXIS_REF  §џ                   |ET      џџџџ           MC_READAXISCOMPONENTS           TriggerExecute                 R_TRIG    §џ              state           STATE_INITIALIZATION       _E_TcMC_STATES    §џ           	   fbAdsRead                          ADSREAD    §џ                 Execute            §џ                 Done            §џ
              Busy            §џ              Error            §џ              ErrorID           §џ                 AxisComponents                  ST_AxisComponents  §џ              Axis                AXIS_REF  §џ                   |ET      џџџџ           MC_READAXISERROR               Enable            §џ
           B       Valid            §џ           B    Busy            §џ           E    Error            §џ           B    ErrorID           §џ           B    AxisErrorID           §џ           B       Axis                AXIS_REF  §џ           B         |ET      џџџџ           MC_READBOOLPARAMETER           ADSbusy             §џ              fbReadWriteParameter                                      _FB_ReadWriteParameter    §џ           	   nParatype               _E_ParameterType ` §џ              dwValue         ` §џ              lrValue                      ` §џ              bStarted          ` §џ           	   fbTrigger                 R_TRIG ` §џ                 Enable            §џ           B    ParameterNumber           §џ           B    ReadMode           ReadMode_Once    
   E_ReadMode   §џ	           Beckhoff proprietary input       Valid            §џ           B    Busy            §џ           E    Error            §џ           B    ErrorID           §џ           E    Value            §џ           B       Axis                AXIS_REF  §џ           B         |ET      џџџџ           MC_READDRIVEADDRESS           state           STATE_INITIALIZATION       _E_TcMC_STATES    §џ              TriggerExecute                 R_TRIG    §џ           	   fbAdsRead                          ADSREAD    §џ           
   readBuffer   	  ?                        §џ       H    2013-04-03 KSt - new data structure - size changed from 10 to 64 bytes    i         ` §џ              pDword               ` §џ                 Execute            §џ                 Done            §џ
              Busy            §џ              Error            §џ              ErrorID           §џ              DriveAddress                          ST_DriveAddress   §џ                 Axis                AXIS_REF  §џ           B         |ET      џџџџ           MC_READPARAMETER           ADSbusy             §џ              fbReadWriteParameter                                      _FB_ReadWriteParameter    §џ           	   nParatype               _E_ParameterType ` §џ              dwValue         ` §џ              bValue          ` §џ              bStarted          ` §џ           	   fbTrigger                 R_TRIG ` §џ                 Enable            §џ           B    ParameterNumber           §џ           B    ReadMode           ReadMode_Once    
   E_ReadMode   §џ	           Beckhoff proprietary input       Valid            §џ           B    Busy            §џ           E    Error            §џ           B    ErrorID           §џ           E    Value                        §џ           B       Axis                AXIS_REF  §џ           B         |ET      џџџџ           MC_READPARAMETERSET           TriggerExecute                 R_TRIG    §џ              state           STATE_INITIALIZATION       _E_TcMC_STATES    §џ           	   fbAdsRead                          ADSREAD    §џ              SizeofPayloadData            §џ                 Execute            §џ                 Done            §џ              Busy            §џ              Error            §џ              ErrorID           §џ              	   Parameter         E                                                                           ST_AxisParameterSet  §џ              Axis                AXIS_REF  §џ                   |ET      џџџџ           MC_READSTATUS               Enable            §џ           B       Valid            §џ
           B    Busy            §џ           E    Error            §џ           B    ErrorID           §џ           E 	   ErrorStop            §џ           B    Disabled            §џ           B    Stopping            §џ           B 
   StandStill            §џ           B    DiscreteMotion            §џ           B    ContinuousMotion            §џ           B    SynchronizedMotion            §џ           E    Homing            §џ           E    ConstantVelocity            §џ           V    Accelerating            §џ           V    Decelerating            §џ           V    Status        1                                                       ST_AxisStatus   §џ           V       Axis                AXIS_REF  §џ           B         |ET      џџџџ           MC_READSTOPINFO           TriggerExecute                 R_TRIG    §џ              state           STATE_INITIALIZATION       _E_TcMC_STATES    §џ              stStopInfoRequest                _ST_TcNC_StopInfoRequest    §џ              stStopInfoResponse                _ST_TcNC_StopInfoResponse    §џ              fbAdsReadWrite                            ADSRDWRT    §џ                 Execute            §џ           B    Deceleration                        §џ           E    Jerk                        §џ           E       Done            §џ           B    Busy            §џ           E    Error            §џ           B    ErrorID           §џ           E    StopDistance                        §џ       $    distance required to stop the axis    StopTime                        §џ            time required to stop the axis       Axis                AXIS_REF  §џ           B         |ET      џџџџ           MC_RESET           ADSbusy             §џ              iState           STATE_INITIALIZATION       _E_TcMC_STATES    §џ              LastExecutionResult                  _ST_FunctionBlockResults    §џ           
   fbAdsWrite                                _TcMC_ADSWRITE ` §џ           2010-05-31 KSt    fbOnTrigger                 R_TRIG ` §џ                 Execute            §џ           B       Done            §џ           B    Busy            §џ           E    Error            §џ           B    ErrorID           §џ           B       Axis                AXIS_REF  §џ           B         |ET      џџџџ           MC_SETENCODERSCALINGFACTOR           ADSbusy             §џ              stSetEncoderSaclingFactor                  _ST_TcNC_SetEncoderSaclingFactor    §џ               iState           STATE_INITIALIZATION       _E_TcMC_STATES    §џ!           
   fbAdsWrite                          ADSWRITE    §џ"              fbOnTrigger                 R_TRIG ` §џ&                 Execute            §џ	           B    ScalingFactor                        §џ
           B    Mode               E_SetScalingFactorMode   §џ           E    Options                ST_SetEncoderScalingOptions   §џ           V       Done            §џ           B    Busy            §џ           E    Error            §џ           B    ErrorID           §џ           E       Axis                AXIS_REF  §џ           B         |ET      џџџџ           MC_SETOVERRIDE               Enable            §џ           B 	   VelFactor          №?   1.0      №?   §џ           1.0 = 100% 	   AccFactor          №?   1.0      №?   §џ           1.0 = 100% 
   JerkFactor          №?   1.0      №?   §џ           1.0 = 100%       Enabled            §џ           B    Busy            §џ           E    Error            §џ           B    ErrorID           §џ           E       Axis                AXIS_REF  §џ                   |ET      џџџџ           MC_SETPOSITION           ADSbusy             §џ)              stSetPos                   _ST_TcNC_SetPosOnTheFly    §џ*              iState           STATE_INITIALIZATION       _E_TcMC_STATES    §џ+           
   fbAdsWrite                          ADSWRITE    §џ,              fbOnTrigger                 R_TRIG ` §џ0                 Execute            §џ           B    Position                        §џ           B    Mode            §џ           E    Options                 ST_SetPositionOptions   §џ           V       Done            §џ           B    Busy            §џ           E    Error            §џ           B    ErrorID           §џ           E       Axis                AXIS_REF  §џ           B         |ET      џџџџ           MC_STOP     
      LastExecutionResult                  _ST_FunctionBlockResults    §џ              ADSbusy             §џ               MoveGeneric        1                                                       _FB_MoveUniversalGeneric    §џ!              ReleaseLock                          ADSWRITE    §џ"              CmdNo            §џ#              AxisMotionCommandsLocked             §џ$              iState           STATE_INITIALIZATION       _E_TcMC_STATES    §џ%           
   NoJobTimer                    TON    §џ&              fbOnTrigger                 R_TRIG ` §џ*              CounterMotionCommandsLocked         ` §џ+                 Execute            §џ           B    Deceleration                        §џ           E    Jerk                        §џ           E    Options                  ST_MoveOptions   §џ           V       Done            §џ           B    Busy            §џ           E    Active            §џ           E    CommandAborted            §џ           E    Error            §џ           B    ErrorID           §џ           E       Axis                AXIS_REF  §џ           B         |ET      џџџџ        !   MC_TABLEBASEDPOSITIONCOMPENSATION           InternalEnable             §џ#            trick for internal FB handling    state            §џ$              GetThisTaskIndex                GETCURTASKINDEX    §џ%           	   CycleTime                         §џ&           task cycle time [s]    fbCalcPositionCorrection                                    !   _FB_PositionCorrectionTableLookup    §џ'       4    based on old 'FB_PositionCompensation' in TcNc.lib    fbFeedPositionCorrection                                    MC_PositionCorrectionLimiter    §џ(       N    s.TcMC2.lib (original based on old 'FB_WritePositionCorrection' in TcNc.lib)    CalcPosCorrOut                    ST_McOutputs    §џ)              FeedPosCorrOut                    ST_McOutputs    §џ*              InternalAcceleration                         §џ+       E    input of FB 'MC_PositionCorrectionLimiter': 'Acceleration' [mm/s^2]    InternalCorrectionValue                         §џ,       M    output of FB 'MC_PositionCorrectionLimiter': 'PositionCorrectionValue' [mm]    InternalLimitingActive             §џ-       ?    output of FB 'MC_PositionCorrectionLimiter': 'Limiting' [0/1]       Enable            §џ       )    rising edge triggers initialize routine    pTable              #   ST_PositionCompensationTableElement        §џ       R    pointer to equidistant table with strictly monotonous increasing position values 	   TableSize           §џ       +    size of data in bytes related to 'pTable'    TableParameter                %   ST_PositionCompensationTableParameter   §џ       1    position compensation table parameter structure    Ramp                        §џ           velocity limit for feeded position compensation (constant velocity and linear position sub profile for position compensation) [mm/s] (default:=0.0)    DisableMode               E_DisableMode   §џ       S    disable mode defines whow to react in case of disabling: (0)=HOLD, (1)=RESET, ...    Options               ST_PositionCompensationOptions   §џ       $    optional parameters (NOT USED YET)       Enabled            §џ              Busy            §џ              Error            §џ              ErrorID           §џ              CurrentCorrection                        §џ       /    current actual position correction value [mm]    Limiting            §џ        >    function block is currently limiting the Position Correction       Axis                Axis_Ref  §џ                   |ET      џџџџ           MC_TOUCHPROBE           ADSbusy             §џ              iState           STATE_INITIALIZATION       _E_TcMC_STATES    §џ              TouchProbeValid   	                         §џ            valid state of probes 1..4    TouchProbeActive   	                         §џ!       !    activation state of probes 1..4    TouchProbeValue   	                                      §џ"       $    last recorded value of probes 1..4    TouchProbeModuloValue   	                                      §џ#       +    last recorded modulo value of probes 1..4    TouchProbeInactiveCounter   	                         §џ$       O    number of cycles where the probes 1..4 where inactive (activation monitoring)    OLDADSINTERFACE         ` §џ(       A    temporary flag to test old and new NC ADS touch probe interface 
   fbADSwrite                          ADSWRITE ` §џ+              fbAdsReadValid                          ADSREAD ` §џ,              fbAdsReadValue                          ADSREAD ` §џ-              fbAdsReadState                          ADSREAD ` §џ.              fbAdsReadModulo                          ADSREAD ` §џ/              TimerAdsReadState                    TON ` §џ0              RtrigPlcEvent                 R_TRIG ` §џ1              FtrigPlcEvent                 F_TRIG ` §џ2              fbOnTrigger                 R_TRIG ` §џ3              LatchID         ` §џ4              Restart          ` §џ5       H    restart probe sequence when the trigger was outside the defined window    InWindow          ` §џ6       *    probe value is inside the defined window    ModuloFactor                      ` §џ7       &    axis' modulo factor read from the NC    InitDone          ` §џ8       %    initialization on start-up finished    IndexOffset         ` §џ9              i         ` §џ:                 Execute            §џ           B 
   WindowOnly            §џ           E    FirstPosition                        §џ           E    LastPosition                        §џ           E       Done            §џ           B    Busy            §џ           E    CommandAborted            §џ           E    Error            §џ           B    ErrorID           §џ           E    RecordedPosition                        §џ           B       Axis                AXIS_REF  §џ           B    TriggerInput                       TRIGGER_REF  §џ           B         |ET      џџџџ           MC_TOUCHPROBE_V2_00            ADSbusy             §џ              iState           STATE_INITIALIZATION       _E_TcMC_STATES    §џ              ExternalLatchValid             §џ              TouchProbeValid   	                         §џ           valid state of probes 1..4    TouchProbeActive   	                         §џ       !    activation state of probes 1..4    TouchProbeValue   	                                      §џ       $    last recorded value of probes 1..4    TouchProbeModuloValue   	                                      §џ       +    last recorded modulo value of probes 1..4    TouchProbeCounter   	                         §џ       ,    last recorded value counter of probes 1..4    TouchProbeInactiveCounter   	                         §џ       O    number of cycles where the probes 1..4 where inactive (activation monitoring)    stTouchProbeActivation                   _ST_TcNc_TouchProbeActivation    §џ               stTouchProbeStatusRequest                 _ST_TcNc_TouchProbeStatusRequest    §џ!              stTouchProbeStatusResponse                      !   _ST_TcNc_TouchProbeStatusResponse    §џ"              stTouchProbeDeactivation                 _ST_TcNc_TouchProbeDeactivation    §џ#              LastTouchProbeValue   	                                   ` §џ'       $    last recorded value of probes 1..4    LastTouchProbeCounter   	                      ` §џ(       ,    last recorded value counter of probes 1..4 
   fbADSwrite                          ADSWRITE ` §џ)              fbAdsReadValid                          ADSREAD ` §џ*              fbAdsReadValue                          ADSREAD ` §џ+              fbAdsReadState                          ADSREAD ` §џ,              fbAdsReadModulo                          ADSREAD ` §џ-              fbAdsReadLatchStatus                          
   ADSRDWRTEX ` §џ.              TimerAdsReadState                    TON ` §џ/              RtrigPlcEvent                 R_TRIG ` §џ0              FtrigPlcEvent                 F_TRIG ` §џ1              fbOnTrigger                 R_TRIG ` §џ2              Restart          ` §џ3       H    restart probe sequence when the trigger was outside the defined window    InWindow          ` §џ4       *    probe value is inside the defined window    ModuloFactor                      ` §џ5       &    axis' modulo factor read from the NC    InitDone          ` §џ6       %    initialization on start-up finished    IndexOffset         ` §џ7              iTriggerInput                      TRIGGER_REF ` §џ8           B    i         ` §џ9                 Execute            §џ           B 
   WindowOnly            §џ	           E    FirstPosition                        §џ
           E    LastPosition                        §џ           E       Done            §џ           B    Busy            §џ           E    CommandAborted            §џ           E    Error            §џ           B    ErrorID           §џ           E    RecordedPosition                        §џ           B    RecordedData                  MC_TouchProbeRecordedData   §џ           V       Axis                AXIS_REF  §џ           B    TriggerInput                       TRIGGER_REF  §џ           B         |ET      џџџџ           MC_WRITEBOOLPARAMETER           ADSbusy             §џ              fbReadWriteParameter                                      _FB_ReadWriteParameter    §џ           	   nParatype               _E_ParameterType ` §џ              dwValue         ` §џ              lrValue                      ` §џ           	   fbTrigger                 R_TRIG ` §џ                 Execute            §џ           B    ParameterNumber           §џ           B    Value            §џ	           B       Done            §џ           B    Busy            §џ           E    Error            §џ           B    ErrorID           §џ           E       Axis                AXIS_REF  §џ           B         |ET      џџџџ           MC_WRITEPARAMETER           ADSbusy             §џ              fbReadWriteParameter                                      _FB_ReadWriteParameter    §џ           	   nParatype               _E_ParameterType ` §џ              dwValue         ` §џ              bValue          ` §џ           	   fbTrigger                 R_TRIG ` §џ                 Execute            §џ           B    ParameterNumber           §џ           B    Value                        §џ	           B       Done            §џ           B    Busy            §џ           E    Error            §џ           B    ErrorID           §џ           E       Axis                AXIS_REF  §џ           B         |ET      џџџџ       c:\users\max\desktop\twincat\lib\STANDARD.LIB @                                                                                          CONCAT               STR1               §џ              STR2               §џ                 CONCAT                                         |ET     џџџџ           CTD           M             §џ           Variable for CD Edge Detection      CD            §џ           Count Down on rising edge    LOAD            §џ           Load Start Value    PV           §џ           Start Value       Q            §џ           Counter reached 0    CV           §џ           Current Counter Value             |ET     џџџџ           CTU           M             §џ            Variable for CU Edge Detection       CU            §џ       
    Count Up    RESET            §џ           Reset Counter to 0    PV           §џ           Counter Limit       Q            §џ           Counter reached the Limit    CV           §џ           Current Counter Value             |ET     џџџџ           CTUD           MU             §џ            Variable for CU Edge Detection    MD             §џ            Variable for CD Edge Detection       CU            §џ	       
    Count Up    CD            §џ
           Count Down    RESET            §џ           Reset Counter to Null    LOAD            §џ           Load Start Value    PV           §џ           Start Value / Counter Limit       QU            §џ           Counter reached Limit    QD            §џ           Counter reached Null    CV           §џ           Current Counter Value             |ET     џџџџ           DELETE               STR               §џ              LEN           §џ              POS           §џ                 DELETE                                         |ET     џџџџ           F_TRIG           M             §џ
                 CLK            §џ           Signal to detect       Q            §џ           Edge detected             |ET     џџџџ           FIND               STR1               §џ              STR2               §џ                 FIND                                     |ET     џџџџ           INSERT               STR1               §џ              STR2               §џ              POS           §џ                 INSERT                                         |ET     џџџџ           LEFT               STR               §џ              SIZE           §џ                 LEFT                                         |ET     џџџџ           LEN               STR               §џ                 LEN                                     |ET     џџџџ           MID               STR               §џ              LEN           §џ              POS           §џ                 MID                                         |ET     џџџџ           R_TRIG           M             §џ
                 CLK            §џ           Signal to detect       Q            §џ           Edge detected             |ET     џџџџ           REPLACE               STR1               §џ              STR2               §џ              L           §џ              P           §џ                 REPLACE                                         |ET     џџџџ           RIGHT               STR               §џ              SIZE           §џ                 RIGHT                                         |ET     џџџџ           RS               SET            §џ              RESET1            §џ                 Q1            §џ
                       |ET     џџџџ           SEMA           X             §џ                 CLAIM            §џ	              RELEASE            §џ
                 BUSY            §џ                       |ET     џџџџ           SR               SET1            §џ              RESET            §џ                 Q1            §џ	                       |ET     џџџџ           TOF           M             §џ           internal variable 	   StartTime            §џ           internal variable       IN            §џ       ?    starts timer with falling edge, resets timer with rising edge    PT           §џ           time to pass, before Q is set       Q            §џ	       2    is FALSE, PT seconds after IN had a falling edge    ET           §џ
           elapsed time             |ET     џџџџ           TON           M             §џ           internal variable 	   StartTime            §џ           internal variable       IN            §џ       ?    starts timer with rising edge, resets timer with falling edge    PT           §џ           time to pass, before Q is set       Q            §џ	       0    is TRUE, PT seconds after IN had a rising edge    ET           §џ
           elapsed time             |ET     џџџџ           TP        	   StartTime            §џ           internal variable       IN            §џ       !    Trigger for Start of the Signal    PT           §џ       '    The length of the High-Signal in 10ms       Q            §џ	           The pulse    ET           §џ
       &    The current phase of the High-Signal             |ET     џџџџ    {   c:\users\max\desktop\twincat\lib\TcNC.lib @                                                                                8          AXACT        
   fbAdsWrite                          ADSWRITE    §џ              RisingStart                 R_TRIG    §џ           
   RisingStop                 R_TRIG    §џ              x_stNcStart              
   ST_NcStart    §џ              x_nStep            §џ              x_bStop             §џ                 AXID           §џ              START            §џ              STOP            §џ              MODE           §џ              VELOCITY                        §џ              TARGPOS                        §џ              TMOUT           §џ	                 BUSY            §џ              ERR            §џ              ERRID           §џ                       |ET      џџџџ           AXACTEX        
   fbAdsWrite                          ADSWRITE    §џ              RisingStart                 R_TRIG    §џ           
   RisingStop                 R_TRIG    §џ              x_stNcStartEx        	               ST_NcStartEx    §џ              x_nStep            §џ              x_bStop             §џ           
      AXID           §џ              START            §џ              STOP            §џ              MODE           §џ              VELOCITY                        §џ              TARGPOS                        §џ              ACCEL                        §џ	              DECEL                        §џ
              JERK                        §џ              TMOUT           §џ                 BUSY            §џ              ERR            §џ              ERRID           §џ                       |ET      џџџџ           AXCPL        
   fbAdsWrite                          ADSWRITE    §џ              RisingCplOn                 R_TRIG    §џ              RisingCplOff                 R_TRIG    §џ              x_stNcCoupleSlave                      ST_NcCoupleSlave    §џ              x_nStep            §џ           	   x_bCplOff             §џ           
      AXID           §џ              MASTERID           §џ              CPLMODE           §џ              CPLPAR1                        §џ              CPLPAR2                        §џ              CPLPAR3                        §џ	              CPLPAR4                        §џ
              CPLON            §џ              CPLOFF            §џ              TMOUT           §џ                 BUSY            §џ              ERR            §џ              ERRID           §џ                       |ET      џџџџ           AXCPLMULTITAB        
   fbAdsWrite                          ADSWRITE    §џ              RisingCplOn                 R_TRIG    §џ              RisingCplOff                 R_TRIG    §џ              x_stNcCoupleTabSlave                          ST_NcCoupleTabSlave    §џ              x_nStep            §џ           	   x_bCplOff             §џ                 AXID           §џ              MASTERID           §џ              NOTABS           §џ              NOPROFILETABS           §џ              TABIDS   	                         §џ              CPLON            §џ	              CPLOFF            §џ
              TMOUT           §џ                 BUSY            §џ              ERR            §џ              ERRID           §џ                       |ET      џџџџ           AXCPLTAB        
   fbAdsWrite                          ADSWRITE    §џ              RisingCplOn                 R_TRIG    §џ              RisingCplOff                 R_TRIG    §џ              x_stNcCoupleTabSlave                          ST_NcCoupleTabSlave    §џ              x_nStep            §џ           	   x_bCplOff             §џ           
      AXID           §џ              MASTERID           §џ              SLAVEOFFSET                        §џ              MASTEROFFSET                        §џ              SLAVEABSOLUT           §џ              MASTERABSOLUT           §џ	              TABID           §џ
              CPLON            §џ              CPLOFF            §џ              TMOUT           §џ                 BUSY            §џ              ERR            §џ              ERRID           §џ                       |ET      џџџџ           AXFNC        
   fbAdsWrite                          ADSWRITE    §џ              FallingSetDrive                 F_TRIG    §џ              FallingManFW                 F_TRIG    §џ              FallingManBW                 F_TRIG    §џ              RisingReset                 R_TRIG    §џ              RisingCalibr                 R_TRIG    §џ              RisingSetPos                 R_TRIG    §џ              RisingSetDrive                 R_TRIG    §џ              RisingSetTarg                 R_TRIG    §џ              RisingManFW                 R_TRIG    §џ              RisingManBW                 R_TRIG    §џ              x_stNcSetPos                ST_NcSetPos    §џ!              x_stNcStartDriveOut                ST_NcStartDriveOut    §џ"              x_stNewEndPos                ST_NcNewEndPos    §џ#              x_stNcStart              
   ST_NcStart    §џ$              x_bSetDrive             §џ&              x_bManFW             §џ'              x_bManBW             §џ(              x_nStep            §џ)                 AXID           §џ              RESET            §џ              CALIBR            §џ              SETPOS            §џ              SETDRIVE            §џ              SETTARG            §џ              MODE           §џ	              VAL                        §џ
              MANFW            §џ              MANBW            §џ              TMOUT           §џ                 BUSY            §џ              ERR            §џ              ERRID           §џ                       |ET      џџџџ           AXISCAMDATAQUEUED               nStateDWord           §џ
                 AxisCamDataQueued                                      |ET      џџџџ           AXISCAMSCALINGPENDING               nStateDWord           §џ                 AxisCamScalingPending                                      |ET      џџџџ           AXISCAMTABLEQUEUED               nStateDWord           §џ
                 AxisCamTableQueued                                      |ET      џџџџ           AXISCONTROLLOOPCLOSED               nStateDWord           §џ                 AxisControlLoopClosed                                      |ET      џџџџ           AXISDRIVEDEVICEERROR               nStateDWord           §џ                 AxisDriveDeviceError                                      |ET      џџџџ           AXISEXTERNALLATCHVALID               nStateDWord           §џ                 AxisExternalLatchValid                                      |ET      џџџџ           AXISGETOVERRIDEPERCENT            	   nOverride           §џ                 AxisGetOverridePercent                                                  |ET      џџџџ           AXISGOTNEWTARGETPOSITION               nStateDWord           §џ
                 AxisGotNewTargetPosition                                      |ET      џџџџ           AXISHASBEENSTOPPED               nStateDWord           §џ                 AxisHasBeenStopped                                      |ET      џџџџ           AXISHASEXTSETPOINTGEN               nStateDWord           §џ                 AxisHasExtSetPointGen                                      |ET      џџџџ        
   AXISHASJOB               nStateDWord           §џ              
   AxisHasJob                                      |ET      џџџџ           AXISINERRORSTATE               nStateDWord           §џ                 AxisInErrorState                                      |ET      џџџџ           AXISINPOSITIONWINDOW               nStateDWord           §џ                 AxisInPositionWindow                                      |ET      џџџџ           AXISINPROTECTEDMODE               nStateDWord           §џ                 AxisInProtectedMode                                      |ET      џџџџ           AXISINPTPMODE               nStateDWord           §џ
                 AxisInPTPMode                                      |ET      џџџџ           AXISIODATAISINVALID               nStateDWord           §џ                 AxisIoDataIsInvalid                                      |ET      џџџџ           AXISISATTARGETPOSITION               nStateDWord           §џ                 AxisIsAtTargetPosition                                      |ET      џџџџ           AXISISCALIBRATED               nStateDWord           §џ                 AxisIsCalibrated                                      |ET      џџџџ           AXISISCALIBRATING               nStateDWord           §џ                 AxisIsCalibrating                                      |ET      џџџџ           AXISISCOMPENSATING               nStateDWord           §џ                 AxisIsCompensating                                      |ET      џџџџ           AXISISCOUPLED               nCoupleState           §џ                 AxisIsCoupled                                      |ET      џџџџ           AXISISMOVING               nStateDWord           §џ                 AxisIsMoving                                      |ET      џџџџ           AXISISMOVINGBACKWARDS               nStateDWord           §џ                 AxisIsMovingBackwards                                      |ET      џџџџ           AXISISMOVINGENDLESS               nStateDWord           §џ                 AxisIsMovingEndless                                      |ET      џџџџ           AXISISMOVINGFORWARD               nStateDWord           §џ                 AxisIsMovingForward                                      |ET      џџџџ           AXISISNOTINTARGETPOSITION               nStateDWord           §џ                 AxisIsNotInTargetPosition                                      |ET      џџџџ           AXISISNOTMOVING               nStateDWord           §џ                 AxisIsNotMoving                                      |ET      џџџџ           AXISISREADY               nStateDWord           §џ                 AxisIsReady                                      |ET      џџџџ           AXISJOBPENDING               nStateDWord           §џ
                 AxisJobPending                                      |ET      џџџџ           AXISREACHEDCONSTANTVELOCITY               nStateDWord           §џ                 AxisReachedConstantVelocity                                      |ET      џџџџ           AXISSETACCEPTBLOCKEDDRIVESIGNAL               nDeCtrlDWord           §џ              bEnable            §џ                 AxisSetAcceptBlockedDriveSignal                                     |ET      џџџџ           AXISSETCONTROLLERENABLE               nDeCtrlDWord           §џ              bControllerEnable            §џ	                 AxisSetControllerEnable                                     |ET      џџџџ           AXISSETFEEDENABLEMINUS               nDeCtrlDWord           §џ              bFeedEnableMinus            §џ	                 AxisSetFeedEnableMinus                                     |ET      џџџџ           AXISSETFEEDENABLEPLUS               nDeCtrlDWord           §џ              bFeedEnablePlus            §џ	                 AxisSetFeedEnablePlus                                     |ET      џџџџ           AXISSETOVERRIDEPERCENT               fOverridePercent                        §џ                 AxisSetOverridePercent                                     |ET      џџџџ           AXISSETREFERENCINGCAMSIGNAL               nDeCtrlDWord           §џ              bReferencingCamSignal            §џ	                 AxisSetReferencingCamSignal                                     |ET      џџџџ           AXISSOFTLIMITMAXEXCEEDED               nStateDWord           §џ                 AxisSoftLimitMaxExceeded                                      |ET      џџџџ           AXISSOFTLIMITMINEXCEEDED               nStateDWord           §џ                 AxisSoftLimitMinExceeded                                      |ET      џџџџ           AXSCOM        
   fbAdsWrite                          ADSWRITE    §џ              RisingCompOn                 R_TRIG    §џ              RisingCompOff                 R_TRIG    §џ              x_stNcCompensation                     ST_NcCompensation    §џ              x_nStep            §џ           
   x_bCompOff             §џ                 AXID           §џ              MODE           §џ              ACCP                        §џ              ACCM                        §џ              VDELTA                        §џ              VPROC                        §џ	              COMPVAL                        §џ
              COMPDIST                        §џ              COMP_ON            §џ              COMP_OFF            §џ              TMOUT           §џ                 BUSY            §џ              ERR            §џ              ERRID           §џ                       |ET      џџџџ           F_GETCOMPENSATIONELEMENTAT           pTemp                 ST_CompensationElement         §џ                 pTable                 ST_CompensationElement        §џ              nElement           §џ                 F_GetCompensationElementAt                ST_CompensationElement                             |ET      џџџџ           F_GETLEFTINDEX           fStep                         §џ	                 fPos                        §џ              fMin                        §џ              fMax                        §џ              nCount           §џ                 F_GetLeftIndex                                     |ET      џџџџ           F_GETVERSIONTCNC               nVersionElement           §џ                 F_GetVersionTcNC                                     |ET      џџџџ           F_ISCOMPENSATIONDIRECTION               eActive           WorkingDirectionNone       E_WorkingDirection   §џ           
   eRequested           WorkingDirectionNone       E_WorkingDirection   §џ                 F_IsCompensationDirection                                      |ET      џџџџ        !   F_LINEARINTERPOLATIONCOMPENSATION           a                         §џ              b                         §џ	                 fPos                        §џ           
   stElement1                ST_CompensationElement   §џ           
   stElement2                ST_CompensationElement   §џ              !   F_LinearInterpolationCompensation                                                  |ET      џџџџ           FB_AXISNEWTARGPOSANDVELO           fbSetPosVelo                          ADSWRITE    §џ              stNewPosVelo                     ST_NcSetNewPosVelo    §џ                 iAxisId           §џ              eCmdType               E_CmdTypeNewTargPosAndVelo   §џ              fTargPos                        §џ           
   fSwitchPos                        §џ              eTargPosType               E_TargPosType   §џ              fVelo                        §џ              bExecute            §џ	              tTimeout           §џ
                 bBusy            §џ              bErr            §џ              iErrId           §џ                       |ET      џџџџ           FB_GETAXISAMSADDR        	   fbAdsRead                          ADSREAD    §џ           
   risingEdge                 R_TRIG    §џ              fallingEdge                 F_TRIG    §џ           
   readBuffer   	  	                        §џ              pNetIdBytes    	                               §џ              pUint                  §џ                 sNetId            
   T_AmsNetId   §џ              iAxisId           §џ              bExecute            §џ              tTimeout         §џ           default since 2007-08-15 KSt       bBusy            §џ	              bError            §џ
              iErrId           §џ           	   AxisNetId            
   T_AmsNetId   §џ              AxisPort            	   T_AmsPort   §џ              AxisNetIdBytes   	                         §џ              AxisChannel           §џ           added 2007-03-23 KSt             |ET     џџџџ           FB_POSITIONCOMPENSATION     
      nState            §џ              dwSize            §џ              eActiveDirection           WorkingDirectionNone       E_WorkingDirection    §џ           	   bExecCalc             §џ           
   stElement1                ST_CompensationElement    §џ            
   stElement2                ST_CompensationElement    §џ!           
   nLeftIndex            §џ"              ERRORCODE_PARAMSIZE    CK     §џ%              ERRORCODE_PARAMPOS    DK     §џ&              ERRORCODE_TCNCNOTIMPL    EK     §џ'                 Enable            §џ       )    rising edge triggers initialize routine    pTable                 ST_CompensationElement        §џ              cbSize           §џ                 Compensation               0.0           §џ              Error            §џ              ErrorId           §џ              Active            §џ                 ReferenceAxis                                     NCTOPLC_AXLESTRUCT  §џ              Desc                     ST_CompensationDesc  §џ                   |ET      џџџџ           FB_REGISTERCOMKL25XX     +      state            §џ           statemachine state 
   EntryState            §џ       #    state at the beginning of a cycle 
   ErrorState            §џ           state where an error comes up    TerminalInterface                              ST_NcTerminalInterface    §џ              TriggerRead                 R_TRIG    §џ              TriggerWrite                 R_TRIG    §џ              BusyRead             §џ           busy with reading a register 	   BusyWrite             §џ           busy with writing a register 
   fbAdsRead1                        	   ADSREADEX    §џ!           
   fbAdsRead2                        	   ADSREADEX    §џ"              fbAdsWrite1                          ADSWRITE    §џ#              fbAdsWrite2                          ADSWRITE    §џ$              fbAdsWrite3                          ADSWRITE    §џ%           	   EncoderID            §џ'              DriveID            §џ(              EncoderType            §џ)           	   DriveType            §џ*              NcMappingType            §џ+              stateReadNcTerminalProcessImage            §џ-       2    state of terminal feedback polling state-machine     EnableReadNcTerminalProcessImage             §џ.              ReadNcTerminalProcessImageDone             §џ/               stateWriteNcTerminalProcessImage            §џ1       '    state of terminal write state-machine "   ExecuteWriteNcTerminalProcessImage             §џ2              WriteNcTerminalProcessImageDone             §џ3           $   fbTriggerWriteNcTerminalProcessImage                 R_TRIG    §џ4              TimerStateTimeout                    TON    §џ6              TriggerError                 R_TRIG    §џ7              iError             §џ8           
   iRegNumber            §џ9           	   iRegValue            §џ:              tempbyte            §џ<              tempWriteRequest             §џ=              NCMAPPINGTYPE_KL2521    й	     §џ@       #    supports KL2502 / KL2521 / IP2512    NCMAPPINGTYPE_KL2531    у	     §џA           supports KL2531 / KL2541    NCMAPPINGTYPE_KL2532    ф	     §џB       5    supports KL2532 / KL2542 / KL2535 / KL2545 / KL2552    NCMAPPINGTYPE_KL5001         §џC           supports KL5001 
   ADSTIMEOUT    ш     §џD              STATEMACHINETIMEOUT    '     §џE       5    maximum time to stay in a state of the statemachine    ERRORCODE_INVALIDPARAMETER    K     §џG           "   ERRORCODE_TERMINALTYPENOTSUPPORTED    @K     §џH              ERRORCODE_WRITEERROR    AK     §џI              ERRORCODE_AXISENABLED    BK     §џJ           &   ERRORCODE_TIMEOUTREGISTERCOMMUNICATION    K     §џK                 Read            §џ              Write            §џ           	   RegNumber           §џ              RegValue           §џ                 Done            §џ	              Busy            §џ
              Error            §џ              ErrorID           §џ              TerminalType           §џ              CurrentRegNumber           §џ              CurrentRegValue           §џ              	   AxisRefIn                                     NCTOPLC_AXLESTRUCT  §џ           
   AxisRefOut                      PLCTONC_AXLESTRUCT  §џ                   |ET      џџџџ           FB_WRITEPOSITIONCORRECTION           GetThisTaskIndex                GETCURTASKINDEX    §џ           	   CycleTime                         §џ              MaxDeltaVelocity                         §џ              MaxDeltaPosition                         §џ              DeltaCorrection                         §џ              InitialDeltaCorrection                         §џ              EndOfEnablePhase             §џ              iCorrectionMode               E_PositionCorrectionMode    §џ              state            §џ              NumberOfCycles            §џ              DeltaCorrectionPerCycle                         §џ              LastPositionCorrectionValue                         §џ                 Enable            §џ              PositionCorrectionValue                        §џ              CorrectionMode               E_PositionCorrectionMode   §џ	              Acceleration                        §џ
              CorrectionLength                        §џ       8    optional length - comparable to 'superposition length'       Busy            §џ              Error            §џ              ErrorID           §џ              Limiting            §џ              	   AxisRefIn                                     NCTOPLC_AXLESTRUCT  §џ           
   AxisRefOut                      PLCTONC_AXLESTRUCT  §џ                   |ET      џџџџ           GET_TCNCUTILITIES_VERSION               bGet            §џ                 Get_TcNcUtilities_Version                                         |ET      џџџџ       c:\users\max\desktop\twincat\lib\TcUtilities.lib @                                                                                ђ          ARG_TO_CSVFIELD           pSrc               ` §џ           Pointer to the source buffer    pDest               ` §џ       #    Pointer to the destination buffer    cbMax         ` §џ           Max. number of input bytes    cbScan         ` §џ           Input stream data byte number    cbReturn         ` §џ           Number of result data bytes       in                 T_Arg   §џ       T    Input data in PLC format (any data type, string, integer, floating point value...)    bQM            §џ	       h    TRUE => Enclose result data in quotation marks, FALSE => Don't enclose result data in quotation marks.    pOutput           §џ
       /    Address of output buffer (destination buffer)    cbOutput           §џ       !    Max. byte size of output buffer       ARG_TO_CSVFIELD                                     |ET      џџџџ        
   BCD_TO_DEC        
   RisingEdge                 R_TRIG ` §џ                 START            §џ              BIN           §џ                 BUSY            §џ              ERR            §џ              ERRID           §џ	              DOUT           §џ
       П   
	Error codes:
		0x00		: No Errors
		0x0F	: Parameter value NOT correct. Wrong BCD input value in Low Nibble.
		0xF0	: Parameter value NOT correct. Wrong BCD input value in High Nibble.
            |ET      џџџџ           BE128_TO_HOST               in                T_UHUGE_INTEGER   §џ                 BE128_TO_HOST                T_UHUGE_INTEGER                             |ET      џџџџ           BE16_TO_HOST               in           §џ                 BE16_TO_HOST                                     |ET      џџџџ           BE32_TO_HOST           parr    	                            ` §џ                 in           §џ                 BE32_TO_HOST                                     |ET      џџџџ           BE64_TO_HOST               in                T_ULARGE_INTEGER   §џ                 BE64_TO_HOST                T_ULARGE_INTEGER                             |ET      џџџџ           BYTEARR_TO_MAXSTRING               in   	  џ                       §џ                 BYTEARR_TO_MAXSTRING               T_MaxString                             |ET     џџџџ           CSVFIELD_TO_ARG           pSrc               ` §џ           Pointer to the source buffer    pDest               ` §џ       $     Pointer to the destination buffer    cbMax         ` §џ           Max. number of output bytes    cbScan         ` §џ           Input stream data byte number    cbReturn         ` §џ           Number of result data bytes    bQMPrior          ` §џ       c    TRUE => Previous character was quotation mark. FALSE => Previous character was not quotation mark       pInput           §џ       G    Address of input buffer with data in CSV field format (source buffer )   cbInput           §џ	           Byte size of input data    bQM            §џ
       \    TRUE => Remove enclosing quotation marks. FALSE => Don't remove enclosing quotation marks.    out                 T_Arg   §џ       U    Output data in PLC format (any data type, string, integer, floating point value...)       CSVFIELD_TO_ARG                                     |ET      џџџџ           CSVFIELD_TO_STRING           cbField         ` §џ                 in               T_MaxString   §џ       "    Input string in CSV field format    bQM            §џ	       \    TRUE => Remove enclosing quotation marks. FALSE => Don't remove enclosing quotation marks.       CSVFIELD_TO_STRING               T_MaxString                             |ET      џџџџ           DATA_TO_HEXSTR           iCase         ` §џ              pCells    	  џ                          ` §џ              idx         ` §џ                 pData           §џ           Pointer to data buffer    cbData             U              §џ           Byte size of data buffer    bLoCase            §џ       9    Default: use "ABCDEF", if TRUE use "abcdef" characters.       DATA_TO_HEXSTR               T_MaxString                             |ET     џџџџ        
   DCF77_TIME     "      DataBits   	  <                         §џ              BitNo            §џ              dtCurr            §џ              dtNext            §џ              tziCurr               E_TimeZoneID    §џ       6    Time zone information extracted from latest telegram    tziPrev               E_TimeZoneID    §џ       8    Time zone information extracted from previous telegram    tDiff            §џ           Two telegram time difference    bCheck             §џ              Step         ` §џ!           	   StartEdge                 R_TRIG ` §џ"              RisingPulse                 R_TRIG ` §џ$              FallingPulse                 F_TRIG ` §џ%           	   LongPulse                    TON ` §џ&           
   ShortPulse                    TON ` §џ'           
   DetectSync                    TOF ` §џ(              NoDCFSignal                    TON ` §џ)              DCFCycleLen                    TON ` §џ*           	   bIsRising          ` §џ,           
   bIsFalling          ` §џ-              bIsLong          ` §џ.              bIsShort          ` §џ/              Working          ` §џ0           	   DataValid          ` §џ2           
   ParitySum1         ` §џ3           
   ParitySum2         ` §џ4           
   ParitySum3         ` §џ5              i         ` §џ7           	   DummyByte         ` §џ8              DummyString    Q       Q  ` §џ9              Hour         ` §џ;              Minute         ` §џ<              Year         ` §џ=              Month         ` §џ>              Day         ` §џ?              	   DCF_PULSE            §џ           DCF77 pulse: 101010101...    RUN            §џ       *    Enable/disable function block execution.       BUSY            §џ           TRUE = Decoding in progress    ERR            §џ	       ,    Error flag: TRUE = Error, FALSE = No error    ERRID           §џ
           Error code    ERRCNT           §џ           Error counter    READY            §џ       1    TRUE => CDT is valid, FALSE => CDT is not valid    CDT           §џ           date and time information             |ET      џџџџ           DCF77_TIME_EX     #      DataBits   	  <                         §џ           Decoded data bits    BitNo            §џ           Decoded bit number    dtCurr            §џ       %    Time extracted from latest telegram    dtNext            §џ            Supposed next time    tziCurr               E_TimeZoneID    §џ!       6    Time zone information extracted from latest telegram    tziPrev               E_TimeZoneID    §џ"       8    Time zone information extracted from previous telegram    tDiff            §џ#       )    Time difference of two latest telegrams    bCheck             §џ$       H    TRUE = Plausibility check over two telegrams enabled, FALSE = disabled    Step         ` §џ&           	   StartEdge                 R_TRIG ` §џ'              RisingPulse                 R_TRIG ` §џ)              FallingPulse                 F_TRIG ` §џ*           	   LongPulse                    TON ` §џ+           
   ShortPulse                    TON ` §џ,           
   DetectSync                    TOF ` §џ-              NoDCFSignal                    TON ` §џ.              DCFCycleLen                    TON ` §џ/           	   bIsRising          ` §џ1           
   bIsFalling          ` §џ2              bIsLong          ` §џ3              bIsShort          ` §џ4              Working          ` §џ5           	   DataValid          ` §џ7           
   ParitySum1         ` §џ8           
   ParitySum2         ` §џ9           
   ParitySum3         ` §џ:              i         ` §џ<           	   DummyByte         ` §џ=              DummyString    Q       Q  ` §џ>              Hour         ` §џ@              Minute         ` §џA              Year         ` §џB              Month         ` §џC              Day         ` §џD           	   DayOfWeek         ` §џE              	   DCF_PULSE            §џ           DCF77 pulse: 101010101...    RUN            §џ       *    Enable/disable function block execution.    TLP          §џ           Short/long pulse split point       BUSY            §џ	           TRUE = Decoding in progress    ERR            §џ
       ,    Error flag: TRUE = Error, FALSE = No error    ERRID           §џ           Error code    ERRCNT           §џ           Error counter    READY            §џ       1    TRUE => CDT is valid, FALSE => CDT is not valid    CDT           §џ           date and time information    DOW                         §џ       0     ISO 8601 day of week: 1 = Monday.. 7 = Sunday    TZI               E_TimeZoneID   §џ           time zone information    ADVTZI            §џ       1    MEZ->MESZ or MESZ->MEZ time change notification    LEAPSEC            §џ           TRUE = Leap second    RAWDT   	  <                        §џ           Raw decoded data bits             |ET      џџџџ        
   DEC_TO_BCD        
   RisingEdge                 R_TRIG ` §џ                 START            §џ              DIN           §џ                 BUSY            §џ              ERR            §џ              ERRID           §џ	              BOUT           §џ
       h   
	Error codes:
		0x00		: No errors
		0xFF	: Parameter value NOT correct. Wrong DECIMAL input value.
            |ET      џџџџ        
   DEG_TO_RAD               ANGLE                        §џ              
   DEG_TO_RAD                                                  |ET      џџџџ           DINT_TO_DECSTR               in           §џ           
   iPrecision           §џ	                 DINT_TO_DECSTR               T_MaxString                             |ET      џџџџ           DT_TO_FILETIME           ui64                T_ULARGE_INTEGER ` §џ                 DTIN           §џ                 DT_TO_FILETIME             
   T_FILETIME                             |ET      џџџџ           DT_TO_SYSTEMTIME           sDT             ` §џ              nDay         ` §џ              b   	                 
    24(16#30)      0    ` §џ              TS                   
   TIMESTRUCT ` §џ           	   Index7001                            DTIN           §џ                 DT_TO_SYSTEMTIME                   
   TIMESTRUCT                             |ET      џџџџ           DWORD_TO_BINSTR           bits   	                        ` §џ       6    array of ASCII characters (inclusive null delimiter)    iSig         ` §џ           number of significant bits    iPad         ` §џ           number of padding zeros    i         ` §џ           	   Index7001                            in           §џ           
   iPrecision           §џ                 DWORD_TO_BINSTR               T_MaxString                             |ET      џџџџ           DWORD_TO_DECSTR           dec   	                       ` §џ       6    array of ASCII characters (inclusive null delimiter)    iSig         ` §џ           number of significant nibbles    iPad         ` §џ           number of padding zeros    i         ` §џ              divider     Ъ; ` §џ              number         ` §џ           	   Index7001                            in           §џ           
   iPrecision           §џ                 DWORD_TO_DECSTR               T_MaxString                             |ET      џџџџ           DWORD_TO_HEXSTR           hex   	                       ` §џ       6    array of ASCII characters (inclusive null delimiter)    iSig         ` §џ           number of significant nibbles    iPad         ` §џ           number of padding zeros    i         ` §џ           	   Index7001                            in           §џ           
   iPrecision           §џ              bLoCase            §џ	       8   Default: use "ABCDEF", if TRUE use "abcdef" characters.       DWORD_TO_HEXSTR               T_MaxString                             |ET      џџџџ           DWORD_TO_LREALEX               in           §џ                 DWORD_TO_LREALEX                                                  |ET      џџџџ           DWORD_TO_OCTSTR           oct   	                       ` §џ       6    array of ASCII characters (inclusive null delimiter)    iSig         ` §џ           number of significant nibbles    iPad         ` §џ           number of padding zeros    i         ` §џ           	   Index7001                            in           §џ           
   iPrecision           §џ                 DWORD_TO_OCTSTR               T_MaxString                             |ET      џџџџ           F_ARGCMP               typeSafe            §џ              arg1                 T_Arg   §џ              arg2                 T_Arg   §џ                 F_ARGCMP                                     |ET      џџџџ           F_ARGCPY               typeSafe            §џ                 F_ARGCPY                               dest                  T_Arg  §џ
              src                  T_Arg  §џ                   |ET      џџџџ           F_ARGISZERO               arg                 T_Arg   §џ                 F_ARGIsZero                                      |ET      џџџџ        	   F_BIGTYPE               pData           §џ            Address pointer of data buffer    cbLen           §џ           Byte length of data buffer    	   F_BIGTYPE                 T_Arg                             |ET      џџџџ           F_BOOL                   F_BOOL                 T_Arg                       in            §џ                   |ET      џџџџ           F_BYTE                   F_BYTE                 T_Arg                       in           §џ                   |ET      џџџџ           F_BYTE_TO_CRC16_CCITT               value           §џ           Data value    crc           §џ       >    Initial value (16#FFFF or 16#0000) or previous CRC-16 result       F_BYTE_TO_CRC16_CCITT                                     |ET      џџџџ           F_CHECKSUM16        	   wChkSum_I         ` §џ	       %    internal ChkSum                        dataWord         ` §џ
       %    current data byte                      iIdx         ` §џ       %    current data buffer index              ptrData               ` §џ       %    pointer to current data byte           	   dwSrcAddr           §џ       %    address of data buffer                 cbLen           §џ       %    length of data buffer                  wChkSum           §џ       %    init value (16#0000) or last ChkSum       F_CheckSum16                                     |ET      џџџџ           F_CRC16_CCITT           wCRC_I         ` §џ
       $    internal CRC                          dataWord         ` §џ       $    current data byte                     iIdx         ` §џ       $    current data buffer index             ptrData               ` §џ       $    pointer to current data byte          	   dwSrcAddr           §џ       $    address of data buffer                cbLen           §џ       $    length of data buffer                 wLastCRC           §џ       $    init value (16#FFFF) or last CRC16       F_CRC16_CCITT                                     |ET      џџџџ           F_CREATEHASHTABLEHND           p                     T_HashTableEntry      ` §џ              i         ` §џ                 pEntries                     T_HashTableEntry        §џ       C    Pointer to the first entry of hash table database (element array) 	   cbEntries           §џ       ;    Byte size (length) of hash table database (element array)       F_CreateHashTableHnd                                hTable         	               T_HHASHTABLE  §џ           Hash table handle         |ET      џџџџ           F_CREATELINKEDLISTHND           p                   T_LinkedListEntry      ` §џ           Temp. previous node    n                   T_LinkedListEntry      ` §џ           Temp. next node    i         ` §џ           loop iterator       pEntries                   T_LinkedListEntry        §џ       @    Pointer to the first linked list node database (element array) 	   cbEntries           §џ       <    Byte size (length) of linked list database (element array)       F_CreateLinkedListHnd                                hList         	               T_HLINKEDLIST  §џ           Linked list handle         |ET      џџџџ           F_DATA_TO_CRC16_CCITT           i         ` §џ                 pData           §џ           Pointer to data    cbData           §џ           Length of data    crc           §џ       >    Initial value (16#FFFF or 16#0000) or previous CRC-16 result       F_DATA_TO_CRC16_CCITT                                     |ET      џџџџ           F_DINT                   F_DINT                 T_Arg                       in           §џ                   |ET      џџџџ           F_DWORD                   F_DWORD                 T_Arg                       in           §џ                   |ET      џџџџ           F_FORMATARGTOSTR     	      pOut               ` §џ              longword         ` §џ              double                      ` §џ              single          ` §џ              short         ` §џ              small         ` §џ              longint         ` §џ              iPaddingLen         ` §џ              iCurrLen         ` §џ           
      bSign            §џ           Sign prefix flag    bBlank            §џ           Blank prefix flag    bNull            §џ           Null prefix flag    bHash            §џ           Hash prefix flag    bLAlign            §џ       4    FALSE => Right align (default), TRUE => Left align    bWidth            §џ       C    FALSE => no width padding, TRUE => blank or zeros padding enabled    iWidth           §џ	           Width length parameter 
   iPrecision           §џ
           Precision length parameter    eFmtType               E_TypeFieldParam   §џ           Format type field parameter    arg                 T_Arg   §џ           Format argument       F_FormatArgToStr                               sOut                T_MaxString  §џ                   |ET      џџџџ           F_GETDAYOFMONTHEX           dom         ` §џ           Day of month    dow         ` §џ           Day of week    n         ` §џ              dwYears         ` §џ              dwDays         ` §џ                 wYear     A  A  kx             §џ           Year: 1601..30827    wMonth                         §џ           Month: 1..12    wWOM                         §џ       Г     Week of month. Occurrence of the day of the week within the month (1..5, where 5 indicates the final occurrence during the month if that day of the week does not occur 5 times).   wDOW                           §џ       4    Day of week (0 = Sunday, 1 = Monday.. 6 = Saturday       F_GetDayOfMonthEx                                     |ET      џџџџ           F_GETDAYOFWEEK           sysTime                   
   TIMESTRUCT ` §џ	                 in           §џ                 F_GetDayOfWeek                                     |ET      џџџџ           F_GETDOYOFYEARMONTHDAY           bLY          ` §џ
                 wYear           §џ           Year: 0..2xxx    wMonth           §џ           Month 1..12    wDay           §џ           Day: 1..31       F_GetDOYOfYearMonthDay                                     |ET      џџџџ           F_GETFLOATREC     
   	   ptrDouble    	                               §џ              fValue                         §џ
              fBegin                         §џ              nBegin            §џ              fDiv                         §џ              nDig            §џ              nDigit            §џ              fMaxPrecision                         §џ              i            §џ              nLastDecDigit            §џ                 fVal                        §џ           
   iPrecision           §џ              bRound            §џ                 F_GetFloatRec              
   T_FloatRec                             |ET      џџџџ           F_GETMAXMONTHDAYS               wYear           §џ	              wMonth           §џ
                 F_GetMaxMonthDays                                     |ET      џџџџ           F_GETMONTHOFDOY           bLY          ` §џ	              wMonth         ` §џ
                 wYear           §џ           Year: 0..2xxx    wDOY           §џ           Year's day number: 1..366       F_GetMonthOfDOY                                     |ET      џџџџ           F_GETVERSIONTCUTILITIES               nVersionElement           §џ       d   
	Possible nVersionElement parameter:
	1	:	major number
	2	:	minor number
	3	:	revision number
      F_GetVersionTcUtilities                                     |ET      џџџџ           F_GETWEEKOFTHEYEAR           date_sec         ` §џ           date seconds    dow         ` §џ	           day of week    year         ` §џ
              KWStart         ` §џ              first    yG ` §џ              ff                      ` §џ                 in           §џ                 F_GetWeekOfTheYear                                     |ET      џџџџ           F_HUGE                   F_HUGE                 T_Arg                       in                 T_HUGE_INTEGER  §џ                   |ET      џџџџ           F_INT                   F_INT                 T_Arg                       in           §џ                   |ET      џџџџ           F_LARGE                   F_LARGE                 T_Arg                       in                 T_LARGE_INTEGER  §џ                   |ET      џџџџ           F_LREAL                   F_LREAL                 T_Arg                       in                        §џ                   |ET      џџџџ           F_LTRIM           pChar               ` §џ              pStr                T_MaxString      ` §џ	                 in               T_MaxString   §џ                 F_LTrim               T_MaxString                             |ET      џџџџ           F_REAL                   F_REAL                 T_Arg                       in            §џ                   |ET      џџџџ           F_RTRIM           n         ` §џ              pChar               ` §џ	                 in               T_MaxString   §џ                 F_RTrim               T_MaxString                             |ET      џџџџ           F_SINT                   F_SINT                 T_Arg                       in           §џ                   |ET      џџџџ           F_STRING                   F_STRING                 T_Arg                       in                T_MaxString  §џ                   |ET      џџџџ        
   F_SWAPREAL           pReal    	                               §џ              pResult    	                               §џ                 fVal            §џ              
   F_SwapReal                                      |ET      џџџџ           F_SWAPREALEX           pIN    	                            ` §џ              wSave         ` §џ	                     F_SwapRealEx                                fVal            §џ                   |ET      џџџџ        	   F_TOLCASE           pDest               ` §џ              idx                 MIN_SBCS_TABLE   MAX_SBCS_TABLE ` §џ	                 in               T_MaxString   §џ              	   F_ToLCase               T_MaxString                             |ET     џџџџ        	   F_TOUCASE           pDest               ` §џ              idx                 MIN_SBCS_TABLE   MAX_SBCS_TABLE ` §џ	                 in               T_MaxString   §џ              	   F_ToUCase               T_MaxString                             |ET     џџџџ           F_TRANSLATEFILETIMEBIAS           ui64In                T_ULARGE_INTEGER ` §џ       E    Input file time as 64 bit unsigned integer (number of 100ns ticks)     ui64Bias                T_ULARGE_INTEGER ` §џ       ?    Bias value as 64 bit unsigned integer (number of 100ns ticks)    ui64Out                T_ULARGE_INTEGER ` §џ       @    Local time as 64 bit unsigned integer (number of 100ns ticks)        in             
   T_FILETIME   §џ       1    Input time in file time format to be translated    bias           §џ       y    Bias value in minutes. The bias is the difference, in minutes, between Coordinated Universal Time (UTC) and local time.    toUTC            §џ       U    TRUE => Translate from local time to UTC, FALSE => Translate from UTC to local Time       F_TranslateFileTimeBias             
   T_FILETIME                             |ET      џџџџ           F_UDINT                   F_UDINT                 T_Arg                       in           §џ                   |ET      џџџџ           F_UHUGE                   F_UHUGE                 T_Arg                       in                 T_UHUGE_INTEGER  §џ                   |ET      џџџџ           F_UINT                   F_UINT                 T_Arg                       in           §џ                   |ET      џџџџ           F_ULARGE                   F_ULARGE                 T_Arg                       in                 T_ULARGE_INTEGER  §џ                   |ET      џџџџ           F_USINT                   F_USINT                 T_Arg                       in           §џ                   |ET      џџџџ           F_WORD                   F_WORD                 T_Arg                       in           §џ                   |ET      џџџџ           F_YEARISLEAPYEAR               wYear           §џ                 F_YearIsLeapYear                                      |ET      џџџџ           FB_ADDROUTEENTRY        
   fbAdsWrite       P    ( PORT := AMSPORT_R3_SYSSERV, IDXGRP := SYSTEMSERVICE_ADDREMOTE, IDXOFFS := 0 )              	   T_AmsPort         !                 ADSWRITE ` §џ           	   fbTrigger                 R_TRIG ` §џ              state         ` §џ           	   dataEntry                ST_AmsRouteSystemEntry ` §џ                 sNetID            
   T_AmsNetID   §џ       &    TwinCAT network address (ams net id)    stRoute                    ST_AmsRouteEntry   §џ       !    Structure with route parameters    bExecute            §џ       -    Rising edge starts function block execution    tTimeout         §џ           Max fb execution time       bBusy            §џ
              bError            §џ              nErrID           §џ                       |ET     џџџџ           FB_AMSLOGGER        
   fbAdsWrite       [    ( PORT:= AMSPORT_AMSLOGGER, IDXGRP:= AMSLOGGER_IGR_GENERAL, IDXOFFS:= AMSLOGGER_IOF_MODE )              	   T_AmsPort                          ADSWRITE ` §џ           	   fbTrigger                 R_TRIG ` §џ              state         ` §џ              stReq                ST_AmsLoggerReq ` §џ                 sNetId           ''    
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id)    eMode           AMSLOGGER_RUN       E_AmsLoggerMode   §џ              sCfgFilePath           ''       T_MaxString   §џ              bExecute            §џ       6    Rising edge on this input activates the fb execution    tTimeout         §џ           Max fb execution time       bBusy            §џ
              bError            §џ              nErrId           §џ                       |ET     џџџџ           FB_BASICPID           nERR_NOERROR           §џ           no error						   nERR_INVALIDPARAM          §џ           invalid parameter				   nERR_INVALIDCYCLETIME          §џ           invalid cycle time				   fE               0.0            §џ            error input					   fE_1               0.0            §џ!           error input z^(-1)				   fY               0.0            §џ"           control output				   fY_1               0.0            §џ#           control output  z^(-1)			   fYP               0.0            §џ$           P-part						   fYI               0.0            §џ%           I-part						   fYI_1               0.0            §џ&           I-part  z^(-1)					   fYD               0.0            §џ'           D-T1-part					   fYD_1               0.0            §џ(           D-T1-part  z^(-1)				   bInit            §џ*       %    initialization flag for first cycle	   bIsIPart             §џ+           I-part active ?				   bIsDPart             §џ,           D-part active ?				   fDi               0.0            §џ.           internal I param				   fDd               0.0            §џ/           internal D param				   fCd               0.0            §џ0           internal D param				   fCtrlCycleTimeOld               0.0            §џ2              fKpOld               0.0            §џ3              fTnOld               0.0            §џ4              fTvOld               0.0            §џ5              fTdOld               0.0            §џ6                 fSetpointValue                        §џ           setpoint value							   fActualValue                        §џ           actual value							   bReset            §џ           controller values    fCtrlCycleTime                        §џ	       (    controller cycle time in seconds [s]			   fKp                        §џ           proportional gain Kp	(P)					   fTn                        §џ           integral gain Tn (I) [s]						   fTv                        §џ       "    derivative gain Tv (D-T1) [s]				   fTd                        §џ       (    derivative damping time Td (D-T1) [s]		      fCtrlOutput                        §џ           controller output command				   nErrorStatus           §џ       1    controller error output (0: no error; >0:error)	            |ET      џџџџ           FB_BUFFEREDTEXTFILEWRITER           fbFile                               FB_TextFileRingBuffer ` §џ           
   closeTimer                    TON ` §џ           auto close timer    bRemove          ` §џ              nStep         ` §џ                 sNetId           ''    
   T_AmsNetId ` §џ           ams net id 	   sPathName           'c:\Temp\data.dat'       T_MaxString ` §џ	       6    file buffer path name (max. length = 255 characters)    ePath           PATH_GENERIC    
   E_OpenPath ` §џ
           default: Open generic file    bAppend         ` §џ       )    TRUE = append lines, FALSE = not append 
   tAutoClose       ` §џ              tTimeout       ` §џ                 bBusy          ` §џ              bError          ` §џ              nErrID         ` §џ                 fbBuffer         	               FB_StringRingBuffer` §џ           string ring buffer         |ET     џџџџ           FB_CONNECTSCOPESERVER           stRecordDesc       d    (nRunMode:=0, nSopMode:=0, bStoreOnDisk:=FALSE, bUseLocalServer:=FALSE, bStartServerFromFile:=TRUE)                                #   ST_ScopeServerRecordModeDescription    §џ              nState            §џ              nErrorState            §џ           
   fbAdsWrite                          ADSWRITE    §џ              fbQueryRegistry                                 FB_RegQueryValue    §џ              sScopeServerDir                §џ              sScopeServerPath                §џ              fbStartServer                              NT_StartProcess    §џ              fbWait                    TON    §џ               bTriggerServerStart            §џ!              nDwellTimeCounter            §џ"              nPort           27110    	   T_AmsPort   §џ%              Connect_IdxGrp     u     §џ&          0x7500      sNetId           ''    
   T_AmsNetId   §џ              bExecute            §џ              sConfigFile    Q       Q    §џ              tTimeout         §џ                 bBusy            §џ              bDone            §џ              bError            §џ              nErrorId           §џ                       |ET     џџџџ           FB_CSVMEMBUFFERREADER           state         ` §џ              getBufferIndex         ` §џ              scanPtr               ` §џ              scanSize         ` §џ              bField          ` §џ              cbCopied         ` §џ           
   bFirstChar          ` §џ              bDQField          ` §џ           	   bDQBefore          ` §џ              pField         ` §џ       U    If successfull then this variable returns the address of the first/next field value    cbField         ` §џ       W    If successfull then this variable returns the byte size of the first/next field value    bEOF          ` §џ           TRUE => End of field found    bBreak          ` §џ                 eCmd           eEnumCmd_First       E_EnumCmdType   §џ       )    Command type: read first or next field ?   pBuffer           §џ       #    Address ( pointer) of data buffer    cbBuffer           §џ           Max. byte size of data buffer       bOk            §џ	       &    TRUE => Successfull, FALSE => Failed    getValue           ''       T_MaxString   §џ
       N    If successfull then this output returns the first/next field value as string    pValue           §џ       s    Pointer to the first value byte (HINT: String values are not null terminated. Empty string returns Null pointer )    cbValue           §џ           Field value byte size    bCRLF            §џ       .    TRUE => End of record separator found (CRLF)    cbRead           §џ       )    Number of successfully parse data bytes             |ET      џџџџ           FB_CSVMEMBUFFERWRITER           fbReader                                    FB_CSVMemBufferReader ` §џ              temp   	  ,                    ` §џ           Temp buffer    cbTemp         ` §џ       %    Number of data bytes in temp buffer    cbCopied         ` §џ       9    Number of data bytes copied to the external data buffer    bNewLine         ` §џ           TRUE => start with new line       eCmd           eEnumCmd_First       E_EnumCmdType   §џ       *    Command type: write first or next field ?   putValue           ''       T_MaxString   §џ       &    New first/next field value as string    pValue           §џ       C    OPTIONAL: Pointer to external buffer containing field value data.    cbValue           §џ       F    OPTIONAL: Byte size of external buffer containing field value data.     bCRLF            §џ       0    TRUE = > Append end of record separator (CRLF)    pBuffer           §џ	       #    Address ( pointer) of data buffer    cbBuffer           §џ
           Max. byte size of data buffer       bOk            §џ       &    TRUE => Successfull, FALSE => Failed    cbSize           §џ           Number fo used data bytes    cbFree           §џ           Number of free data bytes    nFields           §џ           Number of fields    nRecords           §џ           Number of records    cbWrite           §џ       +    Number of successfully written data bytes             |ET      џџџџ           FB_DBGOUTPUTCTRL           fbFormat                                     FB_FormatString ` §џ              fbBuffer        	               FB_StringRingBuffer ` §џ              fbFile       +    (ePath := PATH_BOOTPATH, bAppend := TRUE )                 PATH_GENERIC    
   E_OpenPath                      FB_BufferedTextFileWriter ` §џ              buffer   	  '                   ` §џ              state         ` §џ              nItems         ` §џ              k         ` §џ               bInit         ` §џ!           Hex logging    i         ` §џ$              cells   	                               ` §џ%              pCells                T_MaxString      ` §џ&              cbL1         ` §џ'              cbL2         ` §џ'              idx         ` §џ'              pSrc1               ` §џ(              pSrc2               ` §џ(                 dwCtrl         ` §џ       &    Debug message target: DBG_OUTPUT_LOG    sFormat           ''       T_MaxString ` §џ           Debug message format string    arg1                 T_Arg ` §џ           Format string argument    arg2                 T_Arg ` §џ              arg3                 T_Arg ` §џ	              arg4                 T_Arg ` §џ
              arg5                 T_Arg ` §џ              arg6                 T_Arg ` §џ              arg7                 T_Arg ` §џ              arg8                 T_Arg ` §џ              arg9                 T_Arg ` §џ              arg10                 T_Arg ` §џ              sFilter           ''       T_MaxString ` §џ                 bError          ` §џ              nError         ` §џ           	   nOverflow         ` §џ                       |ET     џџџџ           FB_DISCONNECTSCOPESERVER        
   fbAdsWrite                          ADSWRITE    §џ              nState            §џ                 sNetId            
   T_AmsNetId   §џ              bExecute            §џ              tTimeout         §џ                 bBusy            §џ              bDone            §џ	              bError            §џ
              nErrorId           §џ                       |ET     џџџџ           FB_ENUMFINDFILEENTRY        
   fbAdsRdWrt       B    ( PORT := AMSPORT_R3_SYSSERV, IDXGRP := SYSTEMSERVICE_FFILEFIND )              	   T_AmsPort                         ADSRDWRT ` §џ           
   fbAdsWrite       D    ( PORT := AMSPORT_R3_SYSSERV, IDXGRP := SYSTEMSERVICE_CLOSEHANDLE )              	   T_AmsPort         o              ADSWRITE ` §џ           	   fbTrigger                 R_TRIG ` §џ              state         ` §џ           	   dataEntry                            ST_AmsFindFileSystemEntry ` §џ              eFindCmd               E_EnumCmdType ` §џ                 sNetId            
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id) 	   sPathName               T_MaxString   §џ       %    dir/path/file name, wildcards [*|?]    eCmd           eEnumCmd_First       E_EnumCmdType   §џ           Enumerator navigation command    bExecute            §џ       6    Rising edge on this input activates the fb execution    tTimeout         §џ           Max fb execution time       bBusy            §џ              bError            §џ              nErrID           §џ              bEOE            §џ           End of enumeration 
   stFindFile                     ST_FindFileEntry   §џ           Find file entry             |ET     џџџџ           FB_ENUMFINDFILELIST           fbEnum                              FB_EnumFindFileEntry ` §џ           	   fbTrigger                 R_TRIG ` §џ              state         ` §џ              cbEntry         ` §џ              nEntries         ` §џ              pEntry                      ST_FindFileEntry      ` §џ                 sNetId            
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id) 	   sPathName               T_MaxString   §џ       %    dir/path/file name, wildcards [*|?]    eCmd           eEnumCmd_First       E_EnumCmdType   §џ           Enumerator navigation command 	   pFindList           §џ       &    POINTER TO ARRAY OF ST_FindFileEntry 
   cbFindList           §џ       (    Byte size of ARRAY OF ST_FindFileEntry    bExecute            §џ	       6    Rising edge on this input activates the fb execution    tTimeout         §џ
           Max fb execution time       bBusy            §џ              bError            §џ              nErrID           §џ              bEOE            §џ           End of enumeration 
   nFindFiles           §џ           Number of find files             |ET     џџџџ           FB_ENUMROUTEENTRY        	   fbAdsRead       Z    ( PORT := AMSPORT_R3_SYSSERV, IDXGRP := SYSTEMSERVICE_ENUMREMOTE (*, IDXGRP := index *) )              	   T_AmsPort         #             ADSREAD ` §џ           	   fbTrigger                 R_TRIG ` §џ              state         ` §џ              index    џџџџ ` §џ           	   dataEntry                ST_AmsRouteSystemEntry ` §џ                 sNetID            
   T_AmsNetID   §џ       '    TwinCAT network address (ams net id )    eCmd           eEnumCmd_First       E_EnumCmdType   §џ           Enumerator navigation command    bExecute            §џ       -    Rising edge starts function block execution    tTimeout         §џ           Max fb execution time       bBusy            §џ
              bError            §џ              nErrID           §џ              bEOE            §џ       l    End of enumeration. This value is TRUE after the first read that attempts to read next non existing entry.    stRoute                    ST_AmsRouteEntry   §џ       !    Structure with route parameters             |ET     џџџџ           FB_ENUMSTRINGNUMBERS           pSrc               ` §џ              pDest               ` §џ              pNext               ` §џ              char         ` §џ              state         ` §џ              bEat          ` §џ                 sSearch               T_MaxString   §џ           Source string    eCmd           eEnumCmd_First       E_EnumCmdType   §џ           Enumerator navigation command    eType           eNumGroup_Float       E_NumGroupTypes   §џ           String number format type       sNumber               T_MaxString   §џ           Found string number    nPos           §џ	       )    <> 0 => Next scan/search start position    bEOS            §џ
           TRUE = End of string             |ET      џџџџ           FB_FILERINGBUFFER           fbOpen                             FB_FileOpen ` §џ              fbClose                      FB_FileClose ` §џ              fbWrite                           FB_FileWrite ` §џ              fbRead                            FB_FileRead ` §џ               fbSeek                         FB_FileSeek ` §џ!              nStep         ` §џ"       X    0=idle, 1=init, 10,11=open, 20,21=seek, 30,31=read, 40,41=write, 50,51=close, 100=exit    bInit          ` §џ#       5    TRUE=reading length chunk, FALSE=reading data chunk    bExit          ` §џ$       O    FALSE=repeat reading/writing, TRUE=abort reading/writing, go to the exit step    bReopen          ` §џ%       t    Open mode: TRUE=try to open existing file, FALSE=create new file, if open fails => try to create and open new file    bOpen          ` §џ&       %    TRUE=file opened, FALSE=file closed    bGet          ` §џ'       $    TRUE=get entry, FALSE=remove entry    bOW          ` §џ(       b    TRUE=removing oldest entry (bOverwrite=TRUE), FALSE=don't remove oldest entry (bOverwrite=FALSE)    cbOW         ` §џ)       /    Temp length of ovwerwritten length/data chunk    cbMoved         ` §џ*       =    Number of successfully read/written length/data chunk bytes    ptrSaved         ` §џ+       M    Seek pointer previous position (used by A_GetHead or read buffer underflow)    ptrMax         ` §џ,       D    Seek pointer max. position = SIZEOF(ring buffer header) + cbBuffer    eCmd           eFileRBuffer_None       E_FileRBufferCmd ` §џ-              eOldCmd           eFileRBuffer_None       E_FileRBufferCmd ` §џ.                 sNetId           ''    
   T_AmsNetId   §џ           ams net id 	   sPathName           'c:\Temp\data.dat'       T_MaxString   §џ       6    file buffer path name (max. length = 255 characters)    ePath           PATH_GENERIC    
   E_OpenPath   §џ           default: Open generic file    nID           §џ           user defined version ID    cbBuffer          §џ           max. file buffer byte size 
   bOverwrite            §џ	       :    FALSE = don't overwrite, TRUE = overwrite oldest entries 
   pWriteBuff           §џ
       "    pointer to external write buffer 
   cbWriteLen           §џ       $    byte size of external write buffer 	   pReadBuff           §џ       !    pointer to external read buffer 	   cbReadLen           §џ       #    byte size of external read buffer    tTimeout         §џ                 bBusy            §џ              bError            §џ              nErrID           §џ       х    ADS or function specific error codes:
	16#8000	= (File) buffer empty or overflow 
	16#8001 = (Application) buffer underflow (cbReadLen to small),  	
	16#8002	= Buffer is not opened  
	16#8003	= Invalid input parameter value    cbReturn           §џ       !    number of recend read data bytes   stHeader                          ST_FileRBufferHead   §џ           buffer status             |ET     џџџџ            FB_FILETIMETOTZSPECIFICLOCALTIME           fbBase       !    ( wStdYear := 0, wDldYear := 0 )                                   "   FB_TranslateUtcToLocalTimeByZoneID ` §џ           Underlaid base function block       in             
   T_FILETIME   §џ           Time to be converted (UTC, file time format), 64-bit value representing the number of 100-nanosecond intervals since January 1, 1601   tzInfo                     ST_TimeZoneInformation   §џ           Time zone settings       out             
   T_FILETIME   §џ       *    Converted time in local file time format    eTzID           eTimeZoneID_Unknown       E_TimeZoneID   §џ	       "    Daylight saving time information    bB            §џ
            FALSE => A time, TRUE => B time            |ET      џџџџ           FB_FORMATSTRING     	      pFormat               ` §џ           pointer to the format string    pOut               ` §џ           pointer to the result string 
   iRemOutLen         ` §џ       $    Max remaining length of sOut buffer   bValid          ` §џ       8    if set, the string character is valid format parameter    stFmt                              ST_FormatParameters ` §џ           
   nArrayElem         ` §џ           	   nArgument         ` §џ              parArgs   	  
                     T_Arg              ` §џ              sArgStr               T_MaxString ` §џ                 sFormat               T_MaxString   §џ              arg1                 T_Arg   §џ              arg2                 T_Arg   §џ              arg3                 T_Arg   §џ              arg4                 T_Arg   §џ              arg5                 T_Arg   §џ              arg6                 T_Arg   §џ	              arg7                 T_Arg   §џ
              arg8                 T_Arg   §џ              arg9                 T_Arg   §џ              arg10                 T_Arg   §џ                 bError            §џ              nErrId           §џ              sOut               T_MaxString   §џ                       |ET     џџџџ           FB_GETADAPTERSINFO     
   	   fbAdsRead       f    ( PORT:=AMSPORT_R3_SYSSERV, IDXGRP := SYSTEMSERVICE_IPHELPERAPI, IDXOFFS:= IPHELPERAPI_ADAPTERSINFO )              	   T_AmsPort         Н                ADSREAD ` §џ           
   fbRegQuery       P    ( sSubKey:= '\Software\Beckhoff\TwinCAT\Remote', sValName := 'DefaultAdapter' )                        T_MaxString                    T_MaxString                   FB_RegQueryValue ` §џ           	   fbTrigger                 R_TRIG ` §џ              state         ` §џ              cbInfo         ` §џ              idx         ` §џ              info   	                                      ST_IP_ADAPTER_INFO         ` §џ           buffer for 12 entries    pInfo                                 ST_IP_ADAPTER_INFO      ` §џ           
   nRealCount         ` §џ           	   sDefaultA               T_MaxString ` §џ                 sNetID            
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id)    bExecute            §џ       6    Rising edge on this input activates the fb execution    tTimeout         §џ           Max fb execution time       bBusy            §џ	              bError            §џ
              nErrID           §џ              arrAdapters   	                                    ST_IpAdapterInfo           §џ              nCount           §џ           Max. number of found adapters    nGet           §џ       %    Number of read adapter info entries             |ET     џџџџ           FB_GETDEVICEIDENTIFICATION        	   iDataSize       @` §џ           
   byTagStart    <    ` §џ           '<'    byTagEnd    >    ` §џ           '>' 
   byTagSlash    /    ` §џ           '/' 	   fbAdsRead                          ADSREAD ` §џ              bExecutePrev          ` §џ              iState         ` §џ              iData   	                      ` §џ           
   strActPath             ` §џ              iLoopEndIdx         ` §џ              iStructSize         ` §џ              strHardwareCPU             ` §џ              strTags   	  	        )       )          ` §џ           	   iTagsSize   	  	                     ` §џ              iCurrTag   	  (                     ` §џ               iCurrTagData   	  P                     ` §џ!           	   iPathSize         ` §џ"              iTagIdx         ` §џ$              iCurrTagIdx         ` §џ%              iDataIdx         ` §џ&              iCurrTagDataIdx         ` §џ'              k         ` §џ(              iMinCurrData         ` §џ)           	   iFirstIdx         ` §џ*              iLastIdx         ` §џ+           	   bTagStart          ` §џ-              bTagEnd          ` §џ.           	   bTagSlash          ` §џ/              bTagOpen          ` §џ0                 bExecute            §џ       6    Rising edge on this input activates the fb execution    tTimeout         §џ              sNetId            
   T_AmsNetId   §џ           ams net id of target system       bBusy            §џ              bError            §џ	              nErrorID           §џ
           
   stDevIdent                              ST_DeviceIdentification   §џ       5    structure with available device identification data             |ET     џџџџ           FB_GETDEVICEIDENTIFICATIONEX        	   iDataSize       @` §џ           
   byTagStart    <    ` §џ           '<'    byTagEnd    >    ` §џ           '>' 
   byTagSlash    /    ` §џ           '/' 	   fbAdsRead                          ADSREAD ` §џ              bExecutePrev          ` §џ              iState         ` §џ              iData   	                      ` §џ           
   strActPath             ` §џ              iLoopEndIdx         ` §џ              iStructSize         ` §џ              strHardwareCPU             ` §џ              strTags   	  	        )       )          ` §џ           	   iTagsSize   	  	                     ` §џ              iCurrTag   	  (                     ` §џ               iCurrTagData   	  P                     ` §џ!           	   iPathSize         ` §џ"              iTagIdx         ` §џ$              iCurrTagIdx         ` §џ%              iDataIdx         ` §џ&              iCurrTagDataIdx         ` §џ'              k         ` §џ(              iMinCurrData         ` §џ)           	   iFirstIdx         ` §џ*              iLastIdx         ` §џ+           	   bTagStart          ` §џ-              bTagEnd          ` §џ.           	   bTagSlash          ` §џ/              bTagOpen          ` §џ0                 bExecute            §џ       6    Rising edge on this input activates the fb execution    tTimeout         §џ              sNetId            
   T_AmsNetId   §џ           Ams net id of target system       bBusy            §џ              bError            §џ	              nErrorID           §џ
           
   stDevIdent                              ST_DeviceIdentificationEx   §џ       5    structure with available device identification data             |ET     џџџџ           FB_GETHOSTADDRBYNAME           fbAdsRW       j    ( PORT:= AMSPORT_R3_SYSSERV, IDXGRP:= SYSTEMSERVICE_IPHELPERAPI, IDXOFFS:= IPHELPERAPI_IPADDRBYHOSTNAME )              	   T_AmsPort         Н                
   ADSRDWRTEX ` §џ           	   fbTrigger                 R_TRIG ` §џ              state         ` §џ                 sNetID            
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id) 	   sHostName           ''       T_MaxString   §џ       1    String containing host name. E.g. 'DataServer1'    bExecute            §џ       6    Rising edge on this input activates the fb execution    tTimeout    ШЏ     §џ           Max fb execution time       bBusy            §џ
              bError            §џ              nErrID           §џ              sAddr           ''    
   T_IPv4Addr   §џ       S    String containing an (Ipv4) Internet Protocol dotted address. E.g. '172.16.7.199'    arrAddr           0, 0, 0, 0       T_IPv4AddrArr   §џ       C    Byte array containing an (Ipv4) Internet Protocol dotted address.             |ET     џџџџ           FB_GETHOSTNAME        	   fbAdsRead       R    ( PORT :=  AMSPORT_R3_SYSSERV, IDXGRP := SYSTEMSERVICE_IPHOSTNAME, IDXOFFS := 0 )              	   T_AmsPort         О                 ADSREAD ` §џ           	   fbTrigger                 R_TRIG ` §џ              state         ` §џ                 sNetID            
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id)    bExecute            §џ       6    Rising edge on this input activates the fb execution    tTimeout         §џ           Max fb execution time       bBusy            §џ	              bError            §џ
              nErrID           §џ           	   sHostName               T_MaxString   §џ           The local host name             |ET     џџџџ           FB_GETLOCALAMSNETID           fbRegQueryValue       W    ( sNetId:= '', sSubKey := 'SOFTWARE\Beckhoff\TwinCAT\System', sValName := 'AmsNetId' )                    
   T_AmsNetId                    T_MaxString                    T_MaxString                   FB_RegQueryValue ` §џ           	   fbTrigger                 R_TRIG ` §џ              state         ` §џ              tmpBytes               T_AmsNetIdArr ` §џ                 bExecute            §џ       6    Rising edge on this input activates the fb execution    tTimeOut         §џ           Max fb execution time       bBusy            §џ              bError            §џ	              nErrId           §џ
           
   AddrString           '0.0.0.0.0.0'    
   T_AmsNetId   §џ       -    TwinCAT -specific network address as string 	   AddrBytes           0,0,0,0,0,0       T_AmsNetIdArr   §џ       3    TwinCAT-specific network address as array of byte             |ET     џџџџ           FB_GETROUTERSTATUSINFO        	   fbAdsRead       &    ( PORT:= 1, IDXGRP:= 1, IDXOFFS:= 1 )              	   T_AmsPort                          ADSREAD ` §џ           	   fbTrigger                 R_TRIG ` §џ              state         ` §џ              adsRes   	                       ` §џ                 sNetId           ''    
   T_AmsNetID   §џ           Ams net id    bExecute            §џ       6    Rising edge on this input activates the fb execution    tTimeout         §џ           Max fb execution time       bBusy            §џ	              bError            §џ
              nErrID           §џ              info                   ST_TcRouterStatusInfo   §џ       #    TwinCAT Router status information             |ET     џџџџ           FB_GETTIMEZONEINFORMATION        	   fbAdsRead       p    ( PORT := AMSPORT_R3_SYSSERV, IDXGRP := SYSTEMSERVICE_TIMESERVICES, IDXOFFS := TIMESERVICE_TIMEZONINFORMATION )              	   T_AmsPort                         ADSREAD ` §џ           	   fbTrigger                 R_TRIG ` §џ              state         ` §џ              res                ST_AmsGetTimeZoneInformation ` §џ                 sNetID            
   T_AmsNetID   §џ       &    TwinCAT network address (ams net id)    bExecute            §џ       6    Rising edge on this input activates the fb execution    tTimeout         §џ           Max fb execution time       bBusy            §џ              bError            §џ	              nErrID           §џ
              tzID               E_TimeZoneID   §џ              tzInfo                     ST_TimeZoneInformation   §џ                       |ET     џџџџ           FB_HASHTABLECTRL           p                     T_HashTableEntry      ` §џ              n                     T_HashTableEntry      ` §џ              nHash         ` §џ                 key           §џ       d    Entry key: used by A_Lookup, A_Remove method, the key.lookup variable is also used by A_Add method    putValue           §џ           Entry value 	   putPosPtr                     T_HashTableEntry        §џ	                 bOk            §џ           TRUE = success, FALSE = error    getValue           §џ           	   getPosPtr                     T_HashTableEntry        §џ       R    returned by A_GetFirstEntry, A_GetNextEntry, A_Add, A_Lookup and A_Remove method       hTable         	               T_HHASHTABLE  §џ           Hash table handle variable         |ET      џџџџ           FB_LINKEDLISTCTRL           p                   T_LinkedListEntry      ` §џ           Temp. previous node    n                   T_LinkedListEntry      ` §џ           Temp. next node       putValue           §џ           Linked list node value 	   putPosPtr                   T_LinkedListEntry        §џ           Linked list node pointer       bOk            §џ           TRUE = success, FALSE = error    getValue           §џ           Linked list node value 	   getPosPtr                   T_LinkedListEntry        §џ           Linked list node pointer       hList         	               T_HLINKEDLIST  §џ           Linked list table handle         |ET      џџџџ           FB_LOCALSYSTEMTIME     	      rtrig                 R_TRIG ` §џ              state         ` §џ              fbNT                   
   NT_GetTime ` §џ              fbTZ                          FB_GetTimeZoneInformation ` §џ              fbSET                           NT_SetTimeToRTCTime ` §џ              fbRTC                             RTC_EX2 ` §џ              timer                    TON ` §џ              nSync         ` §џ              bNotSup          ` §џ                 sNetID           ''    
   T_AmsNetID   §џ       +    The target TwinCAT system network address    bEnable            §џ       `    Enable/start cyclic time synchronisation (output is synchronized to Local Windows System Time)    dwCycle           Q            §џ       &    Time synchronisation cycle (seconds)    dwOpt          §џ       R    Additional option flags: If bit 0 is set => Synchronize Windows Time to RTC time    tTimeout         §џ       J    Max. ADS function block execution time (internal communication timeout).       bValid            §џ       \    TRUE => The systemTime and tzID output is valid, FALSE => systemTime and tzID is not valid 
   systemTime                   
   TIMESTRUCT   §џ       "    Local Windows System Time struct    tzID           eTimeZoneID_Invalid       E_TimeZoneID   §џ       )    Daylight/standard time zone information             |ET     џџџџ           FB_MEMBUFFERMERGE           pDest         ` §џ              cbDest         ` §џ                 eCmd           eEnumCmd_First       E_EnumCmdType   §џ              pBuffer           §џ           Pointer to destination buffer    cbBuffer           §џ       &    Max. byte size of destination buffer    pSegment           §џ       .    Pointer to data segment (optional, may be 0) 	   cbSegment           §џ       -    Number of data segments (optional, may be 0)      bOk            §џ       M    TRUE => Successfull, FALSE => End of enumeration or invalid input parameter    cbSize           §џ           Data buffer fill state             |ET      џџџџ           FB_MEMBUFFERSPLIT           pSrc         ` §џ              cbSrc         ` §џ                 eCmd           eEnumCmd_First       E_EnumCmdType   §џ              pBuffer           §џ           Pointer to source data buffer    cbBuffer           §џ       !    Byte size of source data buffer    cbSize           §џ           Max. segment byte size       bOk            §џ
       N    TRUE => Successfull, FALSE => End of segmentation or invalid input parameter    pSegment           §џ           Pointer to data segment 	   cbSegment           §џ           Byte size of data segment    bEOS            §џ       7    TRUE = End/last segment, FALSE = Next segment follows             |ET      џџџџ           FB_MEMRINGBUFFER           idxLast         ` §џ            byte index of last buffer byte    idxFirst         ` §џ       "    byte buffer of first buffer byte    idxGet         ` §џ              pTmp         ` §џ              cbTmp         ` §џ              cbCopied         ` §џ                 pWrite           §џ           pointer to write data    cbWrite           §џ           byte size of write data    pRead           §џ	           pointer to read data buffer    cbRead           §џ
           byte size of read data buffer    pBuffer           §џ       #    pointer to ring buffer data bytes    cbBuffer           §џ           max. ring buffer byte size       bOk            §џ       T    TRUE = new entry added or removed succesfully, FALSE = fifo overflow or fifo empty    nCount           §џ           number of fifo entries    cbSize           §џ       "    current byte length of fifo data    cbReturn           §џ       О    If bOk == TRUE => Number of recend realy returned (removed or get) data bytes
									   If bOk == FALSE and cbReturn <> 0 => Number of required read buffer data bytes (cbRead underflow)             |ET      џџџџ           FB_MEMRINGBUFFEREX           idxLast         ` §џ       *    byte index of last (newest) buffer entry    idxFirst         ` §џ       +    byte index of first (oldest) buffer entry    idxGet         ` §џ           temporary index    idxEnd         ` §џ       "    index of unused/free end segment    cbEnd         ` §џ       &    byte size of unused/free end segment    cbAdd         ` §џ!                 pWrite           §џ           pointer to write data    cbWrite           §џ           byte size of write data    pBuffer           §џ       #    pointer to ring buffer data bytes    cbBuffer           §џ           max. ring buffer byte size       bOk            §џ       W    TRUE = new entry added or get, freed succesfully, FALSE = fifo overflow or fifo empty    pRead           §џ       (    A_GetHead returns pointer to read data    cbRead           §џ       *    A_GetHead returns byte size of read data    nCount           §џ           number of fifo entries    cbSize           §џ       "    current byte length of fifo data    cbFree           §џ            biggest available free segment             |ET      џџџџ           FB_MEMSTACKBUFFER               pWrite           §џ           pointer to write data    cbWrite           §џ           byte size of write data    pRead           §џ	           pointer to read data buffer    cbRead           §џ
           byte size of read data buffer    pBuffer           §џ       #    pointer to LIFO buffer data bytes    cbBuffer           §џ           max. LIFO buffer byte size       bOk            §џ       T    TRUE = new entry added or removed succesfully, FALSE = LIFO overflow or LIFO empty    nCount           §џ           number of LIFO entries    cbSize           §џ       "    current byte length of LIFO data    cbReturn           §џ       О    If bOk == TRUE => Number of recend realy returned (removed or get) data bytes
									   If bOk == FALSE and cbReturn <> 0 => Number of required read buffer data bytes (cbRead underflow)             |ET      џџџџ           FB_REGQUERYVALUE           fbAdsRdWrtEx       [    ( PORT := AMSPORT_R3_SYSSERV, IDXGRP := SYSTEMSERVICE_REG_HKEYLOCALMACHINE, IDXOFFS := 0 )              	   T_AmsPort         Ш                  
   ADSRDWRTEX ` §џ           	   fbTrigger                 R_TRIG ` §џ              state         ` §џ              s1Len         ` §џ              s2Len         ` §џ              ptr         ` §џ              cbBuff         ` §џ              tmpBuff                ST_HKeySrvRead ` §џ                 sNetId            
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id)    sSubKey               T_MaxString   §џ       #    HKEY_LOCAL_MACHINE \ sub key name    sValName               T_MaxString   §џ           Value name    cbData           §џ           Number of data bytes to read    pData           §џ       $    Points to registry key data buffer    bExecute            §џ       6    Rising edge on this input activates the fb execution    tTimeOut         §џ	           Max fb execution time       bBusy            §џ              bError            §џ              nErrId           §џ              cbRead           §џ       '    Number of succesfully read data bytes             |ET     џџџџ           FB_REGSETVALUE        
   fbAdsWrite       [    ( PORT := AMSPORT_R3_SYSSERV, IDXGRP := SYSTEMSERVICE_REG_HKEYLOCALMACHINE, IDXOFFS := 0 )              	   T_AmsPort         Ш                  ADSWRITE ` §џ           	   fbTrigger                 R_TRIG ` §џ              state         ` §џ              s1Len         ` §џ              s2Len         ` §џ              s3Len         ` §џ              ptr         ` §џ              nType         ` §џ              cbBuff         ` §џ              cbRealWrite         ` §џ              tmpBuff                  ST_HKeySrvWrite ` §џ                 sNetId            
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id)    sSubKey               T_MaxString   §џ       #    HKEY_LOCAL_MACHINE \ sub key name    sValName               T_MaxString   §џ           Value name    eValType               E_RegValueType   §џ           Value type    cbData           §џ           Size of value data in bytes    pData           §џ           Pointer to value data buffer   bExecute            §џ	       6    Rising edge on this input activates the fb execution    tTimeOut         §џ
           Max fb execution time       bBusy            §џ              bError            §џ              nErrId           §џ              cbWrite           §џ       +    Number of successfully written data bytes             |ET     џџџџ           FB_REMOVEROUTEENTRY        
   fbAdsWrite       P    ( PORT := AMSPORT_R3_SYSSERV, IDXGRP := SYSTEMSERVICE_DELREMOTE, IDXOFFS := 0 )              	   T_AmsPort         "                 ADSWRITE ` §џ                 sNetID            
   T_AmsNetID   §џ       '    TwinCAT network address (ams net id )    sName                 §џ           Route name as string    bExecute            §џ       -    Rising edge starts function block execution    tTimeout         §џ           Max fb execution time       bBusy            §џ
              bError            §џ              nErrID           §џ                       |ET     џџџџ           FB_RESETSCOPESERVERCONTROL        
   fbAdsWrite                          ADSWRITE    §џ              nState            §џ                 sNetId            
   T_AmsNetId   §џ              bExecute            §џ              tTimeout         §џ                 bBusy            §џ              bDone            §џ	              bError            §џ
              nErrorId           §џ                       |ET     џџџџ           FB_SAVESCOPESERVERDATA           nState            §џ           
   fbAdsWrite       D    ( PORT := AMSPORT_R3_SCOPESERVER, IDXGRP := 16#750E, IDXOFFS := 0 )              	   T_AmsPort         u                 ADSWRITE    §џ                 sNetId            
   T_AmsNetId   §џ              bExecute            §џ           	   sSaveFile    Q       Q    §џ              tTimeout         §џ                 bBusy            §џ	              bDone            §џ
              bError            §џ              nErrorId           §џ                       |ET     џџџџ           FB_SCOPESERVERCONTROL           eCurrentState           SCOPE_SERVER_IDLE       E_ScopeServerState    §џ           	   fbConnect                                   FB_ConnectScopeServer    §џ              fbStart        
                FB_StartScopeServer    §џ              fbStop        
                FB_StopScopeServer    §џ              fbSave        
                FB_SaveScopeServerData    §џ              fbDisconnect        	               FB_DisconnectScopeServer    §џ              fbReset        	               FB_ResetScopeServerControl    §џ                  sNetId            
   T_AmsNetId   §џ           	   eReqState               E_ScopeServerState   §џ              sConfigFile    Q       Q    §џ           	   sSaveFile    Q       Q    §џ              tTimeout         §џ                 bBusy            §џ              bDone            §џ              bError            §џ              nErrorId           §џ                       |ET     џџџџ           FB_SETTIMEZONEINFORMATION        
   fbAdsWrite       o    ( PORT:= AMSPORT_R3_SYSSERV, IDXGRP := SYSTEMSERVICE_TIMESERVICES, IDXOFFS	:= TIMESERVICE_TIMEZONINFORMATION )              	   T_AmsPort                         ADSWRITE ` §џ           	   fbTrigger                 R_TRIG ` §џ              state         ` §џ              req                ST_AmsGetTimeZoneInformation ` §џ                 sNetID           ''    
   T_AmsNetID   §џ       &    TwinCAT network address (ams net id)    tzInfo       ]   ( (*West Euoropa Standard Time *)
					bias:=-60,
					standardName:='W. Europe Standard Time',
					standardDate:=(wYear:=0, wMonth:=10, wDayOfWeek:=0, wDay:=5, wHour:=3),
					standardBias:=0,
					daylightName:='W. Europe Daylight Time',
					daylightDate:=(wYear:=0, wMonth:=3, wDayOfWeek:=0, wDay:=5, wHour:=2),
					daylightBias:=-60 )    Фџџџ        W. Europe Standard Time                
   TIMESTRUCT             
                                W. Europe Daylight Time                
   TIMESTRUCT                                 Фџџџ   ST_TimeZoneInformation   §џ              bExecute            §џ       6    Rising edge on this input activates the fb execution    tTimeout         §џ           Max fb execution time       bBusy            §џ              bError            §џ              nErrID           §џ                       |ET     џџџџ           FB_STARTSCOPESERVER           nState            §џ           
   fbAdsWrite                          ADSWRITE    §џ              nDummy   	                    0,0                     §џ                 sNetId            
   T_AmsNetId   §џ              bExecute            §џ              tTimeout         §џ                 bBusy            §џ              bDone            §џ	              bError            §џ
              nErrorId           §џ                       |ET     џџџџ           FB_STOPSCOPESERVER           nState            §џ           
   fbAdsWrite                          ADSWRITE    §џ              nDummy   	                    0,0                     §џ                 sNetId            
   T_AmsNetId   §џ              bExecute            §џ              tTimeout         §џ                 bBusy            §џ              bDone            §џ	              bError            §џ
              nErrorId           §џ                       |ET     џџџџ           FB_STRINGRINGBUFFER           fbBuffer                              FB_MemRingBuffer ` §џ       4    Internal (low level) buffer control function block    
   bOverwrite            §џ       8    TRUE = overwrite oldest entry, FALSE = don't overwrite    putValue           ''       T_MaxString   §џ       %    String to add (write) to the buffer    pBuffer           §џ	       #    Pointer to ring buffer data bytes    cbBuffer           §џ
           Max. ring buffer byte size       bOk            §џ       T    TRUE = new entry added or removed succesfully, FALSE = fifo overflow or fifo empty    getValue           ''       T_MaxString   §џ       #    String removed (read) from buffer    nCount           §џ           Number of fifo entries    cbSize           §џ       "    Current byte length of fifo data             |ET      џџџџ        "   FB_SYSTEMTIMETOTZSPECIFICLOCALTIME           fbBase                                   "   FB_TranslateUtcToLocalTimeByZoneID ` §џ           Underlaid base function block       in                   
   TIMESTRUCT   §џ       p    Time to be converted (UTC, system time format). Structure that specifies the system time since January 1, 1601    tzInfo                     ST_TimeZoneInformation   §џ           Time zone settings       out                   
   TIMESTRUCT   §џ       ,    Converted time in local system time format    eTzID           eTimeZoneID_Unknown       E_TimeZoneID   §џ	       "    Daylight saving time information    bB            §џ
            FALSE => A time, TRUE => B time            |ET      џџџџ           FB_TEXTFILERINGBUFFER           fbOpen                             FB_FileOpen ` §џ              fbClose                      FB_FileClose ` §џ              fbPuts        	               FB_FilePuts ` §џ              nStep         ` §џ       @    0=idle, 1=init, 10,11=open, 40,41=write, 50,51=close, 100=exit    eCmd           eFileRBuffer_None       E_FileRBufferCmd ` §џ                 sNetId           ''    
   T_AmsNetId ` §џ           ams net id 	   sPathName           'c:\Temp\data.dat'       T_MaxString ` §џ       6    file buffer path name (max. length = 255 characters)    ePath           PATH_GENERIC    
   E_OpenPath ` §џ           default: Open generic file    bAppend         ` §џ       #    TRUE = append, FALSE = not append    putLine           ''       T_MaxString ` §џ	              cbBuffer        ` §џ
       5    max. file buffer byte size(RESERVED for future use)    tTimeout       ` §џ                 bBusy          ` §џ              bError          ` §џ              nErrID         ` §џ              bOpened          ` §џ       )    TRUE = file opened, FALSE = file closed    getLine           ''       T_MaxString ` §џ                       |ET     џџџџ        "   FB_TRANSLATELOCALTIMETOUTCBYZONEID           inLocal                   
   TIMESTRUCT ` §џ       9    Input time in local system time format (time structure) 	   tziSommer                   
   TIMESTRUCT ` §џ       A    tzInfo.daylightDate transition time in local system time format 	   tziWinter                   
   TIMESTRUCT ` §џ       A    tzInfo.standardDate transition time in local system time Format    tziLocalSommer             
   T_FILETIME ` §џ       ?    tzInfo.daylightDate transition time in local file time format    tziLocalWinter             
   T_FILETIME ` §џ       ?    tzInfo.standardDate transition time in local file time Format    tziLocalSommerJump             
   T_FILETIME ` §џ              tziLocalWinterJump             
   T_FILETIME ` §џ              ui64LocalIn                T_ULARGE_INTEGER ` §џ       (    Local input time as unsigned 64 number    ui64LocalSommer                T_ULARGE_INTEGER ` §џ       5    Local tzInfo.daylightDate as unsigned 64 bit number    ui64LocalWinter                T_ULARGE_INTEGER ` §џ       5    Local tzInfo.standardDate as unsigned 64 bit number    in_to_s         ` §џ       <    Input time[Local] to tzInfo.daylightDate[Local] cmp result    in_to_w         ` §џ       <    Input time[Local] to tzInfo.standardDate[Local] cmp result    s_to_w         ` §џ       E    tzInfo.daylightDate[Local] to tzInfo.standardDate[Local] cmp result    in_to_s_jump         ` §џ        2    Input time[Local] to tzInfo jump time cmp result    in_to_w_jump         ` §џ!       2    Input time[Local] to tzInfo jump time cmp result    iStandardBias         ` §џ#              iDaylightBias         ` §џ$              ui64PreviousIn                T_ULARGE_INTEGER ` §џ&              ui64FallDiff                T_ULARGE_INTEGER ` §џ'           	   bFallDiff          ` §џ(           Nur zu Testzwecken    dtSommerJump         ` §џ*              dtWinterJump         ` §џ+                 in             
   T_FILETIME   §џ       /    Time to be converted (Local file time format)    tzInfo                     ST_TimeZoneInformation   §џ           Time zone information    wDldYear           §џ       p    Optional daylightDate.wYear value. If 0 => not used (default) else used only if tzInfo.daylightDate.wYear = 0.    wStdYear           §џ       p    Optional standardDate.wYear value. If 0 => not used (default) else used only if tzInfo.standardDate.wYear = 0.       out             
   T_FILETIME   §џ
       '    Converted time (UTC file time format)    eTzID           eTimeZoneID_Unknown       E_TimeZoneID   §џ       +    Detected daylight saving time information    bB            §џ            FALSE => A time, TRUE => B time   bias           §џ           Bias value in minutes             |ET      џџџџ        "   FB_TRANSLATEUTCTOLOCALTIMEBYZONEID           inUtc                   
   TIMESTRUCT ` §џ       7    Input time in UTC system time format (time structure)    bInAsStruct          ` §џ       k    TRUE => inUtc is valid/converted to UTC system time format, FALSE => inUtc is not valid/not converted yet 	   tziSommer                   
   TIMESTRUCT ` §џ       A    tzInfo.daylightDate transition time in local system time format 	   tziWinter                   
   TIMESTRUCT ` §џ       A    tzInfo.standardDate transition time in local system time Format    tziLocalSommer             
   T_FILETIME ` §џ       ?    tzInfo.daylightDate transition time in local file time format    tziLocalWinter             
   T_FILETIME ` §џ       ?    tzInfo.standardDate transition time in local file time Format    tziUtcSommer             
   T_FILETIME ` §џ       =    tzInfo.daylightDate transition time in UTC file time format    tziUtcWinter             
   T_FILETIME ` §џ       =    tzinfo.standardDate transition time in UTC file time format 	   ui64UtcIn                T_ULARGE_INTEGER ` §џ       &    UTC input time as unsigned 64 number    ui64UtcSommer                T_ULARGE_INTEGER ` §џ       3    UTC tzInfo.daylightDate as unsigned 64 bit number    ui64UtcWinter                T_ULARGE_INTEGER ` §џ       3    UTC tzInfo.standardDate as unsigned 64 bit number    in_to_s         ` §џ       8    Input time[UTC] to tzInfo.daylightDate[UTC] cmp result    in_to_w         ` §џ       8    Input time[UTC] to tzInfo.standardDate[UTC] cmp result    s_to_w         ` §џ        A    tzInfo.daylightDate[UTC] to tzInfo.standardDate[UTC] cmp result    out_to_s         ` §џ!       =    Output time[local] to tzInfo.daylightDate[local] cmp result    out_to_w         ` §џ"       =    Output time[local] to tzInfo.standardDate[local] cmp result       in             
   T_FILETIME   §џ       .    Time to be converted (UTC, file time format)    tzInfo                     ST_TimeZoneInformation   §џ           Time zone information    wDldYear           §џ       p    Optional daylightDate.wYear value. If 0 => not used (default) else used only if tzInfo.daylightDate.wYear = 0.    wStdYear           §џ       p    Optional standardDate.wYear value. If 0 => not used (default) else used only if tzInfo.standardDate.wYear = 0.       out             
   T_FILETIME   §џ
       (    Converted time (local file time format)   eTzID           eTimeZoneID_Unknown       E_TimeZoneID   §џ       0    Detected daylight saving time/zone information    bB            §џ            FALSE => A time, TRUE => B time   bias           §џ           Bias value in minutes             |ET      џџџџ            FB_TZSPECIFICLOCALTIMETOFILETIME           fbBase       !    ( wStdYear := 0, wDldYear := 0 )                                         "   FB_TranslateLocalTimeToUtcByZoneID ` §џ           Underlaid base function block       in             
   T_FILETIME   §џ       }    Time zone's specific local file time. 64-bit value representing the number of 100-nanosecond intervals since January 1, 1601   tzInfo                     ST_TimeZoneInformation   §џ           Time zone settings       out             
   T_FILETIME   §џ       E    Converted time in Coordinated Universal Time (UTC) file time format    eTzID           eTimeZoneID_Unknown       E_TimeZoneID   §џ	       "    Daylight saving time information    bB            §џ
            FALSE => A time, TRUE => B time            |ET      џџџџ        "   FB_TZSPECIFICLOCALTIMETOSYSTEMTIME           fbBase                                         "   FB_TranslateLocalTimeToUtcByZoneID ` §џ           Underlaid base function block       in                   
   TIMESTRUCT   §џ       g    Time zone's specific local system time. Structure that specifies the system time since January 1, 1601   tzInfo                     ST_TimeZoneInformation   §џ           Time zone settings       out                   
   TIMESTRUCT   §џ       8    Coordinated Universal Time (UTC) in system time format    eTzID           eTimeZoneID_Unknown       E_TimeZoneID   §џ	       "    Daylight saving time information    bB            §џ
            FALSE => A time, TRUE => B time            |ET      џџџџ           FB_WRITEPERSISTENTDATA           fbAdsWrtCtl       9    ( ADSSTATE := ADSSTATE_SAVECFG, LEN := 0, SRCADDR := 0 )                          	   ADSWRTCTL ` §џ                 NETID            
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id)    PORT           §џ       l    Contains the ADS port number of the PLC run-time system whose persistent data is to be stored (801, 811...)   START            §џ       6    Rising edge on this input activates the fb execution    TMOUT         §џ           Max fb execution time    MODE           SPDM_2PASS       E_PersistentMode   §џ       D    =SPDM_2PASS: optimized boost; =SPDM_VAR_BOOST: boost per variable;       BUSY            §џ              ERR            §џ              ERRID           §џ                       |ET     џџџџ           FILETIME_TO_DT           ui64                T_ULARGE_INTEGER ` §џ	                 fileTime             
   T_FILETIME   §џ           Windows file time.       FILETIME_TO_DT                                     |ET      џџџџ           FILETIME_TO_SYSTEMTIME     	      D         ` §џ              M         ` §џ              Y         ` §џ           
   uiPastDays                T_ULARGE_INTEGER ` §џ	              uiPastYears                T_ULARGE_INTEGER ` §џ
              uiRemainder                T_ULARGE_INTEGER ` §џ           
   dwPastDays         ` §џ              dwPastYears         ` §џ           
   dwYearDays         ` §џ                 fileTime             
   T_FILETIME   §џ                 FILETIME_TO_SYSTEMTIME                   
   TIMESTRUCT                             |ET      џџџџ           FIX16_TO_LREAL               in                 T_FIX16   §џ                 FIX16_TO_LREAL                                                  |ET      џџџџ           FIX16_TO_WORD               in                 T_FIX16   §џ           16 bit fixed point number       FIX16_TO_WORD                                     |ET      џџџџ           FIX16ADD               augend                 T_FIX16   §џ              addend                 T_FIX16   §џ                 FIX16Add                 T_FIX16                             |ET      џџџџ        
   FIX16ALIGN               in                 T_FIX16   §џ       #    16 bit signed fixed point number.    n                           §џ       ,    Number of fractional bits (decimal places)    
   FIX16Align                 T_FIX16                             |ET      џџџџ           FIX16DIV           tmpA         ` §џ	                 dividend                 T_FIX16   §џ              divisor                 T_FIX16   §џ                 FIX16Div                 T_FIX16                             |ET      џџџџ           FIX16MUL           tmp         ` §џ	                 multiA                 T_FIX16   §џ              multiB                 T_FIX16   §џ                 FIX16Mul                 T_FIX16                             |ET      џџџџ           FIX16SUB               minuend                 T_FIX16   §џ           
   subtrahend                 T_FIX16   §џ                 FIX16Sub                 T_FIX16                             |ET      џџџџ           GETREMOTEPCINFO        	   fbAdsRead       #    ( PORT:=1, IDXGRP:=3, IDXOFFS:=1 )              	   T_AmsPort                          ADSREAD ` §џ           	   fbTrigger                 R_TRIG ` §џ              state         ` §џ           
   RouterInfo   	  c            
                ST_AmsRouterInfoEntry         ` §џ              iIndex         ` §џ                 NETID            
   T_AmsNetId   §џ       D    Target NetID, usually left as empty string for reading local infos    START            §џ       6    Rising edge on this input activates the fb execution    TMOUT         §џ           Max fb execution time       BUSY            §џ       
    Ads busy    ERR            §џ	           Ads error    ERRID           §џ
           Ads Error    RemotePCInfo               REMOTEPCINFOSTRUCT   §џ       N    field with all NetIDДs and PC names found in router, ordered as router gives             |ET     џџџџ           HEXSTR_TO_DATA           pSrc               ` §џ
              pDest               ` §џ              ascii         ` §џ              nibble         ` §џ              bAdd          ` §џ              bLN          ` §џ           hi/lo nibble       sHex               T_MaxString   §џ           Hex string to convert    pData           §џ           Pointer to destination buffer    cbData           §џ       !    Byte size of destination buffer       HEXSTR_TO_DATA                                     |ET      џџџџ           HOST_TO_BE128               in                T_UHUGE_INTEGER   §џ                 HOST_TO_BE128                T_UHUGE_INTEGER                             |ET      џџџџ           HOST_TO_BE16               in           §џ                 HOST_TO_BE16                                     |ET      џџџџ           HOST_TO_BE32           parr    	                            ` §џ                 in           §џ                 HOST_TO_BE32                                     |ET      џџџџ           HOST_TO_BE64               in                T_ULARGE_INTEGER   §џ                 HOST_TO_BE64                T_ULARGE_INTEGER                             |ET      џџџџ           INT64_TO_LREAL               in                T_LARGE_INTEGER   §џ                 INT64_TO_LREAL                                                  |ET      џџџџ        
   INT64ADD64           bOV          ` §џ	                 i64a                T_LARGE_INTEGER   §џ              i64b                T_LARGE_INTEGER   §џ              
   Int64Add64                T_LARGE_INTEGER                             |ET      џџџџ           INT64ADD64EX               augend                T_LARGE_INTEGER   §џ              addend                T_LARGE_INTEGER   §џ                 Int64Add64Ex                T_LARGE_INTEGER                       bOV            §џ       3    TRUE => arithmetic overflow, FALSE => no overflow         |ET      џџџџ        
   INT64CMP64               i64a                T_LARGE_INTEGER   §џ              i64b                T_LARGE_INTEGER   §џ	              
   Int64Cmp64                                     |ET      џџџџ           INT64DIV64EX           bIsNegative          ` §џ           
   sRemainder                T_ULARGE_INTEGER ` §џ                 dividend                T_LARGE_INTEGER   §џ              divisor                T_LARGE_INTEGER   §џ                 Int64Div64Ex                T_LARGE_INTEGER                    	   remainder                 T_LARGE_INTEGER  §џ                   |ET      џџџџ           INT64ISZERO               i64                T_LARGE_INTEGER   §џ                 Int64IsZero                                      |ET      џџџџ           INT64NEGATE               i64                T_LARGE_INTEGER   §џ                 Int64Negate                T_LARGE_INTEGER                             |ET      џџџџ           INT64NOT               i64                T_LARGE_INTEGER   §џ                 Int64Not                T_LARGE_INTEGER                             |ET      џџџџ        
   INT64SUB64               i64a                T_LARGE_INTEGER   §џ       	    minuend    i64b                T_LARGE_INTEGER   §џ           substrahend    
   Int64Sub64                T_LARGE_INTEGER                             |ET      џџџџ           ISFINITE        	   ptrDouble    	                            ` §џ           	   ptrSingle               ` §џ	                 x                 T_ARG   §џ                 IsFinite                                      |ET      џџџџ           LARGE_INTEGER            
   dwHighPart           §џ           	   dwLowPart           §џ                 LARGE_INTEGER                T_LARGE_INTEGER                             |ET      џџџџ           LARGE_TO_ULARGE               in                T_LARGE_INTEGER   §џ                 LARGE_TO_ULARGE                T_ULARGE_INTEGER                             |ET      џџџџ           LREAL_TO_FIX16               in                        §џ           LREAL number to convert    n                          §џ       ,    Number of fractional bits (decimal places)       LREAL_TO_FIX16                 T_FIX16                             |ET      џџџџ           LREAL_TO_FMTSTR           rec              
   T_FloatRec ` §џ              pOut               ` §џ              iStart         ` §џ              iEnd         ` §џ              i         ` §џ                 in                        §џ
           
   iPrecision           §џ              bRound            §џ                 LREAL_TO_FMTSTR    џ      џ                             |ET      џџџџ           LREAL_TO_INT64               in                        §џ                 LREAL_TO_INT64                T_LARGE_INTEGER                             |ET      џџџџ           LREAL_TO_UINT64           tmp                      ` §џ                 in                        §џ                 LREAL_TO_UINT64                T_ULARGE_INTEGER                             |ET      џџџџ           MAXSTRING_TO_BYTEARR           cbCopy         ` §џ           	   Index7001                            in               T_MaxString   §џ                 MAXSTRING_TO_BYTEARR   	  џ                                                 |ET     џџџџ           NT_ABORTSHUTDOWN           fbAdsWrtCtl       N    ( PORT := AMSPORT_R3_SYSSERV, ADSSTATE := ADSSTATE_POWERGOOD, DEVSTATE := 0 )              	   T_AmsPort         
               	   ADSWRTCTL ` §џ                 NETID            
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id)    START            §џ       6    Rising edge on this input activates the fb execution    TMOUT         §џ           Max fb execution time       BUSY            §џ              ERR            §џ	              ERRID           §џ
                       |ET     џџџџ        
   NT_GETTIME        	   fbAdsRead       i    ( PORT := AMSPORT_R3_SYSSERV, IDXGRP := SYSTEMSERVICE_TIMESERVICES, IDXOFFS := TIMESERVICE_DATEANDTIME )              	   T_AmsPort                         ADSREAD ` §џ                 NETID            
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id)    START            §џ       6    Rising edge on this input activates the fb execution    TMOUT         §џ           Max fb execution time       BUSY            §џ              ERR            §џ	              ERRID           §џ
              TIMESTR                   
   TIMESTRUCT   §џ           Local windows system time             |ET     џџџџ        	   NT_REBOOT           fbAdsWrtCtl       M    ( PORT := AMSPORT_R3_SYSSERV, ADSSTATE := ADSSTATE_SHUTDOWN, DEVSTATE := 1 )              	   T_AmsPort                       	   ADSWRTCTL ` §џ                 NETID            
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id)    DELAY           §џ           Reboot delay time [seconds]    START            §џ       6    Rising edge on this input activates the fb execution    TMOUT         §џ           Max fb execution time       BUSY            §џ	              ERR            §џ
              ERRID           §џ                       |ET     џџџџ           NT_SETLOCALTIME        
   fbAdsWrite       d    ( PORT:= AMSPORT_R3_SYSSERV, IDXGRP:= SYSTEMSERVICE_TIMESERVICES, IDXOFFS:=TIMESERVICE_DATEANDTIME)              	   T_AmsPort                         ADSWRITE ` §џ                 NETID            
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id)    TIMESTR                   
   TIMESTRUCT   §џ           New local system time    START            §џ       6    Rising edge on this input activates the fb execution    TMOUT         §џ           Max fb execution time       BUSY            §џ	              ERR            §џ
              ERRID           §џ                       |ET     џџџџ           NT_SETTIMETORTCTIME        
   fbAdsWrite       :    ( PORT := AMSPORT_R3_SYSSERV, IDXGRP := 4, IDXOFFS := 0 )              	   T_AmsPort                           ADSWRITE ` §џ           
   fbRegQuery       K    ( sSubKey := 'Software\Beckhoff\TwinCAT\System', sValName := 'NumOfCPUs' )                        T_MaxString                    T_MaxString                   FB_RegQueryValue ` §џ           	   fbTrigger                 R_TRIG ` §џ              bTmp         ` §џ              state         ` §џ              bInit         ` §џ           	   numOfCPUs         ` §џ                 NETID            
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id)    SET            §џ       6    Rising edge on this input activates the fb execution    TMOUT         §џ           Max fb execution time       BUSY            §џ              ERR            §џ	              ERRID           §џ
                       |ET     џџџџ           NT_SHUTDOWN           fbAdsWrtCtl       M    ( PORT := AMSPORT_R3_SYSSERV, ADSSTATE := ADSSTATE_SHUTDOWN, DEVSTATE := 0 )              	   T_AmsPort                        	   ADSWRTCTL ` §џ                 NETID            
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id)    DELAY           §џ           Shutdown delay time [seconds]    START            §џ       6    Rising edge on this input activates the fb execution    TMOUT         §џ           Max fb execution time       BUSY            §џ	              ERR            §џ
              ERRID           §џ                       |ET     џџџџ           NT_STARTPROCESS        
   fbAdsWrite       O    ( PORT := AMSPORT_R3_SYSSERV, IDXGRP:=SYSTEMSERVICE_STARTPROCESS, IDXOFFS:=0 )              	   T_AmsPort         є                 ADSWRITE ` §џ           	   fbTrigger                 R_TRIG ` §џ              state         ` §џ              LenPath         ` §џ              LenDir         ` §џ           
   LenComLine         ` §џ              req                  ST_AmsStartProcessReq ` §џ           data buffer       NETID            
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id)    PATHSTR               T_MaxString   §џ              DIRNAME               T_MaxString   §џ           	   COMNDLINE               T_MaxString   §џ              START            §џ       6    Rising edge on this input activates the fb execution    TMOUT         §џ           Max fb execution time       BUSY            §џ              ERR            §џ              ERRID           §џ                       |ET     џџџџ           OTSTRUCT_TO_TIME           tmpMilli         ` §џ                 OTIN                    OTSTRUCT   §џ                 OTSTRUCT_TO_TIME                                     |ET      џџџџ           PBOOL_TO_BOOL               in                  §џ                 PBOOL_TO_BOOL                                      |ET      џџџџ           PBYTE_TO_BYTE               in                 §џ                 PBYTE_TO_BYTE                                     |ET      џџџџ           PDATE_TO_DATE               in                 §џ                 PDATE_TO_DATE                                     |ET      џџџџ           PDINT_TO_DINT               in                 §џ                 PDINT_TO_DINT                                     |ET      џџџџ        	   PDT_TO_DT               in                 §џ              	   PDT_TO_DT                                     |ET      џџџџ           PDWORD_TO_DWORD               in                 §џ                 PDWORD_TO_DWORD                                     |ET      џџџџ           PHUGE_TO_HUGE               in                 T_HUGE_INTEGER        §џ                 PHUGE_TO_HUGE                T_HUGE_INTEGER                             |ET      џџџџ           PINT_TO_INT               in                 §џ                 PINT_TO_INT                                     |ET      џџџџ           PLARGE_TO_LARGE               in                 T_LARGE_INTEGER        §џ                 PLARGE_TO_LARGE                T_LARGE_INTEGER                             |ET      џџџџ           PLC_READSYMINFO        	   fbAdsRead       3    ( IDXGRP := ADSIGRP_SYM_UPLOADINFO, IDXOFFS := 0 )       №                 ADSREAD ` §џ           	   fbTrigger                 R_TRIG ` §џ              state         ` §џ              SymInfoStruct   	                       ` §џ                 NETID            
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id)    PORT           §џ              START            §џ       6    Rising edge on this input activates the fb execution    TMOUT         §џ           Max fb execution time       BUSY            §џ	              ERR            §џ
              ERRID           §џ              SYMCOUNT           §џ              SYMSIZE           §џ                       |ET     џџџџ           PLC_READSYMINFOBYNAME           fbReadEx                                       PLC_ReadSymInfoByNameEx ` §џ                 NETID            
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id)    PORT           §џ              SYMNAME               T_MaxString   §џ              START            §џ       6    Rising edge on this input activates the fb execution    TMOUT         §џ	           Max fb execution time       BUSY            §џ              ERR            §џ              ERRID           §џ              SYMINFO                     SYMINFOSTRUCT   §џ                       |ET     џџџџ           PLC_READSYMINFOBYNAMEEX        
   fbAdsRdWrt       5    ( IDXGRP := ADSIGRP_SYM_INFOBYNAMEEX, IDXOFFS := 0 )       	№                   ADSRDWRT ` §џ           	   fbTrigger                 R_TRIG ` §џ              state         ` §џ              symInfoBuffer                            ST_AmsSymbolInfoEntry ` §џ           
   nameLength         ` §џ           
   typeLength         ` §џ              commentLength         ` §џ              nameAdrOffset         ` §џ              typeAdrOffset         ` §џ              commentAdrOffset         ` §џ              nameCpyLength         ` §џ              typeCpyLength         ` §џ               commentCpyLength         ` §џ!              endOfBufAdrOffset         ` §џ"                 NETID            
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id)    PORT           §џ              SYMNAME               T_MaxString   §џ              START            §џ       6    Rising edge on this input activates the fb execution    TMOUT         §џ	           Max fb execution time       BUSY            §џ              ERR            §џ              ERRID           §џ              SYMINFO                     SYMINFOSTRUCT   §џ              OVTYPE            §џ       @    TRUE => Type name string length overflow, FALSE => no overflow 	   OVCOMMENT            §џ       >    TRUE => Comment string length overflow, FALSE => no overflow             |ET     џџџџ        	   PLC_RESET           fbAdsWrtCtl       F    ( ADSSTATE := ADSSTATE_RESET, DEVSTATE := 0, LEN := 0, SRCADDR := 0 )                              	   ADSWRTCTL ` §џ                 NETID            
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id)    PORT           §џ              RESET            §џ       6    Rising edge on this input activates the fb execution    TMOUT         §џ           Max fb execution time       BUSY            §џ	              ERR            §џ
              ERRID           §џ                       |ET     џџџџ        	   PLC_START           fbAdsWrtCtl       D    ( ADSSTATE := ADSSTATE_RUN, DEVSTATE := 0, LEN := 0, SRCADDR := 0 )                              	   ADSWRTCTL ` §џ                 NETID            
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id)    PORT           §џ              START            §џ       6    Rising edge on this input activates the fb execution    TMOUT         §џ           Max fb execution time       BUSY            §џ	              ERR            §џ
              ERRID           §џ                       |ET     џџџџ           PLC_STOP           fbAdsWrtCtl       E    ( ADSSTATE := ADSSTATE_STOP, DEVSTATE := 0, LEN := 0, SRCADDR := 0 )                              	   ADSWRTCTL ` §џ                 NETID            
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id)    PORT           §џ              STOP            §џ       6    Rising edge on this input activates the fb execution    TMOUT         §џ           Max fb execution time       BUSY            §џ	              ERR            §џ
              ERRID           §џ                       |ET     џџџџ           PLREAL_TO_LREAL               in                              §џ                 PLREAL_TO_LREAL                                                  |ET      џџџџ           PMAXSTRING_TO_MAXSTRING               in                T_MaxString        §џ                 PMAXSTRING_TO_MAXSTRING               T_MaxString                             |ET      џџџџ           PREAL_TO_REAL               in                  §џ                 PREAL_TO_REAL                                      |ET      џџџџ           PROFILER     
      MAX_DATABUFF_SIZE    d   @  §џ              RisingEdgeStart                 R_TRIG ` §џ              RisingEdgeReset                 R_TRIG ` §џ              FallingEdgeStart                 F_TRIG ` §џ              GETCPUACCOUNT1                GETCPUACCOUNT ` §џ              OldCpuCntDW         ` §џ              MeasureData   	  d                     ` §џ              TimeSum         ` §џ              MaxData        ` §џ              idx         ` §џ                 START            §џ       0   rising edge starts measurement and falling stops   RESET            §џ                 BUSY            §џ              DATA                   PROFILERSTRUCT   §џ                       |ET     џџџџ           PSINT_TO_SINT               in                 §џ                 PSINT_TO_SINT                                     |ET      џџџџ           PSTRING_TO_STRING               in     Q       Q         §џ                 PSTRING_TO_STRING    Q       Q                              |ET      џџџџ           PTIME_TO_TIME               in                 §џ                 PTIME_TO_TIME                                     |ET      џџџџ           PTOD_TO_TOD               in                 §џ                 PTOD_TO_TOD                                     |ET      џџџџ           PUDINT_TO_UDINT               in                 §џ                 PUDINT_TO_UDINT                                     |ET      џџџџ           PUHUGE_TO_UHUGE               in                 T_UHUGE_INTEGER        §џ                 PUHUGE_TO_UHUGE                T_UHUGE_INTEGER                             |ET      џџџџ           PUINT64_TO_UINT64               in                 T_ULARGE_INTEGER        §џ                 PUINT64_TO_UINT64                T_ULARGE_INTEGER                             |ET      џџџџ           PUINT_TO_UINT               in                 §џ                 PUINT_TO_UINT                                     |ET      џџџџ           PULARGE_TO_ULARGE               in                 T_ULARGE_INTEGER        §џ                 PULARGE_TO_ULARGE                T_ULARGE_INTEGER                             |ET      џџџџ           PUSINT_TO_USINT               in                 §џ                 PUSINT_TO_USINT                                     |ET      џџџџ           PWORD_TO_WORD               in                 §џ                 PWORD_TO_WORD                                     |ET      џџџџ        
   RAD_TO_DEG               ANGLE                        §џ              
   RAD_TO_DEG                                                  |ET      џџџџ           ROUTETRANSPORT_TO_STRING               eType               E_RouteTransportType   §џ                 ROUTETRANSPORT_TO_STRING    Q       Q                              |ET      џџџџ           RTC           fbGetCpuCounter                 GETCPUCOUNTER ` §џ           
   risingEdge                 R_TRIG ` §џ              oldTick         ` §џ              currTick         ` §џ              nanoDiff         ` §џ              nanoRest         ` §џ              secDiff         ` §џ              init         ` §џ                 EN            §џ              PDT           §џ                 Q            §џ              CDT           §џ	                       |ET      џџџџ           RTC_EX           fbGetCpuCounter                 GETCPUCOUNTER ` §џ           
   risingEdge                 R_TRIG ` §џ              oldTick         ` §џ              currTick         ` §џ              nanoDiff         ` §џ              nanoRest         ` §џ              secDiff         ` §џ              init         ` §џ                 EN            §џ              PDT           §џ              PMSEK           §џ                 Q            §џ	              CDT           §џ
              CMSEK           §џ                       |ET      џџџџ           RTC_EX2     	      fbGetCpuCounter                 GETCPUCOUNTER ` §џ           
   risingEdge                 R_TRIG ` §џ              oldTick         ` §џ              currTick         ` §џ              nanoDiff         ` §џ              nanoRest         ` §џ              secDiff         ` §џ              dateTime         ` §џ              init         ` §џ                 EN            §џ              PDT                   
   TIMESTRUCT   §џ              PMICRO           §џ                 Q            §џ	              CDT       ;    ( wYear := 1970, wMonth := 1, wDay := 1, wDayOfWeek := 4 )    В                  
   TIMESTRUCT   §џ
              CMICRO           §џ                       |ET      џџџџ           SCOPEASCIIEXPORT        
   fbAdsWrite                          ADSWRITE    §џ                 bExecute            §џ           	   sFilePath               T_MaxString   §џ              tTimeout         §џ                 bBusy            §џ              bError            §џ	              iErrorId           §џ
                       |ET     џџџџ        	   SCOPEEXIT        
   fbAdsWrite                          ADSWRITE    §џ           
   RisingEdge                 R_TRIG    §џ              step            §џ              fbDelay                    TON    §џ                 bExecute            §џ       -    Rising edge starts function block execution    tTimeOut         §џ       >    Maximum time allowed for the execution of the function block       bBusy            §џ              bError            §џ              iErrorId           §џ	                       |ET     џџџџ           SCOPEGETRECORDLEN        	   fbAdsRead                          ADSREAD    §џ                 bExecute            §џ                 bBusy            §џ              bError            §џ              iErrorId           §џ           
   fRecordLen                        §џ	                       |ET      џџџџ           SCOPEGETSTATE        	   fbAdsRead                          ADSREAD    §џ              State            §џ                 bExecute            §џ                 bBusy            §џ              bError            §џ              iErrorId           §џ              bOnline            §џ	                       |ET      џџџџ           SCOPELOADFILE        
   fbAdsWrite                          ADSWRITE    §џ                 bExecute            §џ           	   sFilePath               T_MaxString   §џ              tTimeout         §џ                 bBusy            §џ              bError            §џ	              iErrorId           §џ
                       |ET     џџџџ           SCOPEMANUALTRIGGER        
   fbAdsWrite                          ADSWRITE    §џ                 bExecute            §џ                 bBusy            §џ              bError            §џ              iErrorId           §џ                       |ET      џџџџ           SCOPESAVEAS        
   RisingEdge                 R_TRIG ` §џ           
   fbAdsWrite       D    ( NETID := '', PORT := 14000, IDXGRP := 16#2000, IDXOFFS := 16#11 )             
   T_AmsNetId                 	   T_AmsPort                           ADSWRITE ` §џ              step         ` §џ                 bExecute            §џ       -    Rising edge starts function block execution 	   sFilePath               T_MaxString   §џ           e.g. c:\Axis1.scp   tTimeout         §џ       >    Maximum time allowed for the execution of the function block       bBusy            §џ              bError            §џ	              iErrorId           §џ
                       |ET     џџџџ           SCOPESETOFFLINE        
   fbAdsWrite                          ADSWRITE    §џ                 bExecute            §џ                 bBusy            §џ              bError            §џ              iErrorId           §џ                       |ET      џџџџ           SCOPESETONLINE        
   fbAdsWrite                          ADSWRITE    §џ                 bExecute            §џ                 bBusy            §џ              bError            §џ              iErrorId           §џ                       |ET      џџџџ           SCOPESETRECORDLEN        
   fbAdsWrite                          ADSWRITE    §џ                 bExecute            §џ           
   fRecordLen                        §џ                 bBusy            §џ              bError            §џ              iErrorId           §џ	                       |ET      џџџџ           SCOPEVIEWEXPORT        
   fbAdsWrite                          ADSWRITE    §џ                 bExecute            §џ           	   sFilePath               T_MaxString   §џ              tTimeout         §џ                 bBusy            §џ              bError            §џ	              iErrorId           §џ
                       |ET     џџџџ           STRING_TO_CSVFIELD           cbField         ` §џ                 in               T_MaxString   §џ       !    Input data in PLC string format    bQM            §џ	       l    TRUE => Enclose result string in quotation marks, FALSE => Don't enclose result string in quotation marks.       STRING_TO_CSVFIELD               T_MaxString                             |ET      џџџџ           STRING_TO_SYSTEMTIME           b   	                    16#31, 16#36, 16#30, 16#31, 	(* year 1601 *)
								16#2D(*-*), 16#30, 16#31(*01*),	(* month *)
								16#2D(*-*), 16#30, 16#31(*01*),	(* day *)
								16#2D(*-*), 16#30, 16#30(*00*),	(* hour *)
								16#3A(*:*), 16#30, 16#30(*00*),	(* minute *)
								16#3A(*:*), 16#30, 16#30(*00*),	(* second *)
								16#2E(*.*), 16#30, 16#30, 16#30(*000*), (* milliseconds *)
								16#00      1      6      0      1      -      0      1      -      0      1      -      0      0      :      0      0      :      0      0      .      0      0      0           ` §џ           null delimiter    ts       *    ( wYear := 1601, wMonth := 1, wDay := 1 )    A               
   TIMESTRUCT ` §џ              n         ` §џ              bFmt          ` §џ              dwYears         ` §џ              dwDays         ` §џ           	   Index7001                            in               §џ       1    Input string, format: '2007-03-05-17:35:09.223'       STRING_TO_SYSTEMTIME                   
   TIMESTRUCT                             |ET      џџџџ           STRING_TO_UINT64           ptr               ` §џ              constTen       &     ( dwHighPart := 0, dwLowPart := 10 )    
           T_ULARGE_INTEGER ` §џ	                 in               §џ                 STRING_TO_UINT64                T_ULARGE_INTEGER                             |ET      џџџџ           SYSTEMTIME_TO_DT           b   	                 ќ    16#44, 16#54, 16#23(*DT#*),
										16#31, 16#39, 16#37, 16#30(*1970*),
										16#2D(*-*), 16#30, 16#31(*01*), 16#2D(*-*), 16#30, 16#31(*01*), 16#2D(*-*), 16#30, 16#30(*00*), 16#3A(*:*), 16#30, 16#30(*00*), 16#3A(*:*), 16#30, 16#30(*00*), 16#00      D      T      #      1      9      7      0      -      0      1      -      0      1      -      0      0      :      0      0      :      0      0           ` §џ              str             ` §џ
              nSeconds         ` §џ           	   Index7001                            TIMESTR                   
   TIMESTRUCT   §џ                 SYSTEMTIME_TO_DT                                     |ET      џџџџ           SYSTEMTIME_TO_FILETIME           tmp1                T_ULARGE_INTEGER ` §џ	              tmp2                T_ULARGE_INTEGER ` §џ
              pastDays         ` §џ              i         ` §џ              
   systemTime                   
   TIMESTRUCT   §џ                 SYSTEMTIME_TO_FILETIME             
   T_FILETIME                             |ET      џџџџ           SYSTEMTIME_TO_STRING           b   	                 Љ   16#31, 16#36, 16#30, 16#31(*1601*),		(* year *)
										16#2D(*-*), 16#30, 16#31(*01*),				(* month *)
										16#2D(*-*), 16#30, 16#31(*01*),				(* day *)
										16#2D(*-*), 16#30, 16#30(*00*),				(* hour *)
										16#3A(*:*), 16#30, 16#30(*00*),				(* minute *)
										16#3A(*:*), 16#30, 16#30(*00*),				(* second *)
										16#2E(*.*), 16#30, 16#30, 16#30(*000*),		(* milliseconds *)
										16#00      1      6      0      1      -      0      1      -      0      1      -      0      0      :      0      0      :      0      0      .      0      0      0           ` §џ           	   Index7001                            in                   
   TIMESTRUCT   §џ                 SYSTEMTIME_TO_STRING                                         |ET      џџџџ        	   TC_CONFIG           fbAdsWrtCtl       e    ( PORT := AMSPORT_R3_SYSSERV, ADSSTATE := ADSSTATE_RECONFIG, DEVSTATE := 0, LEN := 0, SRCADDR := 0 )              	   T_AmsPort                                	   ADSWRTCTL ` §џ                 NETID            
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id)    SET            §џ       6    Rising edge on this input activates the fb execution    TMOUT         §џ           Max fb execution time       BUSY            §џ	              ERR            §џ
              ERRID           §џ                       |ET     џџџџ           TC_CPUUSAGE        	   fbAdsRead       5    ( PORT:= AMSPORT_R0_RTIME, IDXGRP:= 1, IDXOFFS:= 6 )              	   T_AmsPort                          ADSREAD ` §џ                 NETID            
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id)    START            §џ       6    Rising edge on this input activates the fb execution    TMOUT         §џ           Max fb execution time       BUSY            §џ	              ERR            §џ
              ERRID           §џ              USAGE           §џ          in %            |ET     џџџџ        
   TC_RESTART           fbAdsWrtCtl       b    ( PORT := AMSPORT_R3_SYSSERV, ADSSTATE := ADSSTATE_RESET, DEVSTATE := 0, LEN := 0, SRCADDR := 0 )              	   T_AmsPort                                	   ADSWRTCTL ` §џ                 NETID            
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id)    RESTART            §џ       6    Rising edge on this input activates the fb execution    TMOUT         §џ           Max fb execution time       BUSY            §џ	              ERR            §џ
              ERRID           §џ                       |ET     џџџџ           TC_STOP           fbAdsWrtCtl       a    ( PORT := AMSPORT_R3_SYSSERV, ADSSTATE := ADSSTATE_STOP, DEVSTATE := 0, LEN := 0, SRCADDR := 0 )              	   T_AmsPort                                	   ADSWRTCTL ` §џ                 NETID            
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id)    STOP            §џ       6    Rising edge on this input activates the fb execution    TMOUT         §џ           Max fb execution time       BUSY            §џ	              ERR            §џ
              ERRID           §џ                       |ET     џџџџ           TC_SYSLATENCY        	   fbAdsRead       8    ( PORT := AMSPORT_R0_RTIME, IDXGRP := 1, IDXOFFS := 2 )              	   T_AmsPort                          ADSREAD ` §џ           	   fbTrigger                 R_TRIG ` §џ              state         ` §џ              tmpData   	                      ` §џ                 NETID            
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id)    START            §џ       6    Rising edge on this input activates the fb execution    TMOUT         §џ           Max fb execution time       BUSY            §џ	              ERR            §џ
              ERRID           §џ              ACTUAL           §џ           Actual latency in Еs    MAXIMUM           §џ           Maximum latency in Еs             |ET     џџџџ           TIME_TO_OTSTRUCT           tmpMilli         ` §џ                 TIN           §џ                 TIME_TO_OTSTRUCT                    OTSTRUCT                             |ET      џџџџ           UINT32X32TO64           Tmp1         ` §џ	              Tmp2         ` §џ
              Tmp3         ` §џ              Tmp4         ` §џ              DW1         ` §џ              DW2         ` §џ              DW3         ` §џ              DW4         ` §џ                 ui32a           §џ              ui32b           §џ                 UInt32x32To64                T_ULARGE_INTEGER                             |ET      џџџџ           UINT64_TO_LREAL               in                T_ULARGE_INTEGER   §џ                 UINT64_TO_LREAL                                                  |ET      џџџџ           UINT64_TO_STRING        	   remainder                T_ULARGE_INTEGER ` §џ              constTen       &     ( dwHighPart := 0, dwLowPart := 10 )    
           T_ULARGE_INTEGER ` §џ	                 in                T_ULARGE_INTEGER   §џ                 UINT64_TO_STRING                                         |ET      џџџџ           UINT64ADD64           bOV          ` §џ	                 ui64a                T_ULARGE_INTEGER   §џ              ui64b                T_ULARGE_INTEGER   §џ                 UInt64Add64                T_ULARGE_INTEGER                             |ET      џџџџ           UINT64ADD64EX               augend                T_ULARGE_INTEGER   §џ              addend                T_ULARGE_INTEGER   §џ                 UInt64Add64Ex                T_ULARGE_INTEGER                       bOV            §џ       3    TRUE => arithmetic overflow, FALSE => no overflow         |ET      џџџџ        	   UINT64AND               ui64a                T_ULARGE_INTEGER   §џ              ui64b                T_ULARGE_INTEGER   §џ              	   UInt64And                T_ULARGE_INTEGER                             |ET      џџџџ           UINT64CMP64               ui64a                T_ULARGE_INTEGER   §џ              ui64b                T_ULARGE_INTEGER   §џ	                 UInt64Cmp64                                     |ET      џџџџ           UINT64DIV16EX        	   pDividend    	                            ` §џ              pResult    	                            ` §џ              rest         ` §џ                 dividend                T_ULARGE_INTEGER   §џ              divisor           §џ                 UInt64Div16Ex                T_ULARGE_INTEGER                    	   remainder                 T_ULARGE_INTEGER  §џ                   |ET      џџџџ           UINT64DIV64        	   remainder                T_ULARGE_INTEGER ` §џ	                 dividend                T_ULARGE_INTEGER   §џ              divisor                T_ULARGE_INTEGER   §џ                 UInt64Div64                T_ULARGE_INTEGER                             |ET      џџџџ           UINT64DIV64EX           msBit       /    ( dwHighPart := 16#80000000, 	dwLowPart := 0 )               T_ULARGE_INTEGER ` §џ              bitShift         ` §џ              cmp         ` §џ              in   	                      T_ULARGE_INTEGER         ` §џ              out   	                      T_ULARGE_INTEGER         ` §џ           
   cbReturned         ` §џ           	   Index7001                            dividend                T_ULARGE_INTEGER   §џ              divisor                T_ULARGE_INTEGER   §џ                 UInt64Div64Ex                T_ULARGE_INTEGER                    	   remainder                 T_ULARGE_INTEGER  §џ                   |ET      џџџџ           UINT64ISZERO               ui64                T_ULARGE_INTEGER   §џ                 UInt64isZero                                      |ET      џџџџ           UINT64LIMIT               ui64min                T_ULARGE_INTEGER   §џ              ui64in                T_ULARGE_INTEGER   §џ              ui64max                T_ULARGE_INTEGER   §џ                 UInt64Limit                T_ULARGE_INTEGER                             |ET      џџџџ        	   UINT64MAX               ui64a                T_ULARGE_INTEGER   §џ              ui64b                T_ULARGE_INTEGER   §џ              	   UInt64Max                T_ULARGE_INTEGER                             |ET      џџџџ        	   UINT64MIN               ui64a                T_ULARGE_INTEGER   §џ              ui64b                T_ULARGE_INTEGER   §џ              	   UInt64Min                T_ULARGE_INTEGER                             |ET      џџџџ           UINT64MOD64               dividend                T_ULARGE_INTEGER   §џ              divisor                T_ULARGE_INTEGER   §џ                 UInt64Mod64                T_ULARGE_INTEGER                             |ET      џџџџ           UINT64MUL64           bOV          ` §џ	                 multiplicand                T_ULARGE_INTEGER   §џ           
   multiplier                T_ULARGE_INTEGER   §џ                 UInt64Mul64                T_ULARGE_INTEGER                             |ET      џџџџ           UINT64MUL64EX           bCarry          ` §џ           	   bSumCarry          ` §џ              n         ` §џ              m         ` §џ                 multiplicand                T_ULARGE_INTEGER   §џ           
   multiplier                T_ULARGE_INTEGER   §џ                 UInt64Mul64Ex                T_ULARGE_INTEGER                       bOV            §џ       3    TRUE => Arithmetic overflow, FALSE => no overflow         |ET      џџџџ        	   UINT64NOT               ui64                T_ULARGE_INTEGER   §џ              	   UInt64Not                T_ULARGE_INTEGER                             |ET      џџџџ           UINT64OR               ui64a                T_ULARGE_INTEGER   §џ              ui64b                T_ULARGE_INTEGER   §џ                 UInt64Or                T_ULARGE_INTEGER                             |ET      џџџџ        	   UINT64ROL           bMSB          ` §џ	                 ui64                T_ULARGE_INTEGER   §џ              n           §џ              	   UInt64Rol                T_ULARGE_INTEGER                             |ET      џџџџ        	   UINT64ROR           bLSB          ` §џ	                 ui64                T_ULARGE_INTEGER   §џ              n           §џ              	   UInt64Ror                T_ULARGE_INTEGER                             |ET      џџџџ        	   UINT64SHL               ui64                T_ULARGE_INTEGER   §џ              n           §џ              	   UInt64Shl                T_ULARGE_INTEGER                             |ET      џџџџ        	   UINT64SHR               ui64                T_ULARGE_INTEGER   §џ              n           §џ              	   UInt64Shr                T_ULARGE_INTEGER                             |ET      џџџџ           UINT64SUB64               ui64a                T_ULARGE_INTEGER   §џ              ui64b                T_ULARGE_INTEGER   §џ                 UInt64Sub64                T_ULARGE_INTEGER                             |ET      џџџџ        	   UINT64XOR               ui64a                T_ULARGE_INTEGER   §џ              ui64b                T_ULARGE_INTEGER   §џ              	   UInt64Xor                T_ULARGE_INTEGER                             |ET      џџџџ           ULARGE_INTEGER            
   dwHighPart           §џ           	   dwLowPart           §џ                 ULARGE_INTEGER                T_ULARGE_INTEGER                             |ET      џџџџ           ULARGE_TO_LARGE               in                T_ULARGE_INTEGER   §џ                 ULARGE_TO_LARGE                T_LARGE_INTEGER                             |ET      џџџџ           WORD_TO_FIX16               in           §џ           16 bit fixed point number    n                           §џ           number of fractional bits       WORD_TO_FIX16                 T_FIX16                             |ET      џџџџ           WRITEPERSISTENTDATA           fbAdsWrtCtl       H    ( ADSSTATE := ADSSTATE_SAVECFG, DEVSTATE := 0, LEN := 0, SRCADDR := 0 )                              	   ADSWRTCTL ` §џ                 NETID            
   T_AmsNetId   §џ       &    TwinCAT network address (ams net id)    PORT           §џ       l    Contains the ADS port number of the PLC run-time system whose persistent data is to be stored (801, 811...)   START            §џ       6    Rising edge on this input activates the fb execution    TMOUT         §џ           Max fb execution time       BUSY            §џ
              ERR            §џ              ERRID           §џ                       |ET     џџџџ       c:\users\max\desktop\twincat\lib\SysLibTargetVisu.lib @                                                                                1       
   BEGINPAINT               stName    Q       Q    §џ              dwFlags           §џ              nBmpId           §џ           	   dwBgColor           §џ              
   BeginPaint                                      |ET     џџџџ           CALCROTATION            	   pnXCorner                 §џ           	   pnYCorner                 §џ           	   pmXCorner                 §џ           	   pmYCorner                 §џ              nXCenter           §џ              nYCenter           §џ              nAngle           §џ	                 CalcRotation                                      |ET     џџџџ           CHANGEPASSWORD               pCurrentUserLevel                 §џ              nCurrentNumOfUsers           §џ              pCurrentUsers    	          Q       Q                 §џ              pCurrentPasswords    	          Q       Q                 §џ              pCurrentLevels    	                              §џ                 ChangePassword                                      |ET     џџџџ           CHANGEUSERLEVEL               pCurrentUserLevel                 §џ              nCurrentNumOfUsers           §џ              pCurrentUsers    	          Q       Q                 §џ              pCurrentPasswords    	          Q       Q                 §џ              pCurrentLevels    	                              §џ                 ChangeUserLevel                                      |ET     џџџџ           CREATEBITMAP               nSize           §џ           	   pdwBitmap                 §џ                 CreateBitmap                                     |ET     џџџџ           CREATEUSERDEFINEDCONTROL               stIdentification             §џ              stParams             §џ              iType           §џ                 CreateUserdefinedControl                                     |ET     џџџџ           DELETEBITMAP               nId           §џ                 DeleteBitmap                                      |ET     џџџџ        
   DRAWBITMAP               nId           §џ              nXCorner           §џ              nYCorner           §џ              mXCorner           §џ              mYCorner           §џ              nIso           §џ              dwColorTransparent           §џ	              bVisible            §џ
              
   DrawBitmap                                      |ET     џџџџ           DRAWBITMAPBYSTRING               stBitmap    Q       Q    §џ              nXCorner           §џ              nYCorner           §џ              mXCorner           §џ              mYCorner           §џ              nIso           §џ              dwColorTransparent           §џ	              bVisible            §џ
                 DrawBitmapByString                                      |ET     џџџџ        
   DRAWBUTTON         	      nXCorner           §џ              nYCorner           §џ              mXCorner           §џ              mYCorner           §џ              stText             §џ              dwDrawFlags           §џ           
   bIsClicked            §џ	              dwFlags           §џ
              bVisible            §џ              
   DrawButton                                      |ET     џџџџ        	   DRAWEDITC               nXCorner           §џ              nYCorner           §џ              mXCorner           §џ              mYCorner           §џ              stText             §џ              stExpression    Q       Q    §џ           	   nIsString           §џ	              nType           §џ
              stMin    Q       Q    §џ              stMax    Q       Q    §џ           	   stComment    Q       Q    §џ              	   DrawEditC                                      |ET     џџџџ           DRAWPIE               nXCorner           §џ              nYCorner           §џ              mXCorner           §џ              mYCorner           §џ              nAngleStart           §џ           	   nAngleEnd           §џ              nAngle           §џ	           
   dwPieFlags           §џ
              stText             §џ              dwDrawFlags           §џ              bVisible            §џ                 DrawPie                                      |ET     џџџџ           DRAWPOLYGON               nNumberOfPoints           §џ           	   pnXPoints                 §џ           	   pnYPoints                 §џ              stText             §џ              dwDrawFlags           §џ              nType           §џ              bVisible            §џ	                 DrawPolygon                                      |ET     џџџџ           DRAWRECT               nXCorner           §џ              nYCorner           §џ              mXCorner           §џ              mYCorner           §џ              stText             §џ              dwDrawFlags           §џ              nType           §џ	              bVisible            §џ
                 DrawRect                                      |ET     џџџџ           DRAWTEXT               nXCorner           §џ              nYCorner           §џ              mXCorner           §џ              mYCorner           §џ              stText             §џ              dwDrawFlags           §џ              bVisible            §џ	                 DrawText                                      |ET     џџџџ           ENDPAINT               stName    Q       Q    §џ              dwFlags           §џ                 EndPaint                                      |ET     џџџџ           ENUMTOSTRING               nId           §џ              pstEnum     Q       Q         §џ              nEnum           §џ                 EnumToString                                      |ET     џџџџ           EXECUTECOMMAND            	   stCommand             §џ              nType           §џ                 ExecuteCommand                                     |ET     џџџџ           EXECUTEUSERDEFINEDCONTROLCALL               nIndex           §џ              stCallIdentification             §џ              stParam             §џ              pstReturnValue                   §џ       ,    may be null if no return value is expected    nReturnBufferSize           §џ       I    the maximal number of characters that can be returned in pstReturnValue    pbValueReturned                  §џ       ,    may be null if no return value is expected       ExecuteUserdefinedControlCall                                      |ET     џџџџ           GETSURROUNDRECT            	   pnXCorner                 §џ           	   pnYCorner                 §џ           	   pmXCorner                 §џ           	   pmYCorner                 §џ              nNumberOfPoints           §џ           	   pnXPoints                 §џ           	   pnYPoints                 §џ	                 GetSurroundRect                                      |ET     џџџџ           GETTEXT               stResult             §џ              nResultLength           §џ              stPrefix    Q       Q    §џ              dwID           §џ                 GetText                                      |ET     џџџџ           GETTEXTBYSTRINGID               stResult             §џ              nResultLength           §џ              stPrefix    Q       Q    §џ              stID    Q       Q    §џ                 GetTextByStringId                                      |ET     џџџџ           GETUNICODETEXT               pResult    	  '                           §џ              nResultLength           §џ              stPrefix    Q       Q    §џ              dwID           §џ                 GetUnicodeText                                      |ET     џџџџ           GETUNICODETEXTBYSTRINGID               pResult    	  '                           §џ              nResultLength           §џ              stPrefix    Q       Q    §џ              stID    Q       Q    §џ                 GetUnicodeTextByStringId                                      |ET     џџџџ           ISCLICKEDEDITC               nXCorner           §џ              nYCorner           §џ              mXCorner           §џ              mYCorner           §џ              bUp            §џ              bToggle            §џ              bVisible            §џ	                 IsClickedEditC                                      |ET     џџџџ           ISCLICKEDPOLYGON               nNumberOfPoints           §џ           	   pnXPoints                 §џ           	   pnYPoints                 §џ              bUp            §џ              bToggle            §џ              nType           §џ              bVisible            §џ	                 IsClickedPolygon                                     |ET     џџџџ           ISCLICKEDRECT               nXCorner           §џ              nYCorner           §џ              mXCorner           §џ              mYCorner           §џ              bUp            §џ              bToggle            §џ              nType           §џ	              bVisible            §џ
                 IsClickedRect                                     |ET     џџџџ           ISCLOSEDEDITC               stExpression    Q       Q    §џ                 IsClosedEditC                                      |ET     џџџџ           ISKEYPRESSED               nKeyCode           §џ              bUp            §џ              nInfo           §џ                 IsKeyPressed                                      |ET     џџџџ           ISMOVEDINPOLYGON               nNumberOfPoints           §џ           	   pnXPoints                 §џ           	   pnYPoints                 §џ              pnX                 §џ              pnY                 §џ              nType           §џ              bVisible            §џ	                 IsMovedInPolygon                                     |ET     џџџџ           ISMOVEDINRECT               nXCorner           §џ              nYCorner           §џ              mXCorner           §џ              mYCorner           §џ              pnX                 §џ              pnY                 §џ              nType           §џ	              bVisible            §џ
                 IsMovedInRect                                     |ET     џџџџ           MOVEPOLYGON         	      nNumberOfPoints           §џ           	   pnXPoints                 §џ           	   pnYPoints                 §џ              nXCenter           §џ              nYCenter           §џ              nScale           §џ              nAngle           §џ	              nXOffset           §џ
              nYOffset           §џ                 MovePolygon                                      |ET     џџџџ           POPTRANSFORMATION               mXmother           §џ              mYmother           §џ              nXChild           §џ              nYChild           §џ              mXChild           §џ              mYChild           §џ              bIso            §џ	           
   bClipFrame            §џ
                 PopTransformation                                      |ET     џџџџ           PRINTF               stFormat    Q       Q    §џ              dwValue                 §џ              nType           §џ                 Printf                                       |ET     џџџџ           PRINTFINPUT               stFormat    Q       Q    §џ              dwValue                 §џ              nType           §џ                 PrintfInput                                       |ET     џџџџ           PUSHTRANSFORMATION               mXmother           §џ              mYmother           §џ              nXChild           §џ              nYChild           §џ              mXChild           §џ              mYChild           §џ              bIso            §џ	           
   bClipFrame            §џ
                 PushTransformation                                      |ET     џџџџ           REFRESHUSERDEFINEDCONTROL               nIndex           §џ              nXCorner           §џ              nYCorner           §џ              mXCorner           §џ              mYCorner           §џ              bVisible            §џ                 RefreshUserdefinedControl                                      |ET     џџџџ           REGISTERVARIABLE               stName    Q       Q    §џ              stValue    Q       Q    §џ              stAdr    Q       Q    §џ              nType           §џ                 RegisterVariable                                      |ET     џџџџ           RETURNENTEREDVALUE               stExpression    Q       Q    §џ                 ReturnEnteredValue                                       |ET     џџџџ           RGBCOLOR               byRed           §џ              byGreen           §џ              byBlue           §џ                 RGBColor                                     |ET     џџџџ        
   SENDBITMAP               stFile    Q       Q    §џ              
   SendBitmap                                     |ET     џџџџ           SENDENUM               stDescription    Q       Q    §џ                 SendEnum                                     |ET     џџџџ           SETFILL               dwFillFlags           §џ              dwFillColor           §џ                 SetFill                                      |ET     џџџџ           SETFONT            
   stFontName    Q       Q    §џ           	   nFontSize           §џ              dwFontFlags           §џ              dwFontColor           §џ                 SetFont                                      |ET     џџџџ           SETLINE               nBorderWidth           §џ              dwBorderFlags           §џ              dwBorderColor           §џ                 SetLine                                      |ET     џџџџ           STOPVISU               stName    Q       Q    §џ                 StopVisu                                      |ET     џџџџ           STRINGTOENUM               nId           §џ              nEnum                 §џ              stEnum    Q       Q    §џ                 StringToEnum                                      |ET     џџџџ           TRANSFORMPOINT               px                 §џ       r    This parameter points to the x coordinate that shall be transformed. This value will be changed during the call!    py                 §џ       r    This parameter points to the y coordinate that shall be transformed. This value will be changed during the call! 
   bTransform            §џ       Ѕ   This parameter decides the transformation direction, TRUE will transform the point into the currently
											active transformation, FALSE will transform a point outof the actual transformation. This means
											TRUE will transform a client point to a screen coordinate, FALSE a screen point to a client point where a
											client point is a point in the local coordinate system of the active reference.    dwFlags           §џ
       )    This parameter is reservered. Must be 0       TransformPoint                                      |ET     џџџџ           VERSION2326               Version           §џ                 Version2326                                      |ET     џџџџ       c:\users\max\desktop\twincat\lib\SysLibVisu.lib @                                                                                    R    @                                                                                          ARDUINOCALCULATION           connectArduino1                                            ArduinoConnect    *              disconnectArduino1                 ArduinoDisconnect    *              receiveData1                                           ArduinoReceiveData    *           	   tcpSocket              	   T_HSOCKET    *              connectionOpen             *              closeConnection            *              dataReceived             *              heading                         *              xAccA   	  
                                    *              yAccA   	  
                                    *              xBias                         *              yBias                         *              xAccel                         *              yAccel                         *              xVel                         *              yVel                         *              xPVel               0            *              yPVel               0            *              xPDist                         *              yPDist                         *              j            *               aMove             *!                     xDistA                        *              yDistA                        *              headingA                        *                       |ET  @    џџџџ           ARDUINOCONNECT        
   openSocket             д           	   fb_listen                            FB_SocketListen    д           	   fb_accept                            FB_SocketAccept    д          Timers   fbAcceptTON                    TON    д
          TCP socket variables   activeSocketHandle              	   T_HSOCKET    д              socketHandle              	   T_HSOCKET    д          Error variables   listenError            д              acceptError            д              listenErrSet             д           
   closeError            д           	   sendError            д              receiveError            д           
   bSendError             д          Trigger Variables	   bCloseAll            д          Connection information
   portNumber    И"      д            	   bAccepted             д!       	   Constants   PLCPRJ_ACCEPT_POLLING_TIME    ш      д$              display                         д&              heading                         д'              state            д)              xDist                         д+              yDist                         д,              zDist                         д-           	   listening             д0              count            д1           
   fbresetTON                    TON    д2              timerOn             д3              timeUp             д4                     arduinoConnected            д7              socketToUse              	   T_HSOCKET   д8                       |ET  @    џџџџ           ARDUINODISCONNECT           fb_closeAll        	               FB_SocketCloseAll    ж	              	   bCloseAll            ж                 connectionClosed            ж                       |ET  @    џџџџ           ARDUINORECEIVEDATA           fbReceiveTON                    TON    з       	   Functions
   fb_receive                           FB_SocketReceive    з       #   Send and receive data and variables   receiveBuffer   	                          з              bytesReceived            з           
   sendBuffer    Q       Q     з              sendBufferAddress            з           
   cbReceived            з              startPos            з              endPos            з              idx            з              cbFrame            з              sFromClient               T_MaxString    з              overflow             з              endFound             з          Error variables   acceptError            з              receiveError            з              state           з!              yDistString    Q       Q     з"              xDistString    Q       Q     з#              zDistString    Q       Q     з$              headingString    Q       Q     з%              timerOn             з&              timeUp             з'           
   fbresetTON                    TON    з(                 socketToUse              	   T_HSOCKET   з                 dataReceived            з              heading                        з              xAccel                        з              yAccel                        з	                       |ET  @    џџџџ           EXTENDEDKALMANFILTER           control                         р              estP                         р              newP          №?   1.0      №?    р              estX                         р              newX               0.0            р              newK                         р           
   oldPredict               0.0            р              count            р       
   extened KF   F          №?   1.0      №?    р              H          №?   1.0      №?    р              oldfuncH                         р              funcH                         р              oldfuncF                         р              funcF                         р              oldX                         р              oldestX                         р                 reading                        р              target                        р              noiseVar                        р                 out                        р                       |ET  @    џџџџ        	   JSCONNECT        
   openSocket             )           	   fb_listen                            FB_SocketListen    )           	   fb_accept                            FB_SocketAccept    )          Timers   fbAcceptTON                    TON    )
          TCP socket variables   activeSocketHandle              	   T_HSOCKET    )              socketHandle              	   T_HSOCKET    )          Error variables   listenError            )              acceptError            )              listenErrSet             )           
   closeError            )           	   sendError            )              receiveError            )           
   bSendError             )          Trigger Variables	   bCloseAll            )          Connection information
   portNumber    А"      )            	   bAccepted             )!       	   Constants   PLCPRJ_ACCEPT_POLLING_TIME    ш      )$              display                         )&              heading                         )'              state            ))              xDist                         )+              yDist                         ),              zDist                         )-           	   listening             )0              count            )1           
   fbresetTON                    TON    )2              timerOn             )3              timeUp             )4                     arduinoConnected            )7              socketToUse              	   T_HSOCKET   )8                       |ET  @    џџџџ           JSDISCONNECT           fb_closeAll        	               FB_SocketCloseAll    (	              	   bCloseAll            (                 connectionClosed            (                       |ET  @    џџџџ           JSRECEIVEDATA           fbReceiveTON                    TON    '       	   Functions
   fb_receive                           FB_SocketReceive    '       #   Send and receive data and variables   receiveBuffer   	                          '              bytesReceived            '           
   sendBuffer    Q       Q     '              sendBufferAddress            '           
   cbReceived            '              startPos            '              endPos            '              idx            '              cbFrame            '              sFromClient               T_MaxString    '              overflow             '              endFound             '          Error variables   acceptError            '               receiveError            '!              state           '#              xAsisString    Q       Q     '$              yAsixString    Q       Q     '%              zAxisString    Q       Q     '&              bottonString    Q       Q     ''              timerOn             '(              timeUp             ')           
   fbresetTON                    TON    '*                 socketToUse              	   T_HSOCKET   '                 dataReceived            '              botton                        '              xAxis                        '	              yAxis                        '
              zAxis                        '                       |ET  @    џџџџ           KALMANFILTER           control                         и              oldP                         и              newP          №?   1.0      №?    и              oldX                         и              newX               0.0            и              K                         и           
   oldPredict               0.0            и                 reading                        и              target                        и              noiseVar                        и                 out                        и                       |ET  @    џџџџ           LOCALIZATION     (      w1                         м              w2                         м              w3                         м              w4                         м              sw1                         м              sw2                         м              sw3                         м              sw4                         м              encoder1               AXIS_REF    м              encoder2               AXIS_REF    м              encoder3               AXIS_REF    м              encoder4               AXIS_REF    м          working variable   globalePosX                         м              globalePosY                         м              heading_radians1                         м              globalePosX1                         м               globalePosY1                         м!           	   sencoderX   	                                      м"           	   sencoderY   	                                      м#              sheading   	                                      м$          kalman filter   fbkalmanFilter   	                              kalmanFilter            м&              fbekalmanFilter   	                                       extendedKalmanFilter            м'              fbTON3                    TON    м(              startTimer3             м)              timer3On             м*          heading   A                         м,              q            м-           
   differentX                         м.           
   differentY                         м/          Arduino variables   arduinoCalculate1                                       arduinoCalculation    м2              xDistA                         м3              yDistA                         м4              headingA                         м5          velocity calculation   combinedXOld               0            м8              combinedYOld               0            м9              combinedHOld               0            м:              count            м;           	   velocityX                         м<           	   velocityY                         м=           	   velocityH                         м>                  	   robotPosX                        м           	   robotPosY                        м              robotPosTheta                        м           	   robotVelX                        м	           	   robotVelY                        м
              robotVelTheta                        м                       |ET  @    џџџџ           MAIN     J      fbPLC_Reset                   	   PLC_Reset                    fbPLC_Start                   	   PLC_Start                    state_NC               MoveState_NC                 manual runnning   Manual                            bEnable                          gibt die Achse frei    bReset_Axis               	           Reset der Achse    bAxis_Ready   	                            
       "    Checks whether the axis is ready    bMoveCombination   	  
                                    the combined movement   i                         	   MotionReq                          
   timeToMove                            directionToMove                            timeToMoveReal                                         speedToMove         и@   603     и@                    timeUp                             timerOn                             fbTON1                    TON             C   
###################
ROS TCP/IP CONNECTION
###################
   myROS_connect_receiveData                                        ROS_connect_receiveData                    myROS_connect_sendData                                        ROS_connect_sendData                    myROS_disconnect                 ROS_disconnect                    myROS_receiveData                                        ROS_receiveData                     myROS_sendData                   ROS_sendData      !              myROS_convertSendData                           ROS_convertSendData      "              ROS_tcpSocketReceiveData              	   T_HSOCKET      $              ROS_connectionOpenReceiveData               %              ROS_tcpSocketSendData              	   T_HSOCKET      '              ROS_connectionOpenSendData               (              ROS_closeConnection              *              ROS_velAxis1               0              ,              ROS_velAxis2               0              -              ROS_velAxis3               0              .              ROS_velAxis4               0              /              ROS_RobotPosX               0              1              ROS_RobotPosY               0              2              ROS_RobotPosTheta               0              3              ROS_RobotVelX               0              4              ROS_RobotVelY               0              5              ROS_RobotVelTheta               0              6              sendBufferREAL               0              8           
   sendBuffer    Q       Q       9              sendTakt               0              :          #END# ROS variables	   vel_last1                           ?              vel_current1                           @           	   vel_last2                           A              vel_current2                           B           	   vel_last3                           C              vel_current3                           D           	   vel_last4                           E              vel_current4                           F       6   
###################
ODOMETRY
###################
   startTimer1               P              timer1On               Q           
   firstStart               S              Q               T              startPLC               U           	   oldSpeedX                           V           	   oldSpeedY                           W           	   oldSpeedH                           X          JOSTICK	   connectJs                                         	   jsConnect      [              disconnectJs                 jsDisconnect      \              receiveJsData                                            jsReceiveData      ]              tcpSockeJst              	   T_HSOCKET      ^              connectionOpen_js               _              closeConnection_js              `              XAxis                           a              YAxis                           b              ZAxis                           c              botton                           d              myWP_tcpSocket              	   T_HSOCKET      f              myWP_connect                                         
   WP_connect      g              myWP_disconnect                 WP_Disconnect      h              myWP_receiveData                                            WP_ReceiveData      i              myWP_connected               j              myWP_connectionClosed              k              wpBotton                           l                               ьET  @    џџџџ           MAINFAST           fblocalization        .                                                    localization    е                               |ET  @    џџџџ           ROS_CONNECT_RECEIVEDATA        
   openSocket             З           	   fb_listen                            FB_SocketListen    З           	   fb_accept                            FB_SocketAccept    З          Timers   fbAcceptTON                    TON    З
          TCP socket variables   activeSocketHandle              	   T_HSOCKET    З              socketHandle              	   T_HSOCKET    З          Error variables   listenError            З              acceptError            З              listenErrSet             З           
   closeError            З           	   sendError            З              receiveError            З           
   bSendError             З          Trigger Variables	   bCloseAll            З          Connection information
   portNumber    Ч      З            	   bAccepted             З!       	   Constants   PLCPRJ_ACCEPT_POLLING_TIME    ш      З$              display                         З&              heading                         З'              state            З)              xDist                         З+              yDist                         З,              zDist                         З-           	   listening             З0                     RosConnected            З3              socketToUse              	   T_HSOCKET   З4                       |ET  @    џџџџ           ROS_CONNECT_SENDDATA        
   openSocket             Л           	   fb_listen                            FB_SocketListen    Л           	   fb_accept                            FB_SocketAccept    Л          Timers   fbAcceptTON                    TON    Л
          TCP socket variables   activeSocketHandle              	   T_HSOCKET    Л              socketHandle              	   T_HSOCKET    Л          Error variables   listenError            Л              acceptError            Л              listenErrSet             Л           
   closeError            Л           	   sendError            Л              receiveError            Л           
   bSendError             Л          Trigger Variables	   bCloseAll            Л          Connection information
   portNumber    Ш      Л            	   bAccepted             Л!       	   Constants   PLCPRJ_ACCEPT_POLLING_TIME    ш      Л$              display                         Л&              heading                         Л'              state            Л)              xDist                         Л+              yDist                         Л,              zDist                         Л-           	   listening             Л0                     RosConnected            Л3              socketToUse              	   T_HSOCKET   Л4                       |ET  @    џџџџ           ROS_CONVERTSENDDATA        
   posXString    Q       Q     М           
   posYString    Q       Q     М              posThetaString    Q       Q     М           
   velXString    Q       Q     М           
   velYString    Q       Q     М              velThetaString    Q       Q     М              	   robotPosX                        М           	   robotPosY                        М              robotPosTheta                        М           	   robotVelX                        М           	   robotVelY                        М              robotVelTheta                        М                 send_message    Q       Q    М                       |ET  @    џџџџ           ROS_DISCONNECT           fb_closeAll        	               FB_SocketCloseAll    Н	              	   bCloseAll            Н                 connectionClosed            Н                       |ET  @    џџџџ           ROS_RECEIVEDATA           fbReceiveTON                    TON    О           
   fbResetTON                    TON    О              reset             О              timeup             О       	   Functions
   fb_receive                           FB_SocketReceive    О       #   Send and receive data and variables   receiveBuffer   	                          О              bytesReceived            О           
   sendBuffer    Q       Q     О              sendBufferAddress            О           
   cbReceived            О              startPos            О              endPos            О              idx            О              cbFrame            О              sFromClient               T_MaxString    О              overflow             О              endFound             О          Error variables   acceptError            О"              receiveError            О#              state           О%                 socketToUse              	   T_HSOCKET   О                 dataReceived            О              velAxis1                        О              velAxis2                        О              velAxis3                        О	              velAxis4                        О
                       |ET  @    џџџџ           ROS_SENDDATA           fb_send1                          FB_SocketSend    П
          Send data and variables   sendBufferAddress1            П           
   sendError1            П              
   sendBuffer    Q       Q    П              socketToUse              	   T_HSOCKET   П                           |ET  @    џџџџ        
   WP_CONNECT        
   openSocket             +           	   fb_listen                            FB_SocketListen    +           	   fb_accept                            FB_SocketAccept    +          Timers   fbAcceptTON                    TON    +
          TCP socket variables   activeSocketHandle              	   T_HSOCKET    +              socketHandle              	   T_HSOCKET    +          Error variables   listenError            +              acceptError            +              listenErrSet             +           
   closeError            +           	   sendError            +              receiveError            +           
   bSendError             +          Trigger Variables	   bCloseAll            +          Connection information
   portNumber    `"      +            	   bAccepted             +!       	   Constants   PLCPRJ_ACCEPT_POLLING_TIME    ш      +$              display                         +&              heading                         +'              state            +)              xDist                         ++              yDist                         +,              zDist                         +-           	   listening             +0              count            +1           
   fbresetTON                    TON    +2              timerOn             +3              timeUp             +4                     WPConnected            +7              socketToUse              	   T_HSOCKET   +8                       9ET  @    џџџџ           WP_DISCONNECT           fb_closeAll        	               FB_SocketCloseAll      	              	   bCloseAll                               connectionClosed                                     AET  @    џџџџ           WP_RECEIVEDATA           fbReceiveTON                    TON    -       	   Functions
   fb_receive                           FB_SocketReceive    -       #   Send and receive data and variables   receiveBuffer   	                           -              bytesReceived            -           
   sendBuffer    Q       Q     -              sendBufferAddress            -           
   cbReceived            -              startPos            -              endPos            -              idx            -              cbFrame            -              sFromClient               T_MaxString    -              overflow             -              endFound             -          Error variables   acceptError            -               receiveError            -!              state           -#              xAxisString    Q       Q     -$              yAxixString    Q       Q     -%              zAxisString    Q       Q     -&              bottonString    Q       Q     -'              timerOn             -(              timeUp             -)           
   fbresetTON                    TON    -*                 socketToUse              	   T_HSOCKET   -                 dataReceived            -              botton           -              xAxis                        -	              yAxis                        -
              zAxis                        -                       БET  @    џџџџ            
 ю   д  '     г  з  м  *  и  єџџџ§џџџ   Х  +  ,  -  е      ( Ш     K   ж    K   ф    K   ђ    K                           +     КЛlocalhost uкпv   lј     `ЙH u`u Ф@u@д јг фе е эрswJ) ўџџџч/ww.wwlј           lј       з Uя    HЖЬд ш,wwPЖF  фе фе u>§ џџџџ    №xІ8е             ,е lј          lј       з Uя з фе Uя Шчbџџџџ№е  я     ,   ,                                                        K         @   |ETњ /*BECKCONFI3*/
        !еь @   @           3                 Standard         Fast            	}ET     ECPL               VAR_GLOBAL
END_VAR
                                                                                  "   , , , Ѕ             Standard        MAINџџџџ                Fast         MainFast();џџџџ               |ET                 $ћџџџ  @                       ј  )            Standard лvS	лvS      щ   xy                         	|ET        X)           VAR_CONFIG
END_VAR
                                                                                   '              , н/ [           Globale_Variablen |ET	|ET     AYоA O         D  VAR_GLOBAL
	trigger1  AT %Q*: BOOL;			(*to tigger the auduino pin 6 motor running*)
	trigger2  AT %Q*: BOOL;			(*to tigger the auduino pin 7* in velocity*)
	encoderX:	ARRAY[1..5] OF		LREAL;
	encoderY:	ARRAY[1..5] OF		LREAL;
	heading:		ARRAY[1..5] OF		LREAL;
	reset:		BOOL;
	home: BOOL;
	combinedX: LREAL;
	combinedY: LREAL;
	combinedH: LREAL;
(*for ROS*)
	robotPosX:	LREAL;
	robotPosY:	LREAL;
	robotPosTheta:	LREAL;
	robotVelX:	LREAL;
	robotVelY:	LREAL;
	robotVelTheta:	LREAL;
(*
###################
	TwinCAT NC Achsen
###################
*)


	Axis1 : AXIS_REF;
	PowerAxis1: MC_Power;
	MoveAxis1: MC_MoveVelocity;
	MoveAxis12: MC_MoveVelocity;
	ResetAxis1: MC_Reset;		(* debug function block output data *)
	HaltAxis1: MC_Halt;

	Axis2 : AXIS_REF;
	PowerAxis2: MC_Power;
	MoveAxis2: MC_MoveVelocity;
	MoveAxis22: MC_MoveVelocity;
	ResetAxis2: MC_Reset;		(* debug function block output data *)
	HaltAxis2: MC_Halt;

	Axis3 : AXIS_REF;
	PowerAxis3: MC_Power;
	MoveAxis3: MC_MoveVelocity;
	MoveAxis32: MC_MoveVelocity;
	ResetAxis3: MC_Reset;		(* debug function block output data *)
	HaltAxis3: MC_Halt;

	Axis4 : AXIS_REF;
	PowerAxis4: MC_Power;
	MoveAxis4: MC_MoveVelocity;
	MoveAxis42: MC_MoveVelocity;
	ResetAxis4: MC_Reset;		(* debug function block output data *)
	HaltAxis4: MC_Halt;
END_VAR
                                                                                               '           Ж  , Џ Џ -           TwinCAT_Configuration |ET	|ETЖ    ntt\inT\        н  (* Generated automatically by TwinCAT - (read only) *)
VAR_CONFIG
	MainFast.fblocalization.encoder1.PlcToNc AT %QB1156 : PLCTONC_AXIS_REF;
	MainFast.fblocalization.encoder1.NcToPlc AT %IB1152 : NCTOPLC_AXIS_REF;
	MainFast.fblocalization.encoder2.PlcToNc AT %QB1284 : PLCTONC_AXIS_REF;
	MainFast.fblocalization.encoder2.NcToPlc AT %IB1280 : NCTOPLC_AXIS_REF;
	MainFast.fblocalization.encoder3.PlcToNc AT %QB1412 : PLCTONC_AXIS_REF;
	MainFast.fblocalization.encoder3.NcToPlc AT %IB1408 : NCTOPLC_AXIS_REF;
	MainFast.fblocalization.encoder4.PlcToNc AT %QB1540 : PLCTONC_AXIS_REF;
	MainFast.fblocalization.encoder4.NcToPlc AT %IB1536 : NCTOPLC_AXIS_REF;
	.trigger1 AT %QX1152.0 : BOOL;
	.trigger2 AT %QX1152.1 : BOOL;
END_VAR                                                                                               '           	   ,   ЩP           Variablen_Konfiguration |ET	|ET	      Kreurbe        Ч  VAR_CONFIG
	Axis1.PlcToNc AT %QB128 : PLCTONC_AXIS_REF;	(*  ~ {LinkedWith:TINC^NC-Task 1 SAF^Achsen^Achse 1^Eingфnge^Achse 1_FromPlc} *)
	Axis1.NcToPlc AT %IB128 : NCTOPLC_AXIS_REF;	(*  ~ {LinkedWith:TINC^NC-Task 1 SAF^Achsen^Achse 1^Ausgфnge^Achse 1_ToPlc} *)
	Axis2.PlcToNc AT %QB256 : PLCTONC_AXIS_REF;	(*  ~ {LinkedWith:TINC^NC-Task 1 SAF^Achsen^Achse 2^Eingфnge^Achse 2_FromPlc} *)
	Axis2.NcToPlc AT %IB256 : NCTOPLC_AXIS_REF;	(*  ~ {LinkedWith:TINC^NC-Task 1 SAF^Achsen^Achse 2^Ausgфnge^Achse 2_ToPlc} *)
	Axis3.PlcToNc AT %QB512 : PLCTONC_AXIS_REF;
	Axis3.NcToPlc AT %IB512 : NCTOPLC_AXIS_REF;
	Axis4.PlcToNc AT %QB1024 : PLCTONC_AXIS_REF;
	Axis4.NcToPlc AT %IB1024 : NCTOPLC_AXIS_REF;
END_VAR
                                                                                                    |0|0 @|    @Z   MS Sans Serif @       HH':'mm':'ss @      dd'-'MM'-'yyyy   dd'-'MM'-'yyyy HH':'mm':'ssѓџџџ                               4     џ   џџџ  Ь3 џџџ   џ џџџ     
    @џ  џџџ     @      DEFAULT             System         |0|0 @|    @Z   MS Sans Serif @       HH':'mm':'ss @      dd'-'MM'-'yyyy   dd'-'MM'-'yyyy HH':'mm':'ssѓџџџ                      )   HH':'mm':'ss @                             dd'-'MM'-'yyyy @       '   Х  , d d            MoveState_NC |ET	|ET      9Ѕ Ж §џ        m   TYPE MoveState_NC :
(
	NC_INIT,
	NC_ENABLE,
	NC_MOVE,
	NC_MOVENEXT,
	NC_ERROR,
	NC_RESET
);
END_TYPE              *  ,   AО           arduinoCalculation |ET	|ET      (ЖАЗ П`Н          FUNCTION_BLOCK arduinoCalculation
VAR_INPUT

END_VAR
VAR_OUTPUT
	xDistA: LREAL;
	yDistA: LREAL;
	headingA: LREAL;
END_VAR
VAR
	connectArduino1:				ArduinoConnect;
	disconnectArduino1:			ArduinoDisconnect;
	receiveData1:				ArduinoReceiveData;

	tcpSocket: T_HSOCKET;
	connectionOpen: BOOL:=FALSE;
	closeConnection: BOOL:=TRUE;
	dataReceived: BOOL;
	heading: LREAL;
	xAccA: ARRAY[1..10] OF LREAL;
	yAccA: ARRAY[1..10] OF LREAL;
	xBias: LREAL;
	yBias: LREAL;
	xAccel: LREAL;
	yAccel: LREAL;
	xVel:LREAL;
	yVel:LREAL;
	xPVel: LREAL:=0;
	yPVel:LREAL:=0;
	xPDist: LREAL;
	yPDist:LREAL;
	j: INT:=0;
	aMove:BOOL;
END_VARў  (*Arduino*)
(*Close TCP port from last time-remove after DEBUG*)
IF closeConnection THEN
	disconnectArduino1(bCloseAll:=closeConnection);
	closeConnection:=FALSE;
END_IF

(*Open a connection*)
IF (connectionOpen=FALSE) THEN
	connectArduino1(arduinoConnected=>connectionOpen, socketToUse=>tcpSocket);
END_IF

IF (connectionOpen=TRUE) THEN
	receiveData1(socketToUse:=tcpSocket,dataReceived=>dataReceived,heading=>headingA, xAccel=>xAccel, yAccel=>yAccel);
END_IF
(* Calculation*)
IF (dataReceived) THEN

IF (trigger1=FALSE AND aMove = FALSE) THEN
xAccA[1]:= xAccel; yAccA[1]:=yAccel;
xAccA[2]:= xAccA[1]; yAccA[2]:=yAccA[1];
xAccA[3]:= xAccA[2]; yAccA[3]:=yAccA[2];
xAccA[4]:= xAccA[3]; yAccA[4]:=yAccA[3];
xAccA[5]:= xAccA[4]; yAccA[5]:=yAccA[4];
xAccA[6]:= xAccA[5]; yAccA[6]:=yAccA[5];
xAccA[7]:= xAccA[6]; yAccA[7]:=yAccA[6];
xAccA[8]:= xAccA[7]; yAccA[8]:=yAccA[7];
xAccA[9]:= xAccA[8]; yAccA[9]:=yAccA[8];
xAccA[10]:= xAccA[9]; yAccA[10]:=yAccA[9];
xBias:=(xAccA[1]+xAccA[2]+xAccA[3]+xAccA[4]+xAccA[5]+xAccA[6]+xAccA[7]+xAccA[8]+xAccA[9]+xAccA[10])/10;
yBias:=(yAccA[1]+yAccA[2]+yAccA[3]+yAccA[4]+yAccA[5]+yAccA[6]+yAccA[7]+yAccA[8]+yAccA[9]+yAccA[10])/10;
END_IF

	IF (trigger1 =TRUE) THEN
		IF (aMove=FALSE) THEN xDistA:=0; yDistA:=0; aMove:=TRUE;END_IF (*start*)

  		IF (trigger2=FALSE ) THEN
		xAccA[1]:= xAccel; yAccA[1]:=yAccel;
		xVel:=(xAccA[1]-xBias)/16384*9.81*0.01+xVel; yVel:=(yAccA[1]-yBias)/16384*9.81*0.01+yVel;
		xPVel := xVel; yPVel:=yVel;
		ELSE
		xVel:=xPVel; yVel:=yPVel;
		END_IF
	xDistA:=(xVel)*10+xDistA;  yDistA:=(yVel)*10+yDistA;
	ELSE
	xAccA[1]:=0; yACCA[1]:=0;
	xVel:=0; yVel:=0;
	yPVel:=0;xPVel:=0;
	END_IF

	IF (trigger1 =FALSE AND aMove=TRUE) THEN  (*stop*)
	aMove:=FALSE;
	END_IF
END_IF


RETURN;
               д  , B B Л           ArduinoConnect |ET	|ET       §џ            FUNCTION_BLOCK ArduinoConnect
VAR


	(*Functions*)
	openSocket: BOOL:=FALSE;
	fb_listen: FB_SocketListen;
	fb_accept: FB_SocketAccept;
	(*Timers*)
	fbAcceptTON: TON;

	(*TCP socket variables*)
	activeSocketHandle: T_HSOCKET;
	socketHandle: T_HSOCKET;



	(*Error variables*)
	listenError: UDINT:=0;
	acceptError: UDINT;
	listenErrSet: BOOL;
	closeError: UDINT;
	sendError: UDINT;
	receiveError: UDINT;
	bSendError: BOOL;


	(*Trigger Variables*)
	bCloseAll: BOOL := TRUE;

	(*Connection information*)
	portNumber: INT:=8888;
	bAccepted: BOOL;

	(*Constants*)
	PLCPRJ_ACCEPT_POLLING_TIME: TIME:=T#1s;

	display: LREAL;
	heading: LREAL;

	state: INT:=0;

	xDist: LREAL;
	yDist: LREAL;
	zDist: LREAL;


	listening: BOOL;
	count: INT;
	fbresetTON: TON;
	timerOn: BOOL;
	timeUp: BOOL;
END_VAR
VAR_OUTPUT
	arduinoConnected: BOOL;
	socketToUse: T_HSOCKET;
END_VARё  
CASE state OF
0:

IF(fb_Listen.hListener.localAddr.nPort=portNumber) THEN
RETURN;

ELSE
state:=1;
END_IF

1:
(*This code was built by Chris Jarrett, Auckland University, 2014. It is derived in part from the TCP/IP server example on www.beckhoff.com*)
(*Listening State*)
(*Open a connection*)
(*Create socket and check for errors*)

fb_listen
(
	sSrvNetId:='' ,
	sLocalHost:='',
	nLocalPort:=portNumber,
	bExecute:=TRUE,
	tTimeout:=T#5s,
	hListener=>socketHandle,
	nErrId=>listenError,
	bError=>listenErrSet,

);

	IF(fb_Listen.hListener.localAddr.nPort=portNumber) THEN
		fb_listen(bExecute:=FALSE); 		(*Start listening and move to the accept state*)

		state:=2;
	ELSE
		(*Return to the listening state*)
		state:=1;
	END_IF



2:

(*Start accepting a client connection*)
fbAcceptTON( IN := TRUE, PT := T#2s);  (*Start a timer to poll for the accepted connection*)
		IF fbAcceptTON.Q THEN
			fbAcceptTON( IN := FALSE );	(*Reset timer*)
			fb_accept(  bExecute := FALSE  ); (*Generate a rising edge to activate the accept function*)
			fb_accept(hListener := socketHandle, bExecute:= TRUE, hSocket=>activeSocketHandle );
			state:=3; (*Move to the state where the client is accepted*)

			fbAcceptTON( IN := FALSE);

		END_IF
3:
(*Complete accpeting the client connection*)
	fb_accept( bExecute := FALSE ); (*Reset the accept function to try connection again if necessary*)
	IF NOT fb_accept.bBusy THEN
		IF NOT fb_accept.bError THEN
			IF fb_accept.bAccepted THEN
				bAccepted := TRUE; (*If the client connection is accepted without error then move to the send state*)
				fb_accept(bExecute:=FALSE);
				socketToUse:=fb_accept.hSocket;

				state:=4;
			ELSE
				fb_listen(bExecute:=FALSE);
				fb_accept(bExecute:=FALSE);
				arduinoConnected:=FALSE; (*If the connection attempt was not successful, return the boolean as false*)
				fbAcceptTON( IN := FALSE);
				state:=2;

				END_IF
		END_IF
	END_IF
4:
arduinoConnected:=TRUE;
RETURN;

END_CASE;               ж  , n n Ыч           ArduinoDisconnect |ET	|ET      P`мив        І   FUNCTION_BLOCK ArduinoDisconnect
VAR_INPUT
	bCloseAll: BOOL;
END_VAR
VAR_OUTPUT
	connectionClosed: BOOL;
END_VAR
VAR
	fb_closeAll: FB_SocketCloseAll;
END_VAR  (*This function closes the TCP/IP port being used the Arduino connection*)

IF bCloseAll THEN
	bCloseAll:=FALSE;
	(*Close all open ports*)
	fb_closeAll(sSrvNetId:='', bExecute:=TRUE, tTimeOut:=T#5s );
ELSE
	fb_closeAll(bExecute:=FALSE);
END_IF


(*Move to the listening state*)
IF NOT fb_closeAll.bError THEN
	connectionClosed:=TRUE;


ELSE
connectionClosed:=FALSE;
END_IF
RETURN;               з  , X X Еб           ArduinoReceiveData |ET	|ET      hW(Х8{        "  FUNCTION_BLOCK ArduinoReceiveData
VAR_INPUT
	socketToUse: T_HSOCKET;
END_VAR
VAR_OUTPUT
	dataReceived: BOOL;
	heading: LREAL;
	xAccel: LREAL;
	yAccel: LREAL;
END_VAR
VAR
	(*Connection timers*)
	fbReceiveTON: TON;

 	(*Functions*)
	fb_receive: FB_SocketReceive;

	(*Send and receive data and variables*)
	receiveBuffer: ARRAY[0..17] OF BYTE;
	bytesReceived: UDINT;
	sendBuffer: STRING;
	sendBufferAddress: DWORD;
	cbReceived, startPos, endPos, idx : UDINT;
	cbFrame: UDINT;
	sFromClient: T_MaxString;
	overflow: BOOL;
	endFound: BOOL;

	(*Error variables*)
	acceptError: UDINT;
	receiveError: UDINT;

	state: INT:=1;
	yDistString: STRING;
	xDistString: STRING;
	zDistString: STRING;
	headingString: STRING;
	timerOn: BOOL;
	timeUp: BOOL;
	fbresetTON: TON;
END_VAR  CASE state OF
1:
(*Receive information*)
	fbReceiveTON(  IN := FALSE, PT:=T#0s); (*Receive first request immediately*)
	fbReceiveTON(  IN := TRUE ); (*Start a timer to ensure complete transfer of information*)

		IF fbReceiveTON.Q THEN
			fbReceiveTON(  IN := FALSE);
			fb_receive(bExecute:=FALSE);  (*Generate a rising edge to start receiving data*)
			fb_receive
			(
				sSrvNetId:='',
				hSocket :=socketToUse,
				cbLen:=SIZEOF(receiveBuffer)-cbReceived,
				pDest:=ADR(receiveBuffer)+cbReceived,
				tTimeout:=T#5s,
				nRecBytes=>bytesReceived,
				nErrId=>receiveError,
				bExecute:=TRUE,
			);

	(*Move to the receive completion state*)
	state:=2;
	END_IF

2:
(*Continue receiving data*)
	fb_receive( bExecute := FALSE );
	IF NOT fb_receive.bBusy THEN
		IF NOT fb_receive.bError THEN (*If no error has occurred then start the actual receiving of data*)

			IF (fb_receive.nRecBytes>0) THEN (*Bytes have been received*)

				startPos:=cbReceived; (*index of first data byte*)
				endPos:=cbReceived+fb_receive.nRecBytes-1; (*index of last byte*)
				cbReceived:=cbReceived+fb_receive.nRecBytes; (*Calculating the number of received data bytes*)
				cbFrame:=0; (*Reset the frame length*)


				IF cbReceived<SIZEOF(sFromClient) THEN (*no overflow*)
					fbReceiveTON(IN:=FALSE, PT:=T#0S);

					(*Search for the string delimiter(separation character for different strings)*)
					FOR idx:=startPos TO endPos BY 1 DO
						IF receiveBuffer[idx]=0 THEN (*String delimiter found*)
							cbFrame:=idx+1;(*calculate length of received string*)
							MEMCPY(ADR(sFromClient), ADR(receiveBuffer),cbFrame); (*copy the received string to the output variable*)
							MEMMOVE(ADR(receiveBuffer), ADR(receiveBuffer[cbFrame]), cbReceived-cbFrame);(*move remaining data bytes*)
							dataReceived:=TRUE;  	(*Send an acknowledgement of data received*)
							state:=3; (*Move to the receive completion state*)
							endFound:=TRUE;
							EXIT;
						END_IF
					END_FOR
				ELSE(*no more free buffer space-overflow*)

					dataReceived:=FALSE; (*Go to error state*)
					overflow:=TRUE;
					state:=4;
				END_IF
			ELSE(*no data received*)
					fbReceiveTON(IN:=FALSE, PT:=T#1ms);
					state:=1;
			END_IF
		ELSE(*error receiving data, exit function*)
			state:=4;
			dataReceived:=FALSE;
		END_IF
	END_IF

3:
	(*State used to process data*)
	xAccel:=(STRING_TO_LREAL(MID(sFromClient, 7, 1)))/1000;  (*Extract the x distance*)
	yAccel:=(STRING_TO_LREAL(MID(sFromClient, 7, 8)))/1000;
	heading:=(STRING_TO_LREAL(MID(sFromClient, 4, 15)))/10;

	fb_receive(bExecute:=FALSE); (*Reset the receive function*)
	startPos:=0; (*reset buffer beginning pointer*)
	endPos:=0;  (*reset buffer end pointer*)
	cbReceived:=0; (*reset bytes received counter*)
	sFromClient:=''; (*reset transition variable*)


	state:=1;
	RETURN;

4: (*Unused except for as an error state*)
reset:=TRUE;

	(*Clear buffer-PROBABLY UNNECESSARY*)

	receiveBuffer[0]:=0;
	receiveBuffer[1]:=0;
	receiveBuffer[2]:=0;
	receiveBuffer[3]:=0;
	receiveBuffer[4]:=0;
	receiveBuffer[5]:=0;
	receiveBuffer[6]:=0;
	receiveBuffer[7]:=0;
	receiveBuffer[8]:=0;
	receiveBuffer[9]:=0;
	receiveBuffer[10]:=0;
	receiveBuffer[11]:=0;
	receiveBuffer[12]:=0;
	receiveBuffer[13]:=0;
	receiveBuffer[14]:=0;
	receiveBuffer[15]:=0;
receiveBuffer[16]:=0;
receiveBuffer[17]:=0;



	state:=1;


END_CASE;               р  ,     ]y           extendedKalmanFilter |ET	|ET      x,\р_Ш-        Ш  FUNCTION_BLOCK extendedKalmanFilter
VAR_INPUT
	reading: LREAL;
	target: LREAL;
	noiseVar: LREAL;
END_VAR
VAR_OUTPUT
	out: LREAL;
END_VAR
VAR
	control: LREAL;
	estP: LREAL;
	newP: LREAL := 1.0;
	estX: LREAL;
	newX: LREAL:=0.0;
	newK: LREAL;
	oldPredict: LREAL:=0.0;
	count:INT;

(*extened KF*)
	F: LREAL:=1.0;
	H: LREAL:=1.0;
	oldfuncH: LREAL;
	funcH:LREAL;
	oldfuncF: LREAL;
	funcF: LREAL;
	oldX: LREAL;
	oldestX: LREAL;
END_VARD  (*kalman filter.   cycle time = 10 ms;   added f and h for extended KF assume B = 1*)
control:=target-NewX;
count:=count+1;

(* timeupdate*)
oldfuncF:=funcF;
funcF:=F*newX;
IF (newX-oldX<>0) THEN F:=(funcF-oldfuncF)/(newX-oldX); END_IF
estP :=F*newP*F;  (* assume Q =0 *)
oldestX:=estX;
estX:=funcF+control;

(*measurement update*)
newK:=H*estP / (H*estP*H+noiseVar);

oldfuncH:=funcH;
funcH:=H*estX;
IF (estX-oldestX<>0) THEN H:=(funcH-oldfuncH)/(estX-oldestX); END_IF
oldX:=newX;
newX:=estX+newK*(reading-funcH);
newP:=(1-newK*H)*estP;
out:=NewX;

RETURN;               )                    	   jsConnect |ET	|ET                        FUNCTION_BLOCK jsConnect
VAR


	(*Functions*)
	openSocket: BOOL:=FALSE;
	fb_listen: FB_SocketListen;
	fb_accept: FB_SocketAccept;
	(*Timers*)
	fbAcceptTON: TON;

	(*TCP socket variables*)
	activeSocketHandle: T_HSOCKET;
	socketHandle: T_HSOCKET;



	(*Error variables*)
	listenError: UDINT:=0;
	acceptError: UDINT;
	listenErrSet: BOOL;
	closeError: UDINT;
	sendError: UDINT;
	receiveError: UDINT;
	bSendError: BOOL;


	(*Trigger Variables*)
	bCloseAll: BOOL := TRUE;

	(*Connection information*)
	portNumber: INT:=8880;
	bAccepted: BOOL;

	(*Constants*)
	PLCPRJ_ACCEPT_POLLING_TIME: TIME:=T#1s;

	display: LREAL;
	heading: LREAL;

	state: INT:=0;

	xDist: LREAL;
	yDist: LREAL;
	zDist: LREAL;


	listening: BOOL;
	count: INT;
	fbresetTON: TON;
	timerOn: BOOL;
	timeUp: BOOL;
END_VAR
VAR_OUTPUT
	arduinoConnected: BOOL;
	socketToUse: T_HSOCKET;
END_VAR  trigger1:=FALSE; trigger2:=FALSE;
CASE state OF
0:

IF(fb_Listen.hListener.localAddr.nPort=portNumber) THEN
RETURN;

ELSE
state:=1;
END_IF

1:
(*This code was built by Chris Jarrett, Auckland University, 2014. It is derived in part from the TCP/IP server example on www.beckhoff.com*)
(*Listening State*)
(*Open a connection*)
(*Create socket and check for errors*)

fb_listen
(
	sSrvNetId:='' ,
	sLocalHost:='',
	nLocalPort:=portNumber,
	bExecute:=TRUE,
	tTimeout:=T#5s,
	hListener=>socketHandle,
	nErrId=>listenError,
	bError=>listenErrSet,

);

	IF(fb_Listen.hListener.localAddr.nPort=portNumber) THEN
		fb_listen(bExecute:=FALSE); 		(*Start listening and move to the accept state*)

		state:=2;
	ELSE
		(*Return to the listening state*)
		state:=1;
	END_IF



2:

(*Start accepting a client connection*)
fbAcceptTON( IN := TRUE, PT := T#2s);  (*Start a timer to poll for the accepted connection*)
		IF fbAcceptTON.Q THEN
			fbAcceptTON( IN := FALSE );	(*Reset timer*)
			fb_accept(  bExecute := FALSE  ); (*Generate a rising edge to activate the accept function*)
			fb_accept(hListener := socketHandle, bExecute:= TRUE, hSocket=>activeSocketHandle );
			state:=3; (*Move to the state where the client is accepted*)

			fbAcceptTON( IN := FALSE);

		END_IF
3:
(*Complete accpeting the client connection*)
	fb_accept( bExecute := FALSE ); (*Reset the accept function to try connection again if necessary*)
	IF NOT fb_accept.bBusy THEN
		IF NOT fb_accept.bError THEN
			IF fb_accept.bAccepted THEN
				bAccepted := TRUE; (*If the client connection is accepted without error then move to the send state*)
				fb_accept(bExecute:=FALSE);
				socketToUse:=fb_accept.hSocket;

				state:=4;
			ELSE
				fb_listen(bExecute:=FALSE);
				fb_accept(bExecute:=FALSE);
				arduinoConnected:=FALSE; (*If the connection attempt was not successful, return the boolean as false*)
				fbAcceptTON( IN := FALSE);
				state:=2;

				END_IF
		END_IF
	END_IF
4:
arduinoConnected:=TRUE;
RETURN;

END_CASE;               (    аАX           jsDisconnect |ET	|ET      HЎh­РЌи­        Ё   FUNCTION_BLOCK jsDisconnect
VAR_INPUT
	bCloseAll: BOOL;
END_VAR
VAR_OUTPUT
	connectionClosed: BOOL;
END_VAR
VAR
	fb_closeAll: FB_SocketCloseAll;
END_VAR  (*This function closes the TCP/IP port being used the Arduino connection*)

IF bCloseAll THEN
	bCloseAll:=FALSE;
	(*Close all open ports*)
	fb_closeAll(sSrvNetId:='', bExecute:=TRUE, tTimeOut:=T#5s );
ELSE
	fb_closeAll(bExecute:=FALSE);
END_IF


(*Move to the listening state*)
IF NOT fb_closeAll.bError THEN
	connectionClosed:=TRUE;


ELSE
connectionClosed:=FALSE;
END_IF
RETURN;               '  , 4 4 Э           jsReceiveData |ET	|ET      HЎh­РЌи­        +  FUNCTION_BLOCK jsReceiveData
VAR_INPUT

	socketToUse: T_HSOCKET;
END_VAR
VAR_OUTPUT
	dataReceived: BOOL;
	botton: LREAL;
	xAxis: LREAL;
	yAxis: LREAL;
	zAxis: LREAL;
END_VAR
VAR
	(*Connection timers*)
	fbReceiveTON: TON;

 	(*Functions*)
	fb_receive: FB_SocketReceive;

	(*Send and receive data and variables*)
	receiveBuffer: ARRAY[0..19] OF BYTE;
	bytesReceived: UDINT;
	sendBuffer: STRING;
	sendBufferAddress: DWORD;
	cbReceived, startPos, endPos, idx : UDINT;
	cbFrame: UDINT;
	sFromClient: T_MaxString;
	overflow: BOOL;
	endFound: BOOL;

	(*Error variables*)
	acceptError: UDINT;
	receiveError: UDINT;

	state: INT:=1;
	xAsisString: STRING;
	yAsixString: STRING;
	zAxisString: STRING;
	bottonString: STRING;
	timerOn: BOOL;
	timeUp: BOOL;
	fbresetTON: TON;
END_VAR  CASE state OF
1:
(*Receive information*)
	fbReceiveTON(  IN := FALSE, PT:=T#0s); (*Receive first request immediately*)
	fbReceiveTON(  IN := TRUE ); (*Start a timer to ensure complete transfer of information*)

		IF fbReceiveTON.Q THEN
			fbReceiveTON(  IN := FALSE);
			fb_receive(bExecute:=FALSE);  (*Generate a rising edge to start receiving data*)
			fb_receive
			(
				sSrvNetId:='',
				hSocket :=socketToUse,
				cbLen:=SIZEOF(receiveBuffer)-cbReceived,
				pDest:=ADR(receiveBuffer)+cbReceived,
				tTimeout:=T#5s,
				nRecBytes=>bytesReceived,
				nErrId=>receiveError,
				bExecute:=TRUE,
			);

	(*Move to the receive completion state*)
	state:=2;
	END_IF

2:
(*Continue receiving data*)
	fb_receive( bExecute := FALSE );
	IF NOT fb_receive.bBusy THEN
		IF NOT fb_receive.bError THEN (*If no error has occurred then start the actual receiving of data*)

			IF (fb_receive.nRecBytes>0) THEN (*Bytes have been received*)

				startPos:=cbReceived; (*index of first data byte*)
				endPos:=cbReceived+fb_receive.nRecBytes-1; (*index of last byte*)
				cbReceived:=cbReceived+fb_receive.nRecBytes; (*Calculating the number of received data bytes*)
				cbFrame:=0; (*Reset the frame length*)


				IF cbReceived<SIZEOF(sFromClient) THEN (*no overflow*)
					fbReceiveTON(IN:=FALSE, PT:=T#0S);

					(*Search for the string delimiter(separation character for different strings)*)
					FOR idx:=startPos TO endPos BY 1 DO
						IF receiveBuffer[idx]=0 THEN (*String delimiter found*)
							cbFrame:=idx+1;(*calculate length of received string*)
							MEMCPY(ADR(sFromClient), ADR(receiveBuffer),cbFrame); (*copy the received string to the output variable*)
							MEMMOVE(ADR(receiveBuffer), ADR(receiveBuffer[cbFrame]), cbReceived-cbFrame);(*move remaining data bytes*)
							dataReceived:=TRUE;  	(*Send an acknowledgement of data received*)
							state:=3; (*Move to the receive completion state*)
							endFound:=TRUE;
							EXIT;
						END_IF
					END_FOR
				ELSE(*no more free buffer space-overflow*)

					dataReceived:=FALSE; (*Go to error state*)
					overflow:=TRUE;
					state:=4;
				END_IF
			ELSE(*no data received*)
					fbReceiveTON(IN:=FALSE, PT:=T#0ms);
					state:=1;
			END_IF
		ELSE(*error receiving data, exit function*)
			state:=4;
			dataReceived:=FALSE;
		END_IF
	END_IF

3:
	(*State used to process data*)
	botton:=(STRING_TO_LREAL(MID(sFromClient, 4, 1)));  (*Extract the x distance*)
IF(botton = 48) THEN
	xAxis:=((STRING_TO_LREAL(MID(sFromClient, 5, 5))-32768)/80);
	yAxis:=((STRING_TO_LREAL(MID(sFromClient, 5,10))-32768)/-80);
	zAxis:=((STRING_TO_LREAL(MID(sFromClient, 5, 15))-32768)/-80);
END_IF
IF(botton = 32)THEN
	yAxis:=((STRING_TO_LREAL(MID(sFromClient, 5, 5)))*40);
	xAxis:=((STRING_TO_LREAL(MID(sFromClient, 5,10)))*40);
	zAxis:=((STRING_TO_LREAL(MID(sFromClient, 5, 15)))*40);
END_IF

	fb_receive(bExecute:=FALSE); (*Reset the receive function*)
	startPos:=0; (*reset buffer beginning pointer*)
	endPos:=0;  (*reset buffer end pointer*)
	cbReceived:=0; (*reset bytes received counter*)
	sFromClient:=''; (*reset transition variable*)


	state:=1;
	RETURN;

4: (*Unused except for as an error state*)
trigger1:=FALSE; trigger2:=TRUE;  timerOn:=TRUE;(* reset arduino*)
fbresetTON(IN:=timerOn, PT:=REAL_TO_TIME(100), Q=>timeUp, ET=>);

IF (timeUp=TRUE)  THEN
trigger2:=FALSE;
timerOn:=FALSE;
END_IF

	(*Clear buffer-PROBABLY UNNECESSARY*)

	receiveBuffer[0]:=0;
	receiveBuffer[1]:=0;
	receiveBuffer[2]:=0;
	receiveBuffer[3]:=0;
	receiveBuffer[4]:=0;
	receiveBuffer[5]:=0;
	receiveBuffer[6]:=0;
	receiveBuffer[7]:=0;
	receiveBuffer[8]:=0;
	receiveBuffer[9]:=0;
	receiveBuffer[10]:=0;
	receiveBuffer[11]:=0;
	receiveBuffer[12]:=0;
	receiveBuffer[13]:=0;
	receiveBuffer[14]:=0;
	receiveBuffer[15]:=0;
receiveBuffer[16]:=0;
receiveBuffer[17]:=0;
receiveBuffer[18]:=0;
receiveBuffer[19]:=0;


	state:=1;


END_CASE;               и  , X X Еб           kalmanFilter |ET	|ET      x<=<(;          FUNCTION_BLOCK kalmanFilter
VAR_INPUT
	reading: LREAL;
	target: LREAL;
	noiseVar: LREAL;
END_VAR
VAR_OUTPUT
	out: LREAL;
END_VAR
VAR
	control: LREAL;
	oldP: LREAL;
	newP: LREAL := 1.0;
	oldX: LREAL;
	newX: LREAL:=0.0;
	K: LREAL;
	oldPredict: LREAL:=0.0;

END_VARЫ   control:=target-NewX;
(* timeupdate*)

oldP :=newP;
oldX:=newX+control;

(*measurement update*)

K:=oldP / (oldP+noiseVar);
NewX:=oldX+K*(reading-oldX);
newP:=(1-K)*oldP;
out:=NewX;

RETURN;               м  , Ќ 9 ђх           localization |ET	|ET      ш(        %  FUNCTION_BLOCK localization  (* to be call by fb movement only*)  (* calls  fb kalman filter*)
VAR_INPUT
END_VAR
VAR_OUTPUT
(*for ROS*)
	robotPosX:	LREAL;
	robotPosY:	LREAL;
	robotPosTheta:	LREAL;
	robotVelX:	LREAL;
	robotVelY:	LREAL;
	robotVelTheta:	LREAL;
END_VAR
VAR
(* from wheel motor encoder*)
	w1:LREAL;
	w2:LREAL;
	w3:LREAL;
	w4:LREAL;
	sw1: LREAL;
	sw2: LREAL;
	sw3: LREAL
;	sw4: LREAL;

	encoder1: AXIS_REF;
	encoder2: AXIS_REF;
	encoder3: AXIS_REF;
	encoder4: AXIS_REF;

(*working variable*)
	globalePosX:	LREAL;
	globalePosY:	LREAL;heading_radians1: LREAL;
	globalePosX1:	LREAL;
	globalePosY1:	LREAL;
	sencoderX:	ARRAY[1..5] OF		LREAL;
	sencoderY:	ARRAY[1..5] OF		LREAL;
	sheading:	ARRAY[1..5] OF		LREAL;
(*kalman filter*)
	fbkalmanFilter:	ARRAY[1..3] OF 	kalmanFilter;
	fbekalmanFilter:	ARRAY[1..3] OF 	extendedKalmanFilter;
	fbTON3:	TON;
	startTimer3: BOOL;
	timer3On: BOOL;
(*heading*)
	A:LREAL;
	q: INT;
	differentX: LREAL;
	differentY: LREAL;

(*Arduino variables*)
	arduinoCalculate1:				arduinoCalculation;
	xDistA: LREAL;
	yDistA: LREAL;
	headingA: LREAL;

(*velocity calculation*)
	combinedXOld: LREAL:=0;
	combinedYOld: LREAL:=0;
	combinedHOld: LREAL:=0;
	count:INT;
	velocityX: LREAL;
	velocityY: LREAL;
	velocityH: LREAL;

END_VAR7#  (* from wheel motor encoder*)
w1:=axis1.NcToPlc.ActPos;
w2:=-axis2.NcToPlc.ActPos;
w3:=axis3.NcToPlc.ActPos;
w4:=-axis4.NcToPlc.ActPos;
encoderY[5]:=0.025*((w1-sw1)+(w2-sw2)+(w3-sw3)+(w4-sw4))*1.634*1.006;
encoderX[5]:=-0.025*((w1-sw1)-(w2-sw2)-(w3-sw3)+(w4-sw4))*1.339*1.006;
heading[5]:=(-0.025*(-(w1-sw1)+(w2-sw2)-(w3-sw3)+(w4-sw4))*0.144)+90;


(* set ALL to zero at start of motion*)
IF (home) THEN
sencoderX[3]:=0.0;
sencoderX[1]:=encoder1.NcToPlc.ActPos;
sencoderX[2]:=encoder3.NcToPlc.ActPos;
xDistA:=0;
yDistA:=0;
sencoderX[4]:=0;
encoderX[4]:=0;
sencoderY[3]:=0.0;
sencoderY[1]:=encoder2.NcToPlc.ActPos;
sencoderY[2]:=encoder4.NcToPlc.ActPos;
sencoderY[4]:=0;
encoderY[4]:=0;
heading[1]:=0.0;
sheading[4]:=headingA;
sw1:=axis1.NcToPlc.ActPos;
sw2:=-axis2.NcToPlc.ActPos;
sw3:=axis3.NcToPlc.ActPos;
sw4:=-axis4.NcToPlc.ActPos;
globalePosX:=0;
globalePosY:=0;
home:=FALSE;
END_IF

(* continue to read data*)
	encoderX[1]:=(encoder1.NcToPlc.ActPos - sencoderX[1]);
	encoderY[1]:=(encoder2.NcToPlc.ActPos - sencoderY[1]);

	encoderX[2]:=(encoder3.NcToPlc.ActPos - sencoderX[2]);
	encoderY[2]:=(encoder4.NcToPlc.ActPos - sencoderY[2]);


(*Heading1 calculation from encoder 2 and 3, assume encoder 2 at origin*)
	differentX:=encoderX[2]-encoderX[1]-0.2;
	differentY:=encoderY[2]-encoderY[1]+550;

	IF (differentX>=0 AND differentY>=0) THEN A:=ATAN(differentY/differentX)*180/3.142; heading[1]:=180-(A-(0.03)); Q:=1; 		(* 1st quad*)
	ELSIF (differentX<0 AND differentY>=0) THEN A:=ATAN(differentY/-differentX)*180/3.142;heading[1]:=180-(180-A-(0.03)); Q:=2;  (* 2nd quad*)
	ELSIF (differentX<0 AND differentY<0) THEN A:=ATAN(differentY/differentX)*180/3.142; heading[1]:=180-(180+A-(0.03));    Q:=3;	(* 3rd quad*)
	ELSIF (differentX>=0 AND differentY<0) THEN A:=ATAN(-differentY/differentX)*180/3.142; heading[1]:=180-(360-A-(0.03)); Q:=4;   	(* 4th quad*)
	END_IF
IF heading[1] < -180 THEN heading[1]:=heading[1]+360; END_IF
IF heading[1] > 180 THEN heading[1]:=heading[1]-360;   END_IF(* heading is always between +180 to -180*)



(*kalman filter.   cycle time = 10 ms*)
(*IF (trigger1=TRUE AND timer3On=FALSE) THEN*)
fbTON3(IN:=startTimer3, PT:=LREAL_TO_TIME(10) , Q=>timer3On);
count:=count+1;
IF (count>0) THEN startTimer3:=TRUE; END_IF
	IF (timer3On=TRUE) THEN
	timer3On:=FALSE;
	startTimer3:=FALSE;
	count:=0;
(* kalman filter to combine the spherical ball encoder [1] to the wheel encoder[5] combined signal =[3]*)
	fbkalmanFilter[1](reading:=(encoderX[1]-encoderX[5]),target:=0,noiseVar:= 0.1);    (* encoder in mm noise var need to vadify*)
	encoderX[3]:=fbkalmanFilter[1].out+encoderX[5];
	fbkalmanFilter[2](reading:=(encoderY[1]-encoderY[5]),target:=0,noiseVar:= 0.1);
	encoderY[3]:=fbkalmanFilter[2].out+encoderY[5];
	fbkalmanFilter[3](reading:=(heading[1]-heading[5]),target:=0,noiseVar:= 0.1);
	heading[3]:=fbkalmanFilter[3].out+heading[5];
(*convert to world*)
	heading_radians1 :=  heading[3]/180 * 3.1415963;
	globalePosX1 := globalePosX1 + SIN(heading_radians1) *( encoderX[3] -combinedXOld) +  COS(heading_radians1) * (encoderY[3] - combinedYOld);
	globalePosY1 := globalePosY1 + SIN(heading_radians1) * (encoderY[3] - combinedYOld) - COS(heading_radians1) *( encoderX[3] -combinedXOld);

	combinedXOld:=encoderX[3];
	combinedYOld:=encoderY[3];
(* arduino*)
	arduinoCalculate1(xDistA=>xDistA, yDistA=>ydistA,	headingA=>headingA);
	encoderX[4]:=xDistA+sencoderX[4];
	encoderY[4]:=yDistA +sencoderY[4];
	heading[4]:=headingA-sheading[4]+90;
	IF (trigger1 = FALSE) THEN sencoderX[4]:=encoderX[4]; sencoderY[4]:=encoderY[4];END_IF

	fbekalmanFilter[1](reading:=(encoderX[4]-globalePosX1),target:=0,noiseVar:= 0.1);
	globalePosX:=fbekalmanFilter[1].out+globalePosX1;
	fbekalmanFilter[2](reading:=(encoderY[4]-globalePosY1),target:=0,noiseVar:= 0.1);
	globalePosY:=fbekalmanFilter[2].out+globalePosY1;
	fbekalmanFilter[3](reading:=(heading[4]-heading[3]),target:=0,noiseVar:= 0.1);
	combinedH:=fbekalmanFilter[3].out+heading[3];

	velocityX:=(combinedX-combinedXOld)/0.01;
	velocityY:=(combinedY-combinedYOld)/0.01;
	velocityH:=(combinedH-combinedHOld)/0.01;



	END_IF


(*output*)
robotPosTheta:=combinedH;
robotPosX:=globalePosX;
robotPosY:=globalePosY;
robotVelX:=velocityX;
robotVelY:=velocityY;
robotVelTheta:=velocityH;


(* combining encoders  *)
(* set ALL to zero at start of motion
IF motorRunning=TRUE  THEN start:=TRUE; END_IF
IF motorRunning = FALSE THEN start:=FALSE;  END_IF
fbR_trig(clk:=start,Q=>startMotion);
fbF_trig(clk:=start,Q=>stopMotion);
IF (startMotion=TRUE)    (*capture the starting value*)
THEN
exPosition:=directionToMove;
sencoderX[1]:=0.0;
sencoderX[2]:=axis[5].NcToPlc.ActPos;
sencoderX[3]:=axis[7].NcToPlc.ActPos;
sencoderY[1]:=0.0;
sencoderY[2]:=axis[6].NcToPlc.ActPos;
sencoderY[3]:=axis[8].NcToPlc.ActPos;

startMotion:=FALSE;                  (* so that this initialization only do once*)
END_IF

(* ignore all the data from direction that do not move*)

	encoderX[2]:=(axis[5].NcToPlc.ActPos - sencoderX[2]);
	encoderX[3]:=(axis[7].NcToPlc.ActPos - sencoderX[3]);

	encoderY[2]:=(axis[6].NcToPlc.ActPos - sencoderY[2]);
	encoderY[3]:=(axis[8].NcToPlc.ActPos - sencoderY[3]);

(*Kalman Filter: startKF do a loop every 10ms, updating the position (encoder 1 and 2 and 3) every 10ms*)

IF (motorRunning=TRUE)   THEN
	startKF:=TRUE;
	startTimer2:=TRUE;   (*timer 2 is for calculating encoder 1*)
ELSE
	startKF:=FALSE;
	startTimer2:=FALSE;
END_IF

(* use motor motion as ref = encoder [1] *)

fbTON2(IN:=startTimer2, PT:=timeToMove , ET=>ET2);

	CASE exPosition OF
	1: encoderX[1]:=distanceToMove*-1000*(4.0/6.4)*TIME_TO_LREAL(ET2)/TIME_TO_LREAL(timeToMove);encoderY[1]:=distanceToMove*1000*(5.0/6.4)*TIME_TO_LREAL(ET2)/ TIME_TO_LREAL(timeToMove);
	2: encoderX[1]:=0.0; encoderY[1]:=distanceTomove*1000*TIME_TO_LREAL(ET2)/ TIME_TO_LREAL(timeToMove);
	3: encoderX[1]:=distanceToMove*1000*(4.0/6.4)*TIME_TO_LREAL(ET2)/TIME_TO_LREAL (timeToMove); encoderY[1]:=distanceToMove*1000*(5.0/6.4)*TIME_TO_LREAL(ET2)/ TIME_TO_LREAL(timeToMove);
	4: encoderX[1]:=distanceToMove*-1000*TIME_TO_LREAL(ET2)/TIME_TO_LREAL (timeToMove); encoderY[1]:=0;
	5: encoderX[1]:=distanceToMove*1000*TIME_TO_LREAL(ET2)/TIME_TO_LREAL (timeToMove); encoderY[1]:=0;
	6: encoderX[1]:=distanceToMove*-1000*(4.0/6.4)*TIME_TO_LREAL(ET2)/TIME_TO_LREAL (timeToMove); encoderY[1]:=distanceToMove*-1000*(5.0/6.4)*TIME_TO_LREAL(ET2)/ TIME_TO_LREAL(timeToMove);
	7: encoderX[1]:=0.0; encoderY[1]:=distanceTomove*-1000*TIME_TO_LREAL(ET2)/TIME_TO_LREAL (timeToMove);
	8:encoderX[1]:=distanceToMove*1000*(4.0/6.)*TIME_TO_LREAL(ET2)/TIME_TO_LREAL (timeToMove); encoderY[1]:=distanceToMove*1000*(5.0/6.4)*TIME_TO_LREAL(ET2)/TIME_TO_LREAL (timeToMove);
	9:encoderX[1]:=0.0; encoderY[1]:=0.0;
	10:encoderX[1]:=0.0; encoderY[1]:=0.0;
	ELSE
	encoderX[1]:=0.0; encoderY[1]:=0.0;
	END_CASE
encoderX[4]:=(inertialxDist*TIME_TO_LREAL(ET2)+20)/1000;
encoderY[4]:=(inertialyDist*TIME_TO_LREAL(ET2)+20)/1000;
IF(startKF=TRUE AND timer3On=FALSE) THEN startTimer3:= TRUE; ELSE startTimer3:=FALSE; END_IF

fbTON3(IN:=startTimer3, PT:=LREAL_TO_TIME(10) , Q=>timer3On);
	IF (timer3On=TRUE) THEN
	fbkalmanFilter[1](reading:=(encoderX[3]),target:=encoderX[1],noiseVar:= 0.1);    (* encoder in mm*)
	combinedX:=fbkalmanFilter[1].out;
	fbkalmanFilter[2](reading:=(encoderY[3]),target:=encoderY[1],noiseVar:= 0.1);
	combinedY:=fbkalmanFilter[2].out;
	startTimer3:=FALSE;
	END_IF

IF (stopMotion=TRUE) THEN

	(*encoderX[4]:=inertialxDist-sencoderX[4];
	encoderY[4]:=inertialyDist-sencoderY[4];*)
	heading[2]:= inertialheading;

	stopMotion:=FALSE;   (*do only once*)


(*average*)
IF(main.startLoop=TRUE) THEN oldCombinedX:=combinedX; oldCombinedY:=combinedY; oldCombinedH:=combinedH; ELSE oldCombinedX:=0; oldCombinedY:=0; END_IF

	combinedX:=oldCombinedX+(combinedX*1.0+encoderX[4]*0.00);
	combinedY:=oldCombinedY+(combinedY*1.0+encoderY[4]*0.00);
	IF (heading[1]-heading[2]<300 AND heading[1]-heading[2]>-300)
	THEN combinedH:=oldCombinedH+((heading[1]+heading[2]) / 2);
	ELSE
	combinedH:=oldCombinedH+(heading[1]+heading[2]);  (*cater for the angle such as 350 and 10*)
		IF combinedH>=360.0 THEN combinedH:=combinedH-360; END_IF
	END_IF
END_IF

(*Heading1 calculation from encoder 2 and 3, assume encodr 2 at origin*)
	differentX:=encoderX[3]-encoderX[2]+70;
	differentY:=520+encoderY[3]-encoderY[2];

	IF (differentX>=0 AND differentY>=0) THEN heading[1]:=90-(ATAN(differentY/differentX))*3.142/180+7.67;  		(* 1st quad*)
	ELSIF (differentX<0 AND differentY>=0) THEN heading[1]:=270-(ATAN(differentY/differentX))*3.142/180+7.67;   	(* 2nd quad*)
	ELSIF (differentX<0 AND differentY<0) THEN heading[1]:=270-(ATAN(differentY/differentX))*3.142/180+7.67;     	(* 3rd quad*)
	ELSIF (differentX>=0 AND differentY<0) THEN heading[1]:=90+(ATAN(differentY/differentX))*3.142/180+7.67;    	(* 4th quad*)
	END_IF*)
RETURN;                   , ь   Ќ           MAIN МET	ьET      PШj            x	  PROGRAM MAIN
VAR
	fbPLC_Reset:  PLC_Reset;
	fbPLC_Start:  PLC_Start;
	state_NC : MoveState_NC;
(* manual runnning*)
	Manual: BOOL:=TRUE;
	bEnable: 			BOOL;										(* gibt die Achse frei *)
	bReset_Axis: 			BOOL;										(* Reset der Achse *)
	bAxis_Ready:		ARRAY[1..5] OF	BOOL;						(* Checks whether the axis is ready *)
	bMoveCombination:	ARRAY[1..10] OF		BOOL;					(*the combined movement*)
	i: INT;
	MotionReq: BOOL;
	timeToMove: TIME;
	directionToMove: INT;
	timeToMoveReal: LREAL;
	speedToMove:LREAL:=603;
	timeUp: BOOL;
	timerOn: BOOL;
	fbTON1: TON;



(*
###################
ROS TCP/IP CONNECTION
###################
*)
	myROS_connect_receiveData:				ROS_connect_receiveData;
	myROS_connect_sendData:				ROS_connect_sendData;
	myROS_disconnect:			ROS_disconnect;
	myROS_receiveData:			ROS_receiveData;
	myROS_sendData:			ROS_sendData;
	myROS_convertSendData:		ROS_convertSendData;

	ROS_tcpSocketReceiveData: T_HSOCKET;
	ROS_connectionOpenReceiveData: BOOL:=FALSE;

	ROS_tcpSocketSendData: T_HSOCKET;
	ROS_connectionOpenSendData: BOOL:=FALSE;

	ROS_closeConnection: BOOL:=TRUE;

	ROS_velAxis1: LREAL := 0;
	ROS_velAxis2: LREAL := 0;
	ROS_velAxis3: LREAL := 0;
	ROS_velAxis4: LREAL := 0;

	ROS_RobotPosX: LREAL := 0;
	ROS_RobotPosY: LREAL := 0;
	ROS_RobotPosTheta: LREAL:= 0;
	ROS_RobotVelX: LREAL:= 0;
	ROS_RobotVelY: LREAL:= 0;
	ROS_RobotVelTheta: LREAL:= 0;

	sendBufferREAL: LREAL:=0;
	sendBuffer: STRING;
	sendTakt: LREAL := 0;
	(*#END# ROS variables*)



	vel_last1 : LREAL;
	vel_current1 : LREAL;
	vel_last2 : LREAL;
	vel_current2 : LREAL;
	vel_last3 : LREAL;
	vel_current3 : LREAL;
	vel_last4 : LREAL;
	vel_current4 : LREAL;

(*
###################
ODOMETRY
###################
*)



	startTimer1: BOOL;
	timer1On: BOOL;

	firstStart: BOOL;
	Q: BOOL;
	startPLC: BOOL;
	oldSpeedX: LREAL;
	oldSpeedY: LREAL;
	oldSpeedH: LREAL;

(*JOSTICK*)
	connectJs:			jsConnect;
	disconnectJs:			jsDisconnect;
	receiveJsData:				jsReceiveData;
	tcpSockeJst: T_HSOCKET;
	connectionOpen_js: BOOL:=FALSE;
	closeConnection_js: BOOL:=TRUE;
	XAxis: LREAL;
	YAxis: LREAL;
	ZAxis: LREAL;
	botton: LREAL;

	myWP_tcpSocket: T_HSOCKET;
	myWP_connect:		WP_connect;
	myWP_disconnect:	WP_Disconnect;
	myWP_receiveData:	WP_ReceiveData;
	myWP_connected: BOOL := FALSE;
	myWP_connectionClosed: BOOL:=TRUE;
	wpBotton: LREAL;
END_VARЕ7  (*
##
## This code was built by Theng Chua and Christian Scheifele, University of Stuttgart, 2014.
## It contains complete segments from Chris Jarrett, Auckland University, 2014
## and is derived in part from the TCP/IP server example on www.beckhoff.com
##
*)

(*
###################
Manual
###################
*)
IF (Manual=TRUE) THEN
	IF (reset=TRUE) THEN
	trigger1:=FALSE;
	trigger2:=TRUE;
	fbPLC_Reset(port:=801,RESET:=TRUE);
	fbPLC_Start(port:=801,start:=TRUE);
	reset:=FALSE;
	trigger1:=FALSE;
	trigger2:=FALSE;
	END_IF

	FOR i:=1 TO 10 BY 1 DO
		IF(bMoveCombination[i]) THEN
			directionToMove:=i;
			MotionReq:=TRUE;
		END_IF
	END_FOR

	IF(MotionReq=TRUE) THEN
		CASE directionToMove OF
		1:	ROS_velAxis1:= -speedToMove;
			ROS_velAxis2:= 0;
			ROS_velAxis3:= 0;
			ROS_velAxis4:= -speedToMove;
		2:	ROS_velAxis1:= -speedToMove;
			ROS_velAxis2:= -speedToMove;
			ROS_velAxis3:= -speedToMove;
			ROS_velAxis4:= -speedToMove;
		3:	ROS_velAxis1:= 0;
			ROS_velAxis2:= -speedToMove;
			ROS_velAxis3:= -speedToMove;
			ROS_velAxis4:= 0;
		4:	ROS_velAxis1:= -speedToMove;
			ROS_velAxis2:= speedToMove;
			ROS_velAxis3:= speedToMove;
			ROS_velAxis4:= -speedToMove;
		5:	ROS_velAxis1:= speedToMove;
			ROS_velAxis2:= -speedToMove;
			ROS_velAxis3:= -speedToMove;
			ROS_velAxis4:= speedToMove;
		6:	ROS_velAxis1:= 0;
			ROS_velAxis2:= speedToMove;
			ROS_velAxis3:= speedToMove;
			ROS_velAxis4:= 0;
		7:	ROS_velAxis1:= speedToMove;
			ROS_velAxis2:= speedToMove;
			ROS_velAxis3:= speedToMove;
			ROS_velAxis4:= speedToMove;
		8:	ROS_velAxis1:= speedToMove;
			ROS_velAxis2:= 0;
			ROS_velAxis3:= 0;
			ROS_velAxis4:= speedToMove;
		9:	ROS_velAxis1:= -speedToMove;
			ROS_velAxis2:= speedToMove;
			ROS_velAxis3:= -speedToMove;
			ROS_velAxis4:= speedToMove;
		10:	ROS_velAxis1:= speedToMove;
			ROS_velAxis2:= -speedToMove;
			ROS_velAxis3:= speedToMove;
			ROS_velAxis4:= -speedToMove;
		ELSE
			ROS_velAxis1:= 0;
			ROS_velAxis2:= 0;
			ROS_velAxis3:= 0;
			ROS_velAxis4:= 0;
		END_CASE
	timetomove:= REAL_TO_TIME (timeToMoveReal);
	timerOn:=TRUE;
	END_IF

	fbTON1(IN:=timerOn, PT:=timeToMove, Q=>timeUp, ET=>);

	IF (timeUp=TRUE)  THEN
	MotionReq:=FALSE;
	bMoveCombination[directionToMove]:=FALSE;
	ROS_velAxis1:= 0;
	ROS_velAxis2:= 0;
	ROS_velAxis3:= 0;
	ROS_velAxis4:= 0;
	directionToMove:=0;
	timerOn:=FALSE;
	END_IF
(*
###################
ODOMETRY
###################
*)

	IF (vel_current1<>0 OR vel_current2<>0 OR vel_current3<>0 OR vel_current4<>0) THEN trigger1:=TRUE;
	ELSE trigger1:=FALSE;
	END_IF

	trigger2:=(MoveAxis1.InVelocity AND MoveAxis2.InVelocity AND MoveAxis3.InVelocity AND MoveAxis4.InVelocity) OR (MoveAxis12.InVelocity AND MoveAxis22.InVelocity AND MoveAxis32.InVelocity AND MoveAxis42.InVelocity);

ELSE
(*
###################
ROS TCP/IP CONNECTION
###################

Close TCP port from last time-remove after DEBUG
	
		IF ROS_closeConnection THEN
		myROS_disconnect(bCloseAll:=ROS_closeConnection);
		ROS_closeConnection:=FALSE;
		END_IF*)

		(*Open a connection to ROS - Receive Data*)
		IF NOT ROS_connectionOpenReceiveData THEN
		myROS_connect_receiveData(RosConnected=>ROS_connectionOpenReceiveData, socketToUse=>ROS_tcpSocketReceiveData);
		END_IF
		IF ROS_connectionOpenReceiveData THEN
		myROS_receiveData(socketToUse:=ROS_tcpSocketReceiveData,velAxis1=>ROS_velAxis1, velAxis2=>ROS_velAxis2, velAxis3=>ROS_velAxis3, velAxis4=>ROS_velAxis4);
		END_IF

		(*Open a connection to ROS - Send Data*)
		IF NOT ROS_connectionOpenSendData THEN
		myROS_connect_sendData(RosConnected=>ROS_connectionOpenSendData, socketToUse=>ROS_tcpSocketSendData);
		END_IF

		(*ODOMETRY SORCE*)
		ROS_RobotPosX := robotPosY;
		ROS_RobotPosY := robotPosX;
		ROS_RobotPosTheta := robotPosTheta;
		ROS_RobotVelX := RobotVelY;
		ROS_RobotVelY := RobotVelX;
		ROS_RobotVelTheta := RobotVelTheta;

		IF ROS_connectionOpenSendData THEN
		(* TAKTZEIT EINSTELLEN *)
		sendTakt := sendTakt + 0.1;
			IF sendTakt > 1THEN
			myROS_convertSendData(robotPosX:=ROS_RobotPosX, robotPosY:=ROS_RobotPosY, robotPosTheta:= ROS_RobotPosTheta, robotVelX:=ROS_RobotVelX, robotVelY:=ROS_RobotVelY, robotVelTheta:=ROS_RobotVelTheta, send_message=>sendBuffer );
			myROS_sendData(sendBuffer:=sendBuffer, socketToUse:=ROS_tcpSocketSendData);
			sendTakt := 0;
			END_IF
		END_IF



	(*JOSTICK*)
	(*Close TCP port from last time-remove after DEBUG*)
	IF closeConnection_js THEN
	disconnectJs(bCloseAll:=closeConnection_js);
	closeConnection_js:=FALSE;
	END_IF

	(*Open a connection*)
	IF (connectionOpen_js=FALSE) THEN
	connectJs(arduinoConnected=>connectionOpen_js, socketToUse=>tcpSockeJst);
	END_IF

	IF (connectionOpen_js=TRUE) THEN
	receiveJsData(socketToUse:=tcpSockeJst ,botton=>botton, xAxis=>XAxis, yAxis=>YAxis, zAxis=>ZAxis);
	END_IF

	IF  (botton = 48 OR botton = 32) THEN
	ROS_velAxis1:= -YAxis+XAxis-ZAxis;
	ROS_velAxis2:= -YAxis-XAxis+ZAxis;
	ROS_velAxis3:= -YAxis-XAxis-ZAxis;
	ROS_velAxis4:= -YAxis+XAxis+ZAxis;
	ELSE
	ROS_velAxis1:= 0;
	ROS_velAxis2:= 0;
	ROS_velAxis3:= 0;
	ROS_velAxis4:= 0;
	END_IF

(*Windows Phone Connection*)

	IF (myWP_connectionClosed) THEN
	myWP_disconnect(bCloseAll:=myWP_connectionClosed);
	myWP_connectionClosed:=FALSE;
	END_IF

	IF (myWP_connected=FALSE) THEN
	myWP_connect(WPConnected=>myWP_connected, socketToUse=>myWP_tcpSocket);
	END_IF

	IF (myWP_connected=TRUE) THEN
	myWP_receiveData(socketToUse:=myWP_tcpSocket ,botton=>wpBotton, xAxis=>XAxis, yAxis=>YAxis, zAxis=>ZAxis);
		IF(wpBotton <> 0 ) THEN
			ROS_velAxis1:= -YAxis+XAxis-ZAxis;
			ROS_velAxis2:= -YAxis-XAxis+ZAxis;
			ROS_velAxis3:= -YAxis-XAxis-ZAxis;
			ROS_velAxis4:= -YAxis+XAxis+ZAxis;
		END_IF
		wpBotton := 0;
	END_IF

END_IF (* for manual running*)

(*
###################
TwinCAT NC Achsen
###################
*)
Axis1.ReadStatus;
Axis2.ReadStatus;
Axis3.ReadStatus;
Axis4.ReadStatus;

vel_current1 := -ROS_velAxis1;
vel_current2 := ROS_velAxis2;
vel_current3 := -ROS_velAxis3;
vel_current4 := ROS_velAxis4;

(* move axis using a state machine *)
CASE state_NC OF
		NC_INIT :	(* initialisation *)
			(* initialize all function blocks *)
			MoveAxis1.Execute := FALSE;
			ResetAxis1.Execute := FALSE;
			MoveAxis2.Execute := FALSE;
			ResetAxis2.Execute := FALSE;
			MoveAxis3.Execute := FALSE;
			ResetAxis3.Execute := FALSE;
			MoveAxis4.Execute := FALSE;
			ResetAxis4.Execute := FALSE;
			MoveAxis12.Execute := FALSE;
			MoveAxis22.Execute := FALSE;
			MoveAxis32.Execute := FALSE;
			MoveAxis42.Execute := FALSE;
			HaltAxis1.Execute := FALSE;
			HaltAxis2.Execute := FALSE;
			HaltAxis3.Execute := FALSE;
			HaltAxis4.Execute := FALSE;

			state_NC := NC_ENABLE;

		NC_ENABLE :
			PowerAxis1.Enable := TRUE;
			PowerAxis1.Enable_Positive := TRUE;
			PowerAxis1.Enable_Negative := TRUE;
			PowerAxis2.Enable := TRUE;
			PowerAxis2.Enable_Positive := TRUE;
			PowerAxis2.Enable_Negative := TRUE;
			PowerAxis3.Enable := TRUE;
			PowerAxis3.Enable_Positive := TRUE;
			PowerAxis3.Enable_Negative := TRUE;
			PowerAxis4.Enable := TRUE;
			PowerAxis4.Enable_Positive := TRUE;
			PowerAxis4.Enable_Negative := TRUE;

			IF PowerAxis1.Status AND PowerAxis2.Status AND PowerAxis3.Status AND PowerAxis4.Status THEN
				state_NC := NC_MOVE;
			ELSIF PowerAxis1.Error AND PowerAxis2.Error AND PowerAxis3.Error AND PowerAxis4.Error THEN
				state_NC := NC_ERROR;
			END_IF

		NC_MOVE :
			IF vel_current1>0 THEN
				HaltAxis1.Execute := FALSE;
				MoveAxis1.Direction := MC_Positive_Direction;
				MoveAxis1.Velocity := vel_current1;
				MoveAxis1.BufferMode := MC_Aborting;
				MoveAxis1.Execute := TRUE;
			ELSIF vel_current1<0 THEN
				HaltAxis1.Execute := FALSE;
				MoveAxis1.Direction := MC_Negative_Direction;
				MoveAxis1.Velocity := -vel_current1;
				MoveAxis1.BufferMode := MC_Aborting;
				MoveAxis1.Execute := TRUE;
			ELSE
				HaltAxis1.BufferMode := MC_Aborting;
				HaltAxis1.Execute := TRUE;
			END_IF;


			IF vel_current2>0 THEN
				HaltAxis2.Execute := FALSE;
				MoveAxis2.Direction := MC_Positive_Direction;
				MoveAxis2.Velocity := vel_current2;
				MoveAxis2.BufferMode := MC_Aborting;
				MoveAxis2.Execute := TRUE;
			ELSIF vel_current2<0 THEN
				HaltAxis2.Execute := FALSE;
				MoveAxis2.Direction := MC_Negative_Direction;
				MoveAxis2.Velocity := -vel_current2;
				MoveAxis2.BufferMode := MC_Aborting;
				MoveAxis2.Execute := TRUE;
			ELSE
				HaltAxis2.BufferMode := MC_Aborting;
				HaltAxis2.Execute := TRUE;
			END_IF;


			IF vel_current3>0 THEN
				HaltAxis3.Execute := FALSE;
				MoveAxis3.Direction := MC_Positive_Direction;
				MoveAxis3.Velocity := vel_current3;
				MoveAxis3.BufferMode := MC_Aborting;
				MoveAxis3.Execute := TRUE;
			ELSIF vel_current3<0 THEN
				HaltAxis3.Execute := FALSE;
				MoveAxis3.Direction := MC_Negative_Direction;
				MoveAxis3.Velocity := -vel_current3;
				MoveAxis3.BufferMode := MC_Aborting;
				MoveAxis3.Execute := TRUE;
			ELSE
				HaltAxis3.BufferMode := MC_Aborting;
				HaltAxis3.Execute := TRUE;
			END_IF;


			IF vel_current4>0 THEN
				HaltAxis4.Execute := FALSE;
				MoveAxis4.Direction := MC_Positive_Direction;
				MoveAxis4.Velocity := vel_current4;
				MoveAxis4.BufferMode := MC_Aborting;
				MoveAxis4.Execute := TRUE;
			ELSIF vel_current4<0 THEN
				HaltAxis4.Execute := FALSE;
				MoveAxis4.Direction := MC_Negative_Direction;
				MoveAxis4.Velocity := -vel_current4;
				MoveAxis4.BufferMode := MC_Aborting;
				MoveAxis4.Execute := TRUE;
			ELSE
				HaltAxis4.BufferMode := MC_Aborting;
				HaltAxis4.Execute := TRUE;
			END_IF;

			IF vel_last1<>vel_current1 OR vel_last2<>vel_current2 OR vel_last3<>vel_current3 OR vel_last4<>vel_current4 THEN
				MoveAxis1.Execute := FALSE;
				MoveAxis2.Execute := FALSE;
				MoveAxis3.Execute := FALSE;
				MoveAxis4.Execute := FALSE;
				vel_last1 := vel_current1;
				vel_last2 := vel_current2;
				vel_last3 := vel_current3;
				vel_last4 := vel_current4;
				state_NC := NC_MOVENEXT;
			END_IF;
			IF  MoveAxis1.CommandAborted OR MoveAxis1.Error OR MoveAxis2.CommandAborted OR MoveAxis2.Error OR MoveAxis3.CommandAborted OR MoveAxis3.Error OR MoveAxis4.CommandAborted OR MoveAxis4.Error THEN
				state_NC := NC_MOVE;
			END_IF

		NC_MOVENEXT :
			IF vel_current1>0 THEN
				HaltAxis1.Execute := FALSE;
				MoveAxis12.Direction := MC_Positive_Direction;
				MoveAxis12.Velocity := vel_current1;
				MoveAxis12.BufferMode := MC_Aborting;
				MoveAxis12.Execute := TRUE;
			ELSIF vel_current1<0 THEN
				HaltAxis1.Execute := FALSE;
				MoveAxis12.Direction := MC_Negative_Direction;
				MoveAxis12.Velocity := -vel_current1;
				MoveAxis12.BufferMode := MC_Aborting;
				MoveAxis12.Execute := TRUE;
			ELSE
				HaltAxis1.BufferMode := MC_Aborting;
				HaltAxis1.Execute := TRUE;
			END_IF;


			IF vel_current2>0 THEN
				HaltAxis2.Execute := FALSE;
				MoveAxis22.Direction := MC_Positive_Direction;
				MoveAxis22.Velocity := vel_current2;
				MoveAxis22.BufferMode := MC_Aborting;
				MoveAxis22.Execute := TRUE;
			ELSIF vel_current2<0 THEN
				HaltAxis2.Execute := FALSE;
				MoveAxis22.Direction := MC_Negative_Direction;
				MoveAxis22.Velocity := -vel_current2;
				MoveAxis22.BufferMode := MC_Aborting;
				MoveAxis22.Execute := TRUE;
			ELSE
				HaltAxis2.BufferMode := MC_Aborting;
				HaltAxis2.Execute := TRUE;
			END_IF;


			IF vel_current3>0 THEN
				HaltAxis3.Execute := FALSE;
				MoveAxis32.Direction := MC_Positive_Direction;
				MoveAxis32.Velocity := vel_current3;
				MoveAxis32.BufferMode := MC_Aborting;
				MoveAxis32.Execute := TRUE;
			ELSIF vel_current3<0 THEN
				HaltAxis3.Execute := FALSE;
				MoveAxis32.Direction := MC_Negative_Direction;
				MoveAxis32.Velocity := -vel_current3;
				MoveAxis32.BufferMode := MC_Aborting;
				MoveAxis32.Execute := TRUE;
			ELSE
				HaltAxis3.BufferMode := MC_Aborting;
				HaltAxis3.Execute := TRUE;
			END_IF;


			IF vel_current4>0 THEN
				HaltAxis4.Execute := FALSE;
				MoveAxis42.Direction := MC_Positive_Direction;
				MoveAxis42.Velocity := vel_current4;
				MoveAxis42.BufferMode := MC_Aborting;
				MoveAxis42.Execute := TRUE;
			ELSIF vel_current4<0 THEN
				HaltAxis4.Execute := FALSE;
				MoveAxis42.Direction := MC_Negative_Direction;
				MoveAxis42.Velocity := -vel_current4;
				MoveAxis42.BufferMode := MC_Aborting;
				MoveAxis42.Execute := TRUE;
			ELSE
				HaltAxis4.BufferMode := MC_Aborting;
				HaltAxis4.Execute := TRUE;
			END_IF;

			IF vel_last1<>vel_current1 OR vel_last2<>vel_current2 OR vel_last3<>vel_current3 OR vel_last4<>vel_current4 THEN
				MoveAxis12.Execute := FALSE;
				MoveAxis22.Execute := FALSE;
				MoveAxis32.Execute := FALSE;
				MoveAxis42.Execute := FALSE;
				vel_last1 := vel_current1;
				vel_last2 := vel_current2;
				vel_last3 := vel_current3;
				vel_last4 := vel_current4;
				state_NC := NC_MOVE;
			END_IF;
			IF  MoveAxis12.CommandAborted OR MoveAxis12.Error OR MoveAxis22.CommandAborted OR MoveAxis22.Error OR MoveAxis32.CommandAborted OR MoveAxis32.Error OR MoveAxis42.CommandAborted OR MoveAxis42.Error THEN
				state_NC := NC_MOVE;
			END_IF


		NC_ERROR :
			IF Axis1.Status.Error OR Axis2.Status.Error OR Axis3.Status.Error OR Axis4.Status.Error THEN
				state_NC := NC_RESET;	(* axis error requires reset *)
			ELSE
				state_NC := NC_INIT;		(* function block errors don't need a reset *)
			END_IF

		NC_RESET :
			ResetAxis1.Execute := TRUE;
			ResetAxis2.Execute := TRUE;
			ResetAxis3.Execute := TRUE;
			ResetAxis4.Execute := TRUE;
			IF ResetAxis1.Done AND ResetAxis2.Done AND ResetAxis3.Done AND ResetAxis4.Done THEN
				state_NC := NC_INIT;
			ELSIF ResetAxis1.Error OR ResetAxis2.Error OR ResetAxis3.Error OR ResetAxis4.Error THEN
				state_NC := NC_INIT; (* can't do anything here *)
			END_IF

END_CASE

ActPower;	(* call the power function block *)
ActMove;	(* call the move function block *)
ActReset;	(* call the reset function block *)
ActHaltAxis1;
ActHaltAxis2;
ActHaltAxis3;
ActHaltAxis4;

 к  , Џ Џ -           ActHaltAxis1 |ET      	HaltAxis1     AAxis1MC_Halt               d   л  ,   ~Ц           ActHaltAxis2 |ET      	HaltAxis2     AAxis2MC_Halt               d   о  , 2 2 п           ActHaltAxis3 |ET      	HaltAxis3     AAxis3MC_Halt               d   п  ,     e­           ActHaltAxis4 |ET      	HaltAxis4     AAxis4MC_Halt               d   й  ,   ћC           ActMove |ET      	MoveAxis1        AAxis1MC_MoveVelocity                    	MoveAxis2        AAxis2MC_MoveVelocity                    	MoveAxis4        AAxis4MC_MoveVelocity                    	MoveAxis3        AAxis3MC_MoveVelocity                    
MoveAxis12        AAxis1MC_MoveVelocity                    
MoveAxis22        AAxis2MC_MoveVelocity                    
MoveAxis32        AAxis3MC_MoveVelocity                    
MoveAxis42        AAxis4MC_MoveVelocity               d   И  ,              ActPower |ET      
PowerAxis1   100 AAxis1MC_Power                  
PowerAxis2   100 AAxis2MC_Power                  
PowerAxis4   100 AAxis4MC_Power                  
PowerAxis3   100 AAxis3MC_Power             d   К  ,     ~k           ActReset |ET      
ResetAxis1 AAxis1MC_Reset                
ResetAxis2 AAxis2MC_Reset                
ResetAxis3 AAxis2MC_Reset                
ResetAxis4 AAxis2MC_Reset           d                е  , X X Еб           MainFast |ET	|ET       БhШ)P        ?   PROGRAM MainFast
VAR
	fblocalization:  localization;
END_VARЊ   

fblocalization(robotPosX=>robotPosX, robotPosY=>robotPosY,robotPosTheta=>robotPosTheta, robotVelX=>robotVelX, robotVelY=>robotVelY, robotVelTheta=>robotVelTheta);

               З  , 2 2 А           ROS_connect_receiveData |ET	|ET       §џ          R  FUNCTION_BLOCK ROS_connect_receiveData
VAR


	(*Functions*)
	openSocket: BOOL:=FALSE;
	fb_listen: FB_SocketListen;
	fb_accept: FB_SocketAccept;
	(*Timers*)
	fbAcceptTON: TON;

	(*TCP socket variables*)
	activeSocketHandle: T_HSOCKET;
	socketHandle: T_HSOCKET;



	(*Error variables*)
	listenError: UDINT:=0;
	acceptError: UDINT;
	listenErrSet: BOOL;
	closeError: UDINT;
	sendError: UDINT;
	receiveError: UDINT;
	bSendError: BOOL;


	(*Trigger Variables*)
	bCloseAll: BOOL := TRUE;

	(*Connection information*)
	portNumber: INT:=711;
	bAccepted: BOOL;

	(*Constants*)
	PLCPRJ_ACCEPT_POLLING_TIME: TIME:=T#1s;

	display: LREAL;
	heading: LREAL;

	state: INT:=0;

	xDist: LREAL;
	yDist: LREAL;
	zDist: LREAL;


	listening: BOOL;
END_VAR
VAR_OUTPUT
	RosConnected: BOOL;
	socketToUse: T_HSOCKET;
END_VARќ  (*
##
## This code was built by Christian Scheifele, University of Stuttgart, 2014.
## It contains complete segments from Chris Jarrett, Auckland University, 2014
## and is derived in part from the TCP/IP server example on www.beckhoff.com
##
*)

CASE state OF
0:

IF(fb_Listen.hListener.localAddr.nPort=portNumber) THEN
RETURN;

ELSE
state:=1;
END_IF

1:
fb_listen
(
	sSrvNetId:='' ,
	sLocalHost:='',
	nLocalPort:=portNumber,
	bExecute:=TRUE,
	tTimeout:=T#5s,
	hListener=>socketHandle,
	nErrId=>listenError,
	bError=>listenErrSet,

);

	IF(fb_Listen.hListener.localAddr.nPort=portNumber) THEN
		fb_listen(bExecute:=FALSE); 		(*Start listening and move to the accept state*)

		state:=2;
	ELSE
		(*Return to the listening state*)
		state:=1;
	END_IF



2:

(*Start accepting a client connection*)
fbAcceptTON( IN := TRUE, PT := T#2s);  (*Start a timer to poll for the accepted connection*)
		IF fbAcceptTON.Q THEN
			fbAcceptTON( IN := FALSE );	(*Reset timer*)
			fb_accept(  bExecute := FALSE  ); (*Generate a rising edge to activate the accept function*)
			fb_accept(hListener := socketHandle, bExecute:= TRUE, hSocket=>activeSocketHandle );
			state:=3; (*Move to the state where the client is accepted*)

			fbAcceptTON( IN := FALSE);

		END_IF
3:
(*Complete accpeting the client connection*)
	fb_accept( bExecute := FALSE ); (*Reset the accept function to try connection again if necessary*)
	IF NOT fb_accept.bBusy THEN
		IF NOT fb_accept.bError THEN
			IF fb_accept.bAccepted THEN
				bAccepted := TRUE; (*If the client connection is accepted without error then move to the send state*)
				fb_accept(bExecute:=FALSE);
				socketToUse:=fb_accept.hSocket;
				state:=4;
			ELSE
				fb_listen(bExecute:=FALSE);
				fb_accept(bExecute:=FALSE);
				RosConnected:=FALSE; (*If the connection attempt was not successful, return the boolean as false*)
				fbAcceptTON( IN := FALSE);
				state:=2;
			END_IF
		END_IF
	END_IF
4:
RosConnected:=TRUE;
RETURN;

END_CASE;               Л  ,   ЫC           ROS_connect_sendData |ET	|ET      иXНРg        O  FUNCTION_BLOCK ROS_connect_sendData
VAR


	(*Functions*)
	openSocket: BOOL:=FALSE;
	fb_listen: FB_SocketListen;
	fb_accept: FB_SocketAccept;
	(*Timers*)
	fbAcceptTON: TON;

	(*TCP socket variables*)
	activeSocketHandle: T_HSOCKET;
	socketHandle: T_HSOCKET;



	(*Error variables*)
	listenError: UDINT:=0;
	acceptError: UDINT;
	listenErrSet: BOOL;
	closeError: UDINT;
	sendError: UDINT;
	receiveError: UDINT;
	bSendError: BOOL;


	(*Trigger Variables*)
	bCloseAll: BOOL := TRUE;

	(*Connection information*)
	portNumber: INT:=712;
	bAccepted: BOOL;

	(*Constants*)
	PLCPRJ_ACCEPT_POLLING_TIME: TIME:=T#1s;

	display: LREAL;
	heading: LREAL;

	state: INT:=0;

	xDist: LREAL;
	yDist: LREAL;
	zDist: LREAL;


	listening: BOOL;
END_VAR
VAR_OUTPUT
	RosConnected: BOOL;
	socketToUse: T_HSOCKET;
END_VAR  (*
##
## This code was built by Christian Scheifele, University of Stuttgart, 2014.
## It contains complete segments from Chris Jarrett, Auckland University, 2014
## and is derived in part from the TCP/IP server example on www.beckhoff.com
##
*)

CASE state OF
0:

IF(fb_Listen.hListener.localAddr.nPort=portNumber) THEN
RETURN;

ELSE
state:=1;
END_IF

1:
(*This code was built by Chris Jarrett, Auckland University, 2014. It is derived in part from the TCP/IP server example on www.beckhoff.com*)
fb_listen
(
	sSrvNetId:='' ,
	sLocalHost:='',
	nLocalPort:=portNumber,
	bExecute:=TRUE,
	tTimeout:=T#5s,
	hListener=>socketHandle,
	nErrId=>listenError,
	bError=>listenErrSet,

);

	IF(fb_Listen.hListener.localAddr.nPort=portNumber) THEN
		fb_listen(bExecute:=FALSE); 		(*Start listening and move to the accept state*)

		state:=2;
	ELSE
		(*Return to the listening state*)
		state:=1;
	END_IF



2:

(*Start accepting a client connection*)
fbAcceptTON( IN := TRUE, PT := T#2s);  (*Start a timer to poll for the accepted connection*)
		IF fbAcceptTON.Q THEN
			fbAcceptTON( IN := FALSE );	(*Reset timer*)
			fb_accept(  bExecute := FALSE  ); (*Generate a rising edge to activate the accept function*)
			fb_accept(hListener := socketHandle, bExecute:= TRUE, hSocket=>activeSocketHandle );
			state:=3; (*Move to the state where the client is accepted*)

			fbAcceptTON( IN := FALSE);

		END_IF
3:
(*Complete accpeting the client connection*)
	fb_accept( bExecute := FALSE ); (*Reset the accept function to try connection again if necessary*)
	IF NOT fb_accept.bBusy THEN
		IF NOT fb_accept.bError THEN
			IF fb_accept.bAccepted THEN
				bAccepted := TRUE; (*If the client connection is accepted without error then move to the send state*)
				fb_accept(bExecute:=FALSE);
				socketToUse:=fb_accept.hSocket;
				state:=4;
			ELSE
				fb_listen(bExecute:=FALSE);
				fb_accept(bExecute:=FALSE);
				RosConnected:=FALSE; (*If the connection attempt was not successful, return the boolean as false*)
				fbAcceptTON( IN := FALSE);
				state:=2;
			END_IF
		END_IF
	END_IF
4:
RosConnected:=TRUE;
RETURN;

END_CASE;               М  ,              ROS_convertSendData |ET	|ET      UшVxhЏ        }  FUNCTION_BLOCK ROS_convertSendData
VAR_INPUT
	robotPosX: LREAL;
	robotPosY: LREAL;
	robotPosTheta: LREAL;
	robotVelX: LREAL;
	robotVelY: LREAL;
	robotVelTheta: LREAL;
END_VAR
VAR_OUTPUT
	send_message: STRING;
END_VAR
VAR
	posXString: STRING;
	posYString: STRING;
	posThetaString: STRING;
	velXString: STRING;
	velYString: STRING;
	velThetaString: STRING;
END_VARI  (*
##
## This code was built by Christian Scheifele, University of Stuttgart, 2014.
##
*)

(* Eingangsdaten verarbeiten *)
posXString := LREAL_TO_STRING(ABS(robotPosX));
posYString := LREAL_TO_STRING(ABS(robotPosY));
posThetaString := LREAL_TO_STRING(ABS(robotPosTheta)*100);
velXString := LREAL_TO_STRING(ABS(robotVelX));
velYString := LREAL_TO_STRING(ABS(robotVelY));
velThetaString := LREAL_TO_STRING(ABS(robotVelTheta)*100);

(* posXString bearbeiten *)
posXString := LEFT(posXString, FIND(posXString, '.')-1);
IF LEN(posXString) < 7 THEN
posXString := INSERT(posXString, '0000000',0 );
posXString := RIGHT(posXString, 6);
IF(robotPosX < 0) THEN
posXString := INSERT(posXString, '-',0 );
ELSE
posXString := INSERT(posXString, '0',0 );
END_IF;
END_IF;


(* posYString bearbeiten *)
posYString := LEFT(posYString, FIND(posYString, '.')-1);
IF LEN(posYString) < 7 THEN
	posYString := INSERT(posYString, '0000000',0 );
	posYString := RIGHT(posYString, 6);
	IF(robotPosY < 0) THEN
		posYString := INSERT(posYString, '-',0 );
	ELSE
		posYString := INSERT(posYString, '0',0 );
	END_IF;
END_IF;

(* posThetaString bearbeiten *)
posThetaString := LEFT(posThetaString, FIND(posThetaString, '.')-1);
IF LEN(posThetaString) < 7 THEN
	posThetaString := INSERT(posThetaString, '0000000',0 );
	posThetaString := RIGHT(posThetaString, 6);
	IF(robotPosTheta < 0) THEN
		posThetaString := INSERT(posThetaString, '-',0 );
	ELSE
		posThetaString := INSERT(posThetaString, '0',0 );
	END_IF;
END_IF;

(* velXString bearbeiten *)
velXString := LEFT(velXString, FIND(velXString, '.')-1);
IF LEN(velXString) < 7 THEN
velXString := INSERT(velXString, '0000000',0 );
velXString := RIGHT(velXString, 6);
	IF(robotVelX < 0) THEN
		velXString := INSERT(velXString, '-',0 );
	ELSE
		velXString := INSERT(velXString, '0',0 );
	END_IF;
END_IF;

(* velYString bearbeiten *)
velYString := LEFT(velYString, FIND(velYString, '.')-1);
IF LEN(velYString) < 7 THEN
velYString := INSERT(velYString, '0000000',0 );
velYString := RIGHT(velYString, 6);
	IF(robotVelY < 0) THEN
		velYString := INSERT(velYString, '-',0 );
	ELSE
		velYString := INSERT(velYString, '0',0 );
	END_IF;
END_IF;

(* velThetaString bearbeiten *)
velThetaString := LEFT(velThetaString, FIND(velThetaString, '.')-1);
IF LEN(velThetaString) < 7 THEN
velThetaString := INSERT(velThetaString, '0000000',0 );
velThetaString := RIGHT(velThetaString, 6);
	IF(robotVelTheta < 0) THEN
		velThetaString := INSERT(velThetaString, '-',0 );
	ELSE
		velThetaString := INSERT(velThetaString, '0',0 );
	END_IF;
END_IF;

send_message := CONCAT (posXString, posYString);
send_message := CONCAT (send_message, posThetaString);
send_message := CONCAT (send_message, velXString);
send_message := CONCAT (send_message, velYString);
send_message := CONCAT (send_message, velThetaString);               Н    (n@><аR           ROS_disconnect |ET	|ET      `R ќШ8јV        Ѓ   FUNCTION_BLOCK ROS_disconnect
VAR_INPUT
	bCloseAll: BOOL;
END_VAR
VAR_OUTPUT
	connectionClosed: BOOL;
END_VAR
VAR
	fb_closeAll: FB_SocketCloseAll;
END_VAR  (*
##
## This code was built by Christian Scheifele, University of Stuttgart, 2014.
## It contains complete segments from Chris Jarrett, Auckland University, 2014
## and is derived in part from the TCP/IP server example on www.beckhoff.com
##
*)


(*This function closes the TCP/IP port being used the ROS connection*)

IF bCloseAll THEN
	bCloseAll:=FALSE;
	(*Close all open ports*)
	fb_closeAll(sSrvNetId:='', bExecute:=TRUE, tTimeOut:=T#5s );
ELSE
	fb_closeAll(bExecute:=FALSE);
END_IF


(*Move to the listening state*)
IF NOT fb_closeAll.bError THEN
	connectionClosed:=TRUE;


ELSE
connectionClosed:=FALSE;
END_IF
RETURN;               О  , K K ЩЖ           ROS_receiveData |ET	|ET      07P(G(Х        е  FUNCTION_BLOCK ROS_receiveData
VAR_INPUT
	socketToUse: T_HSOCKET;
END_VAR
VAR_OUTPUT
	dataReceived: BOOL;
	velAxis1: LREAL;
	velAxis2: LREAL;
	velAxis3: LREAL;
	velAxis4: LREAL;
END_VAR
VAR
	(*Connection timers*)
	fbReceiveTON: TON;
	fbResetTON:TON;
	reset: BOOL;
	timeup:BOOL;

 	(*Functions*)
	fb_receive: FB_SocketReceive;

	(*Send and receive data and variables*)
	receiveBuffer: ARRAY[0..27] OF BYTE;
	bytesReceived: UDINT;
	sendBuffer: STRING;
	sendBufferAddress: DWORD;
	cbReceived, startPos, endPos, idx : UDINT;
	cbFrame: UDINT;
	sFromClient: T_MaxString;
	overflow: BOOL;
	endFound: BOOL;

	(*Error variables*)
	acceptError: UDINT;
	receiveError: UDINT;

	state: INT:=1;
END_VARе  (*
##
## This code was built by Christian Scheifele, University of Stuttgart, 2014.
## It contains complete segments from Chris Jarrett, Auckland University, 2014
## and is derived in part from the TCP/IP server example on www.beckhoff.com
##
*)

CASE state OF
1:
(*Receive information*)
	fbReceiveTON(  IN := FALSE, PT:=T#0s); (*Receive first request immediately*)
	fbReceiveTON(  IN := TRUE ); (*Start a timer to ensure complete transfer of information*)

		IF fbReceiveTON.Q THEN
			fbReceiveTON(  IN := FALSE);
			fb_receive(bExecute:=FALSE);  (*Generate a rising edge to start receiving data*)
			fb_receive
			(
				sSrvNetId:='',
				hSocket :=socketToUse,
				cbLen:=SIZEOF(receiveBuffer)-cbReceived,
				pDest:=ADR(receiveBuffer)+cbReceived,
				tTimeout:=T#5s,
				nRecBytes=>bytesReceived,
				nErrId=>receiveError,
				bExecute:=TRUE,
			);

	(*Move to the receive completion state*)
	state:=2;
	END_IF

2:
(*Continue receiving data*)
	fb_receive( bExecute := FALSE );
	IF NOT fb_receive.bBusy THEN
		IF NOT fb_receive.bError THEN (*If no error has occurred then start the actual receiving of data*)

			IF (fb_receive.nRecBytes>0) THEN (*Bytes have been received*)

				startPos:=cbReceived; (*index of first data byte*)
				endPos:=cbReceived+fb_receive.nRecBytes-1; (*index of last byte*)
				cbReceived:=cbReceived+fb_receive.nRecBytes; (*Calculating the number of received data bytes*)
				cbFrame:=0; (*Reset the frame length*)


				IF cbReceived<SIZEOF(sFromClient) THEN (*no overflow*)
					fbReceiveTON(IN:=FALSE, PT:=T#0S);

					(*Search for the string delimiter(separation character for different strings)*)
					FOR idx:=startPos TO endPos BY 1 DO
						IF receiveBuffer[idx]=0 THEN (*String delimiter found*)
							cbFrame:=idx+1;(*calculate length of received string*)
							MEMCPY(ADR(sFromClient), ADR(receiveBuffer),cbFrame); (*copy the received string to the output variable*)
							MEMMOVE(ADR(receiveBuffer), ADR(receiveBuffer[cbFrame]), cbReceived-cbFrame);(*move remaining data bytes*)
							dataReceived:=TRUE;  	(*Send an acknowledgement of data received*)
							state:=3; (*Move to the receive completion state*)
							endFound:=TRUE;
							EXIT;
						END_IF
					END_FOR
				ELSE(*no more free buffer space-overflow*)

					dataReceived:=FALSE;; (*Go to error state*)
					overflow:=TRUE;
					state:=4;
				END_IF
			ELSE(*no data received*)
					fbReceiveTON(IN:=FALSE, PT:=T#0ms);
					state:=1;
			END_IF
		ELSE(*error receiving data, exit function*)
			state:=4;
			dataReceived:=FALSE;
		END_IF
	END_IF

3:
	(*State used to process data*)
	velAxis1:=(STRING_TO_LREAL(MID(sFromClient, 7, 1)))/1000;  (*Extract the x distance*)
	velAxis2:=(STRING_TO_LREAL(MID(sFromClient, 7, 8)))/1000;
	velAxis3:=(STRING_TO_LREAL(MID(sFromClient, 7, 15)))/1000;
	velAxis4:=(STRING_TO_LREAL(MID(sFromClient, 7, 22)))/1000;

	fb_receive(bExecute:=FALSE); (*Reset the receive function*)
	startPos:=0; (*reset buffer beginning pointer*)
	endPos:=0;  (*reset buffer end pointer*)
	cbReceived:=0; (*reset bytes received counter*)
	sFromClient:=''; (*reset transition variable*)


	state:=1;
	RETURN;

4: (*Unused except for as an error state*)
trigger1:=FALSE;trigger2:=TRUE;

trigger2:=FALSE;

	(*Clear buffer-PROBABLY UNNECESSARY*)

	receiveBuffer[0]:=0;
	receiveBuffer[1]:=0;
	receiveBuffer[2]:=0;
	receiveBuffer[3]:=0;
	receiveBuffer[4]:=0;
	receiveBuffer[5]:=0;
	receiveBuffer[6]:=0;
	receiveBuffer[7]:=0;
	receiveBuffer[8]:=0;
	receiveBuffer[9]:=0;
	receiveBuffer[10]:=0;
	receiveBuffer[11]:=0;
	receiveBuffer[12]:=0;
	receiveBuffer[13]:=0;
	receiveBuffer[14]:=0;
	receiveBuffer[15]:=0;
	receiveBuffer[16]:=0;
	receiveBuffer[17]:=0;
	receiveBuffer[18]:=0;
	receiveBuffer[19]:=0;
	receiveBuffer[20]:=0;
	receiveBuffer[21]:=0;
	receiveBuffer[22]:=0;
	receiveBuffer[23]:=0;
	receiveBuffer[24]:=0;
	receiveBuffer[25]:=0;
	receiveBuffer[26]:=0;
	receiveBuffer[27]:=0;

	state:=1;
END_CASE;               П  , 2 2 ћ           ROS_sendData |ET	|ET      оxт`ЉШ        ў   FUNCTION_BLOCK ROS_sendData
VAR_INPUT
	sendBuffer: STRING;
	socketToUse: T_HSOCKET;
END_VAR
VAR_OUTPUT
END_VAR
VAR
 	(*Functions*)
	fb_send1: FB_SocketSend;
	(*Send data and variables*)
	sendBufferAddress1: DWORD;
	sendError1: UDINT;
END_VAR7  (*
##
## This code was built by Christian Scheifele, University of Stuttgart, 2014.
## It  is derived in part from the TCP/IP server example on www.beckhoff.com
##
*)
	(*Send a greeting to the client*)
	sendBufferAddress1:=ADR(sendBuffer);
	(*Send information*)
	fb_send1
	(
		sSrvNetId:='',
		hSocket:=socketToUse,
		cbLen:=INT_TO_UDINT(LEN( sendBuffer ))+1,
		pSrc:=sendBufferAddress1,
		bExecute:=TRUE,
		tTimeout:=T#5s,
		nErrId=>sendError1,
	);

	fb_send1( bExecute := FALSE );
	fb_send1( bExecute := TRUE );
	fb_send1( bExecute := FALSE );               +  , а а  q        
   WP_connect _ET	9ET      Р а3C          FUNCTION_BLOCK WP_connect
VAR


	(*Functions*)
	openSocket: BOOL:=FALSE;
	fb_listen: FB_SocketListen;
	fb_accept: FB_SocketAccept;
	(*Timers*)
	fbAcceptTON: TON;

	(*TCP socket variables*)
	activeSocketHandle: T_HSOCKET;
	socketHandle: T_HSOCKET;



	(*Error variables*)
	listenError: UDINT:=0;
	acceptError: UDINT;
	listenErrSet: BOOL;
	closeError: UDINT;
	sendError: UDINT;
	receiveError: UDINT;
	bSendError: BOOL;


	(*Trigger Variables*)
	bCloseAll: BOOL := TRUE;

	(*Connection information*)
	portNumber: INT:=8800;
	bAccepted: BOOL;

	(*Constants*)
	PLCPRJ_ACCEPT_POLLING_TIME: TIME:=T#1s;

	display: LREAL;
	heading: LREAL;

	state: INT:=0;

	xDist: LREAL;
	yDist: LREAL;
	zDist: LREAL;


	listening: BOOL;
	count: INT;
	fbresetTON: TON;
	timerOn: BOOL;
	timeUp: BOOL;
END_VAR
VAR_OUTPUT
	WPConnected: BOOL;
	socketToUse: T_HSOCKET;
END_VAR  trigger1:=FALSE; trigger2:=FALSE;
CASE state OF
0:

IF(fb_Listen.hListener.localAddr.nPort=portNumber) THEN
RETURN;

ELSE
state:=1;
END_IF

1:
(*This code was built by Chris Jarrett, Auckland University, 2014. It is derived in part from the TCP/IP server example on www.beckhoff.com*)
(*Listening State*)
(*Open a connection*)
(*Create socket and check for errors*)

fb_listen
(
	sSrvNetId:='' ,
	sLocalHost:='',
	nLocalPort:=portNumber,
	bExecute:=TRUE,
	tTimeout:=T#5s,
	hListener=>socketHandle,
	nErrId=>listenError,
	bError=>listenErrSet,

);

	IF(fb_Listen.hListener.localAddr.nPort=portNumber) THEN
		fb_listen(bExecute:=FALSE); 		(*Start listening and move to the accept state*)

		state:=2;
	ELSE
		(*Return to the listening state*)
		state:=1;
	END_IF



2:

(*Start accepting a client connection*)
fbAcceptTON( IN := TRUE, PT := T#2s);  (*Start a timer to poll for the accepted connection*)
		IF fbAcceptTON.Q THEN
			fbAcceptTON( IN := FALSE );	(*Reset timer*)
			fb_accept(  bExecute := FALSE  ); (*Generate a rising edge to activate the accept function*)
			fb_accept(hListener := socketHandle, bExecute:= TRUE, hSocket=>activeSocketHandle );
			state:=3; (*Move to the state where the client is accepted*)

			fbAcceptTON( IN := FALSE);

		END_IF
3:
(*Complete accpeting the client connection*)
	fb_accept( bExecute := FALSE ); (*Reset the accept function to try connection again if necessary*)
	IF NOT fb_accept.bBusy THEN
		IF NOT fb_accept.bError THEN
			IF fb_accept.bAccepted THEN
				bAccepted := TRUE; (*If the client connection is accepted without error then move to the send state*)
				fb_accept(bExecute:=FALSE);
				socketToUse:=fb_accept.hSocket;

				state:=4;
			ELSE
				fb_listen(bExecute:=FALSE);
				fb_accept(bExecute:=FALSE);
				WPConnected:=FALSE; (*If the connection attempt was not successful, return the boolean as false*)
				fbAcceptTON( IN := FALSE);
				state:=2;

				END_IF
		END_IF
	END_IF
4:
WPConnected:=TRUE;
RETURN;

END_CASE;               ,  ,     PЁ           WP_Disconnect AET	AET      @bрdШc c        Ђ   FUNCTION_BLOCK WP_Disconnect
VAR_INPUT
	bCloseAll: BOOL;
END_VAR
VAR_OUTPUT
	connectionClosed: BOOL;
END_VAR
VAR
	fb_closeAll: FB_SocketCloseAll;
END_VAR  (*This function closes the TCP/IP port being used the Arduino connection*)

IF bCloseAll THEN
	bCloseAll:=FALSE;
	(*Close all open ports*)
	fb_closeAll(sSrvNetId:='', bExecute:=TRUE, tTimeOut:=T#5s );
ELSE
	fb_closeAll(bExecute:=FALSE);
END_IF


(*Move to the listening state*)
IF NOT fb_closeAll.bError THEN
	connectionClosed:=TRUE;


ELSE
connectionClosed:=FALSE;
END_IF
RETURN;               -  ,   jЛ           WP_ReceiveData ЙET	БET                      )  FUNCTION_BLOCK WP_ReceiveData
VAR_INPUT

	socketToUse: T_HSOCKET;
END_VAR
VAR_OUTPUT
	dataReceived: BOOL;
	botton: INT;
	xAxis: LREAL;
	yAxis: LREAL;
	zAxis: LREAL;
END_VAR
VAR
	(*Connection timers*)
	fbReceiveTON: TON;

 	(*Functions*)
	fb_receive: FB_SocketReceive;

	(*Send and receive data and variables*)
	receiveBuffer: ARRAY[0..0] OF BYTE;
	bytesReceived: UDINT;
	sendBuffer: STRING;
	sendBufferAddress: DWORD;
	cbReceived, startPos, endPos, idx : UDINT;
	cbFrame: UDINT;
	sFromClient: T_MaxString;
	overflow: BOOL;
	endFound: BOOL;

	(*Error variables*)
	acceptError: UDINT;
	receiveError: UDINT;

	state: INT:=1;
	xAxisString: STRING;
	yAxixString: STRING;
	zAxisString: STRING;
	bottonString: STRING;
	timerOn: BOOL;
	timeUp: BOOL;
	fbresetTON: TON;
END_VAR+  CASE state OF
1:
(*Receive information*)
	fbReceiveTON(  IN := FALSE, PT:=T#0s); (*Receive first request immediately*)
	fbReceiveTON(  IN := TRUE ); (*Start a timer to ensure complete transfer of information*)

		IF fbReceiveTON.Q THEN
			fbReceiveTON(  IN := FALSE);
			fb_receive(bExecute:=FALSE);  (*Generate a rising edge to start receiving data*)
			fb_receive
			(
				sSrvNetId:='',
				hSocket :=socketToUse,
				cbLen:=SIZEOF(receiveBuffer)-cbReceived,
				pDest:=ADR(receiveBuffer)+cbReceived,
				tTimeout:=T#5s,
				nRecBytes=>bytesReceived,
				nErrId=>receiveError,
				bExecute:=TRUE,
			);

	(*Move to the receive completion state*)
	state:=2;
	END_IF

2:
(*Continue receiving data*)
	fb_receive( bExecute := FALSE );
	IF NOT fb_receive.bBusy THEN
		IF NOT fb_receive.bError THEN (*If no error has occurred then start the actual receiving of data*)

			IF (fb_receive.nRecBytes>0) THEN (*Bytes have been received*)

				startPos:=cbReceived; (*index of first data byte*)
				endPos:=cbReceived+fb_receive.nRecBytes-1; (*index of last byte*)
				cbReceived:=cbReceived+fb_receive.nRecBytes; (*Calculating the number of received data bytes*)
				cbFrame:=0; (*Reset the frame length*)


				IF cbReceived<SIZEOF(sFromClient) THEN (*no overflow*)
					fbReceiveTON(IN:=FALSE, PT:=T#0S);

					(*Search for the string delimiter(separation character for different strings)*)
					FOR idx:=startPos TO endPos BY 1 DO
						IF receiveBuffer[idx]=0 THEN (*String delimiter found*)
							cbFrame:=idx+1;(*calculate length of received string*)
							MEMCPY(ADR(sFromClient), ADR(receiveBuffer),cbFrame); (*copy the received string to the output variable*)
							MEMMOVE(ADR(receiveBuffer), ADR(receiveBuffer[cbFrame]), cbReceived-cbFrame);(*move remaining data bytes*)
							dataReceived:=TRUE;  	(*Send an acknowledgement of data received*)
							state:=3; (*Move to the receive completion state*)
							endFound:=TRUE;
							EXIT;
						END_IF
					END_FOR
				ELSE(*no more free buffer space-overflow*)

					dataReceived:=FALSE; (*Go to error state*)
					overflow:=TRUE;
					state:=4;
				END_IF
			ELSE(*no data received*)
					fbReceiveTON(IN:=FALSE, PT:=T#0ms);
					state:=1;
			END_IF
		ELSE(*error receiving data, exit function*)
			state:=4;
			dataReceived:=FALSE;
		END_IF
	END_IF

3:
	(*State used to process data*)	(*State used to process data*)
	botton:=(STRING_TO_INT(MID(sFromClient, 1, 1)));  (*Extract the x distance*)

	CASE botton OF
		1:
			xAxis := 0;
			yAxis := 0;
			zAxis := 600;
		2:
			xAxis := 0;
			yAxis := 600;
			zAxis := 0;
		3:
			xAxis := 0;
			yAxis := 0;
			zAxis := -600;
		4:
			xAxis := -600;
			yAxis := 0;
			zAxis := 0;
		5:
			xAxis := 0;
			yAxis := 0;
			zAxis := 0;
		6:
			xAxis := 600;
			yAxis := 0;
			zAxis := 0;
		8:
			xAxis := 0;
			yAxis := -600;
			zAxis := 0;
		ELSE
			xAxis:= 0;
			yAxis:= 0;
			zAxis:= 0;
		END_CASE

	fb_receive(bExecute:=FALSE); (*Reset the receive function*)
	startPos:=0; (*reset buffer beginning pointer*)
	endPos:=0;  (*reset buffer end pointer*)
	cbReceived:=0; (*reset bytes received counter*)
	sFromClient:=''; (*reset transition variable*)


	state:=1;
	RETURN;

4: (*Unused except for as an error state*)
trigger1:=FALSE; trigger2:=TRUE;  timerOn:=TRUE;(* reset arduino*)
fbresetTON(IN:=timerOn, PT:=REAL_TO_TIME(100), Q=>timeUp, ET=>);

IF (timeUp=TRUE)  THEN
trigger2:=FALSE;
timerOn:=FALSE;
END_IF

	(*Clear buffer-PROBABLY UNNECESSARY*)

	receiveBuffer[0]:=0;
	state:=1;


END_CASE;                г  , ъ] -Є           MAINGUI |ET
    @3.06ѓET     +                                                                                                       
    @        
  ћ y  F   Њеџ     џџџ                                             step 1: Enable all four axis @                      `    ѓџМ       MS Sans Serif                      @                                                                                                         
    @        ( ( Ё G d 7     @                    Manual @ШШШ     ммм             @        ѓџ           MAIN.Manual                 @                                                                                                             
    @        Ш ( н = в 2   џ                                          	   .trigger2        @                          ѓџ                              @                                                                                                         
    @         P e e A Z     @                     Reset Axis @ШШШ     ммм             @    Z    ѓџ               reset             @                                                                                                              
    @        
 w_НД   Њеџ     џџџ                                            Actual Position @                      	    ѓџМ       MS Sans Serif                      @                                                                                                          
    @        F Џy Y_    Њеџ     џџџ                                        encoderX[2]   Encoder 2 X: %.2f mm @                      
    ѓџМ       MS Sans Serif                      @                                                                                                          
    @        ЎF Oy ў_    Њеџ     џџџ                                        encoderY[2]   Encoder 2 Y: %.2f mm @                      е    ѓџМ       MS Sans Serif                      @                                                                                                           
    @          n Й   UЊџ     џџџ                                            Free run mode: @                      л    №џМ       MS Sans Serif                      @                                                                                                         
    @          V Ј :      @                    LF(1) @ШШШ     ммм             @    м    ѓџ           MAIN.bMoveCombination[1]   MAIN.bMoveCombination[1]             @                                                                                                            
    @         Д V Я : С     @                    L(4) @ШШШ     ммм             @    н    ѓџ           MAIN.bMoveCombination[4]   MAIN.bMoveCombination[4]             @                                                                                                            
    @         м V ј : ъ     @                    LB(6) @ШШШ     ммм             @    о    ѓџ           MAIN.bMoveCombination[6]   MAIN.bMoveCombination[6]             @                                                                                                            
    @        x  Џ Ј       @                    F(2) @ШШШ     ммм             @    п    ѓџ           MAIN.bMoveCombination[2]   MAIN.bMoveCombination[2]             @                                                                                                            
    @        x м Џ ј  ъ     @                    B(7) @ШШШ     ммм             @    с    ѓџ           MAIN.bMoveCombination[7]   MAIN.bMoveCombination[7]             @                                                                                                            
    @        Ш   Ј у      @                    RF(3) @ШШШ     ммм             @    т    ѓџ           MAIN.bMoveCombination[3]   MAIN.bMoveCombination[3]             @                                                                                                            
    @        Ш Д  Я у С     @                    R(5) @ШШШ     ммм             @    у    ѓџ           MAIN.bMoveCombination[5]   MAIN.bMoveCombination[5]             @                                                                                                            
    @        Ш м  ј у ъ     @                    RB(8) @ШШШ     ммм             @    ф    ѓџ           MAIN.bMoveCombination[8]   MAIN.bMoveCombination[8]             @                                                                                                            
    @         { L     @                 #   ANTI Clock(9) @ШШШ     ммм             @    х    ѓџ           MAIN.bMoveCombination[9]   MAIN.bMoveCombination[9]             @                                                                                                            
    @          г     @                 &   Clock Rotate(10) @ШШШ     ммм             @    ц    ѓџ           MAIN.bMoveCombination[10]   MAIN.bMoveCombination[10]             @                                                                                                         0   20000
    @        < JЋ _s T  џџџ     џџџ                                        MAIN.timeToMoveReal   Enter time in ms @                      ш    ѓџ                             @                                                                                                           
    @        JhУх  Њеџ     џџџ                                            velocity @                      Г    ѓџМ       MS Sans Serif                      @                                                                                                          
    @        ^|и   Њеџ     џџџ                                        axis1.NcToPlc.ActVelo   Motor 1 %.2f rpm @                      Е    ѓџМ       MS Sans Serif                      @                                                                                                          
    @        р|Z   Њеџ     џџџ                                        axis2.NcToPlc.ActVelo   Motor 2 %.2f rpm @                      Ж    ѓџМ       MS Sans Serif                      @                                                                                                          
    @        ^иЕЇ   Њеџ     џџџ                                        axis3.NcToPlc.ActVelo   Motor 3 %.2f rpm @                      Э    ѓџМ       MS Sans Serif                      @                                                                                                          
    @        рZЕЇ   Њеџ     џџџ                                        axis4.NcToPlc.ActVelo   Motor 4 %.2f rpm @                      Ю    ѓџМ       MS Sans Serif                      @                                                                                                      0   2000
    @        < , Ad 6  џџџ     џџџ                                        MAIN.speedToMove   Enter speed @                      ы    ѓџ                             @                                                                                                           
    @          J3 _A T  џџџ     џџџ                                            time @                      ь    ѓџ                              @                                                                                                           
    @          ,3 A_ 6  џџџ     џџџ                                         	   Speed @                      э    ѓџ                              @                                                                                                          
    @        n ЏЁ Y    Њеџ     џџџ                                        encoderX[3]   Encoder 3 X: %.2f mm @                      є    ѓџМ       MS Sans Serif                      @                                                                                                          
    @        Ўn YЁ ўД    Њеџ     џџџ                                        encoderY[3]   Encoder 3 Y: %.2f mm @                      ѕ    ѓџМ       MS Sans Serif                      @                                                                                                          
    @          hЩ d    Њеџ     џџџ                                     	   combinedH   combined Heading: %.2f deg @                      і    ѓџМ       MS Sans Serif                      @                                                                                                          
    @         ЏЩ TЊ    Њеџ     џџџ                                        encoderX[4]   Encoder 4 X: %.2f mm @                      ї    ѓџМ       MS Sans Serif                      @                                                                                                          
    @        Ў YЩ Џ    Њеџ     џџџ                                        encoderY[4]   Encoder 4 Y: %.2f mm @                      ј    ѓџМ       MS Sans Serif                      @                                                                                                          
    @        Т№ m#	   Њеџ     џџџ                                     ?   MainFast.fblocalization.arduinoCalculate1.connectArduino1.state   arduino state %d @                      љ    ѓџМ       MS Sans Serif                      @                                                                                                          
    @        № Џ#Y	   Њеџ     џџџ                                     
   heading[1]   Heading[1]: %.2f deg @                      њ    ѓџМ       MS Sans Serif                      @                                                                                                          
    @        ( Џ[ T<    Њеџ     џџџ                                        encoderX[1]   Encoder 1 X: %.2f mm @                      ћ    ѓџМ       MS Sans Serif                      @                                                                                                          
    @        Ў( Y[ ў<    Њеџ     џџџ                                        encoderY[1]   Encoder 1 Y: %.2f mm @                      ќ    ѓџМ       MS Sans Serif                      @                                                                                                         
    @         P ч e О Z     @                    home @ШШШ     ммм             @       ѓџ               home             @                                                                                                             
    @        О Џё Tв    Њеџ     џџџ                                        encoderX[5]   Encoder 5 X: %.2f mm @                         ѓџМ       MS Sans Serif                      @                                                                                                          
    @        ИО cё з    Њеџ     џџџ                                        encoderY[5]   Encoder 5 Y: %.2f mm @                         ѓџМ       MS Sans Serif                      @                                                                                                          
    @        "УUm;   Њеџ     џџџ                                     
   heading[5]   Heading[5]: %.2f deg @                         ѓџМ       MS Sans Serif                      @                                                                                                          
    @        Ь"wU!;   Њеџ     џџџ                                     
   heading[4]   Heading[4]: %.2f deg @                         ѓџМ       MS Sans Serif                      @                                                                                                          
    @          AУ№ Ў   Њеџ     џџџ                                     	   combinedY   combined Y: %.2f mm @                      ж    ѓџМ       MS Sans Serif                      @                                                                                                          
    @        
 Ё УU Ў   Њеџ     џџџ                                     	   combinedX   combined X: %.2f mm @                      Р    ѓџМ       MS Sans Serif                      @             џ   џџ   џ   џџ   џ џ џ РРР                          џџџџ                 §џџџ,     А7             TcpIp.lib 21.3.13 07:03:14 @тљIQ!   TcBase.lib 14.5.09 12:14:08 @@TJ#   TcSystem.lib 27.2.12 15:08:36 @ЄхJO%   TcBaseMath.lib 27.7.04 12:07:56 @ЬA!   TcMath.lib 23.9.04 15:15:30 @Т1RA    TcMC2.lib 10.7.13 15:31:24 @|ЧмQ"   STANDARD.LIB 5.6.98 12:03:02 @І'w5    TcNC.lib 10.10.08 18:55:34 @VююH&   TcUtilities.lib 10.1.13 20:12:12 @ЬiюP+   SysLibTargetVisu.lib 16.6.08 16:24:26 @ъмUH$   SysLibVisu.lib 7.7.04 18:17:22 @bы@      F_GetVersionTcpIp @      E_WinsockError       ST_SockAddr       ST_TcIpConnSvrResponse       ST_TcIpConnSvrUdpBuffer    	   T_HSOCKET                  FB_SocketAccept @          FB_SocketClose @          FB_SocketCloseAll @          FB_SocketConnect @          FB_SocketListen @          FB_SocketReceive @          FB_SocketSend @       %   FB_SocketUdpAddMulticastAddress @          FB_SocketUdpCreate @       &   FB_SocketUdpDropMulticastAddress @          FB_SocketUdpReceiveFrom @          FB_SocketUdpSendTo @             Global_Variables @          z   FW_AdsClearEvents @      FW_NoOfByte       FW_SystemInfoType       FW_SystemTaskInfoType    
   FW_TcEvent                   FW_AdsLogDINT @           FW_AdsLogEvent @           FW_AdsLogLREAL @           FW_AdsLogSTR @           FW_AdsRdWrt @           FW_AdsRdWrtInd @           FW_AdsRdWrtRes @           FW_AdsRead @           FW_AdsReadDeviceInfo @           FW_AdsReadInd @           FW_AdsReadRes @           FW_AdsReadState @           FW_AdsWrite @           FW_AdsWriteControl @           FW_AdsWriteInd @           FW_AdsWriteRes @           FW_DRand @           FW_GetCpuAccount @           FW_GetCpuCounter @           FW_GetCurTaskIndex @           FW_GetSystemTime @           FW_GetVersionTcBase @           FW_LptSignal @           FW_MemCmp @           FW_MemCpy @           FW_MemMove @           FW_MemSet @           FW_PortRead @          FW_PortWrite @           P   Q  ADSCLEAREVENTS @      E_IOAccessSize    
   E_OpenPath       E_SeekOrigin       E_TcEventClass       E_TcEventClearModes       E_TcEventPriority       E_TcEventStreamType       ExpressionResult       SFCActionType       SFCStepType       ST_AdsBaDevApiHead       ST_AdsBaDevApiIoCtlModifier       ST_AdsBaDevApiReq    
   ST_AmsAddr       ST_StructMemberAlignmentProbe       SYSTEMINFOTYPE       SYSTEMTASKINFOTYPE    
   T_AmsNetId       T_AmsNetIdArr    	   T_AmsPort    
   T_IPv4Addr       T_IPv4AddrArr       T_MaxString       T_U64KAFFINITY       TcEvent                   ADSLOGDINT @           ADSLOGEVENT @           ADSLOGLREAL @           ADSLOGSTR @           ADSRDDEVINFO @           ADSRDSTATE @           ADSRDWRT @           ADSRDWRTEX @           ADSRDWRTIND @           ADSRDWRTRES @           ADSREAD @           ADSREADEX @           ADSREADIND @           ADSREADRES @           ADSWRITE @           ADSWRITEIND @           ADSWRITERES @           ADSWRTCTL @           AnalyzeExpression @          AnalyzeExpressionCombined @          AnalyzeExpressionTable @          AppendErrorString @          BAVERSION_TO_DWORD @          CLEARBIT32 @           CSETBIT32 @           DRAND @           F_CompareFwVersion @          F_CreateAmsNetId @           F_CreateIPv4Addr @           F_GetStructMemberAlignment @          F_GetVersionTcSystem @           F_IOPortRead @          F_IOPortWrite @          F_ScanAmsNetIds @          F_ScanIPv4AddrIds @          F_SplitPathName @          F_ToASC @          F_ToCHR @          FB_BaDeviceIoControl @          FB_BaGenGetVersion @          FB_CreateDir @          FB_EOF @           FB_FileClose @           FB_FileDelete @           FB_FileGets @           FB_FileOpen @           FB_FilePuts @           FB_FileRead @           FB_FileRename @           FB_FileSeek @           FB_FileTell @           FB_FileWrite @           FB_PcWatchdog @          FB_RemoveDir @          FB_SimpleAdsLogEvent @          FILECLOSE @           FILEOPEN @           FILEREAD @           FILESEEK @           FILEWRITE @           FW_CallGenericFb @          FW_CallGenericFun @          GETBIT32 @           GETCPUACCOUNT @           GETCPUCOUNTER @           GETCURTASKINDEX @           GETSYSTEMTIME @           GETTASKTIME @          LPTSIGNAL @           MEMCMP @           MEMCPY @           MEMMOVE @           MEMSET @           ROL32 @           ROR32 @           SETBIT32 @           SFCActionControl @           SHL32 @           SHR32 @              Global_Variables @              FW_Floor @                  FW_LrealFrac @          FW_LrealModP @          FW_LrealTrunc @                  F_GetVersionTcMath @                   FLOOR @       
   FRAC @       
   LMOD @          LTRUNC @          MODABS @          MODTURNS @           }   Л
  _F_AxisState @_      _E_ParameterType       _E_ReadWriteParameterMode       _E_TcMC_STATES       _E_TcNC_CmdState        _E_TcNC_CmdTypeNewTargPosAndVelo       _E_TcNC_PosSetType       _E_TcNC_ServoState       _E_TcNC_SlaveTypes       _E_TcNC_StartPosType       _E_TcNC_TargPosType       _E_TouchProbeState       _InternalAxisRefData       _ST_FunctionBlockResults       _ST_NCADS_Axis       _ST_NCADS_AxisFunctions       _ST_NCADS_AxisParameter       _ST_NCADS_AxisState       _ST_NCADS_IDXOFFS_AxisFunctions       _ST_NCADS_IDXOFFS_AxisParameter       _ST_NCADS_IDXOFFS_AxisState        _ST_NCADS_IDXOFFS_TableFunctions        _ST_NCADS_IDXOFFS_TableParameter       _ST_NCADS_Table       _ST_NCADS_TableFunctions       _ST_NCADS_TableParameter       _ST_ParaStruct       _ST_TcNC_Compensation2       _ST_TcNC_CoupleSlave       _ST_TcNC_CoupleSlaveMultiMaster        _ST_TcNC_CoupleSlaveMultiMaster2       _ST_TcNC_DecoupleSlave       _ST_TcNc_OperationModes       _ST_TcNC_PhasingRequest        _ST_TcNC_SetEncoderSaclingFactor       _ST_TcNC_SetPos       _ST_TcNC_SetPosOnTheFly       _ST_TcNC_StopInfoRequest       _ST_TcNC_StopInfoResponse       _ST_TcNc_TouchProbeActivation       _ST_TcNc_TouchProbeDeactivation        _ST_TcNc_TouchProbeStatusRequest    !   _ST_TcNc_TouchProbeStatusResponse    !   _ST_TcNC_UnversalAxisStartRequest    "   _ST_TcNC_UnversalAxisStartResponse       AXIS_REF       E_AxisErrorCodes       E_AxisPositionCorrectionMode       E_DestallDetectMode       E_DestallMode       E_DisableMode    	   E_JogMode       E_PhasingType       E_PositionType    
   E_ReadMode       E_SetScalingFactorMode       E_SignalEdge       E_SignalSource       E_SuperpositionAbortOption       E_SuperpositionMode       E_TouchProbe       E_TouchProbeMode       E_WorkDirection       MC_AxisParameter       MC_AxisStates       MC_BufferMode       MC_Direction       MC_HomingMode       MC_TouchProbeRecordedData       NCTOPLC_AXIS_REF       PLCTONC_AXIS_REF       ST_AdsAddress       ST_AxisComponents       ST_AxisOpModes       ST_AxisParameterSet       ST_AxisStatus       ST_BacklashCompensationOptions       ST_DriveAddress       ST_GearInDynOptions       ST_GearInMultiMasterOptions       ST_GearInOptions       ST_GearOutOptions       ST_HomingOptions       ST_McOutputs       ST_MoveOptions       ST_NcApplicationRequest       ST_PhasingOptions       ST_PositionCompensationOptions    #   ST_PositionCompensationTableElement    %   ST_PositionCompensationTableParameter       ST_PowerStepperStruct       ST_SetEncoderScalingOptions       ST_SetPositionOptions       ST_SuperpositionOptions       ST_TableCharacValues       TRIGGER_REF                  _F_GetIndexGroup @          _F_NcCycleCounterUpdated @          _F_ReadStatus @          _F_TcMC_DWORD_TO_HEXSTR @          _F_TcMC_Round @          _F_UpdateNcCycleCounter @          _FB_MoveUniversalGeneric @       /   _FB_MoveUniversalGeneric.ActCalcDiffCmdNo @       .   _FB_MoveUniversalGeneric.ActErrorMessage @       8   _FB_MoveUniversalGeneric.ActMonitorContinousMotion @       7   _FB_MoveUniversalGeneric.ActMonitorDiscreteMotion @       -   _FB_MoveUniversalGeneric.ActMonitorStop @       0   _FB_MoveUniversalGeneric.ActNcCycleCounter @          _FB_PhasingGeneric @       '   _FB_PositionCorrectionTableLookup @       B   _FB_PositionCorrectionTableLookup.ActIsCompensationDirection @          _FB_ReadWriteParameter @          _FBAXIS_REF @          _FBAXIS_REF.ReadStatus @          _MC_HaltPhasing @          _MC_PhasingAbsolute @          _MC_PhasingRelative @          _TcMC_ADSRDWRT @          _TcMC_ADSREAD @          _TcMC_ADSWRITE @          _TCMCGLOBAL @           _TCMCGLOBAL.ReadDeviceInfo @          F_AxisCamDataQueued @          F_AxisCamScalingPending @          F_AxisCamTableQueued @          F_AxisControlLoopClosed @          F_AxisExternalLatchValid @           F_AxisGotNewTargetPosition @          F_AxisHasBeenStopped @          F_AxisHasExtSetPointGen @          F_AxisHasJob @          F_AxisInErrorState @          F_AxisInPositionWindow @          F_AxisInProtectedMode @          F_AxisInPTPmode @          F_AxisIoDataIsInvalid @          F_AxisIsAtTargetPosition @          F_AxisIsCalibrated @          F_AxisIsCalibrating @          F_AxisIsCompensating @          F_AxisIsCoupled @          F_AxisIsMoving @          F_AxisIsMovingBackwards @          F_AxisIsMovingEndless @          F_AxisIsMovingForward @          F_AxisIsNotMoving @          F_AxisIsReady @          F_AxisJobPending @           F_AxisMotionCommandsLocked @          F_AxisPhasingActive @       #   F_AxisReachedConstantVelocity @          F_GetVersion_TcMC2 @          MC_AbortSuperposition @          MC_AbortTrigger @          MC_AbortTrigger_V2_00 @          MC_BacklashCompensation @          MC_ExtSetPointGenDisable @          MC_ExtSetPointGenEnable @          MC_ExtSetPointGenFeed @          MC_GearIn @          MC_GearIn.ActGearInDyn @          MC_GearIn.WriteGearRatio @          MC_GearInDyn @          MC_GearInMultiMaster @       1   MC_GearInMultiMaster.ActGearInMultiMasterV1 @       1   MC_GearInMultiMaster.ActGearInMultiMasterV2 @          MC_GearOut @          MC_Halt @          MC_Home @          MC_Jog @          MC_Jog.ActCheckJogEnd @          MC_Jog.ActJogMove @          MC_MoveAbsolute @          MC_MoveAdditive @          MC_MoveContinuousAbsolute @          MC_MoveContinuousRelative @          MC_MoveModulo @       %   MC_MoveModulo.MC_MoveModuloCall @          MC_MoveRelative @          MC_MoveSuperImposed @          MC_MoveVelocity @          MC_OverrideFilter @       "   MC_PositionCorrectionLimiter @          MC_Power @          MC_PowerStepper @          MC_ReadActualPosition @          MC_ReadActualVelocity @          MC_ReadApplicationRequest @          MC_ReadAxisComponents @          MC_ReadAxisError @          MC_ReadBoolParameter @          MC_ReadDriveAddress @          MC_ReadParameter @          MC_ReadParameterSet @       2   MC_ReadParameterSet.ActGetSizeOfParameterSet @          MC_ReadStatus @          MC_ReadStopInfo @          MC_Reset @           MC_SetEncoderScalingFactor @          MC_SetOverride @          MC_SetPosition @          MC_Stop @          MC_Stop.ActStop @       '   MC_TableBasedPositionCompensation @          MC_TouchProbe @       )   MC_TouchProbe.ActTouchProbeActivate @       0   MC_TouchProbe.ActTouchProbeMonitorActivity @       2   MC_TouchProbe.ActTouchProbeMonitorLatchValid @       0   MC_TouchProbe.ActTouchProbeMonitorPlcEvent @       ,   MC_TouchProbe.ActTouchProbeStartupInit @          MC_TouchProbe_V2_00 @       /   MC_TouchProbe_V2_00.ActTouchProbeActivate @       6   MC_TouchProbe_V2_00.ActTouchProbeMonitorActivity @       1   MC_TouchProbe_V2_00.ActTouchProbeMonitoring @       8   MC_TouchProbe_V2_00.ActTouchProbeMonitorLatchValid @       6   MC_TouchProbe_V2_00.ActTouchProbeMonitorPlcEvent @       2   MC_TouchProbe_V2_00.ActTouchProbeStartupInit @          MC_WriteBoolParameter @          MC_WriteParameter @             TcMC_GlobalConstants @             CONCAT @                	   CTD @        	   CTU @        
   CTUD @           DELETE @           F_TRIG @        
   FIND @           INSERT @        
   LEFT @        	   LEN @        	   MID @           R_TRIG @           REPLACE @           RIGHT @           RS @        
   SEMA @           SR @        	   TOF @        	   TON @           TP @              Global Variables 0 @        =   %  AXACT @      E_CmdTypeNewTargPosAndVelo       E_CompensationTableType       E_NcSlaveTypes       E_PositionCorrectionMode       E_ServoState       E_StartPosType       E_TargPosType       E_WorkingDirection       GRF_AXCONFIG       GRF_SINGLEAXCONFIG       NCDRIVESTRUCT_IN       NCDRIVESTRUCT_OUT       NCENCODERSTRUCT_IN       NCENCODERSTRUCT_OUT       NCTOPLC_AXLESTRUCT       NCTOPLC_AXLESTRUCT2       PLCTONC_AXLESTRUCT       PLCTONC_AXLESTRUCT2       ST_CompensationDesc       ST_CompensationElement       ST_NCADS_EMERGENCYSTOP       ST_NcCompensation       ST_NcCoupleSlave       ST_NcCoupleTabSlave       ST_NcNewEndPos       ST_NcSetNewPosVelo       ST_NcSetPos    
   ST_NcStart       ST_NcStartDriveOut       ST_NcStartEx       ST_NcTerminalInterface                   AXACTEX @           AXCPL @           AXCPLMULTITAB @           AXCPLTAB @           AXFNC @           AxisCamDataQueued @          AxisCamScalingPending @          AxisCamTableQueued @          AxisControlLoopClosed @          AxisDriveDeviceError @          AxisExternalLatchValid @           AxisGetOverridePercent @           AxisGotNewTargetPosition @           AxisHasBeenStopped @           AxisHasExtSetPointGen @           AxisHasJob @           AxisInErrorState @           AxisInPositionWindow @           AxisInProtectedMode @           AxisInPTPMode @          AxisIoDataIsInvalid @          AxisIsAtTargetPosition @           AxisIsCalibrated @           AxisIsCalibrating @           AxisIsCompensating @           AxisIsCoupled @           AxisIsMoving @           AxisIsMovingBackwards @           AxisIsMovingEndless @          AxisIsMovingForward @           AxisIsNotInTargetPosition @           AxisIsNotMoving @           AxisIsReady @           AxisJobPending @       !   AxisReachedConstantVelocity @        %   AxisSetAcceptBlockedDriveSignal @          AxisSetControllerEnable @           AxisSetFeedEnableMinus @           AxisSetFeedEnablePlus @           AxisSetOverridePercent @        !   AxisSetReferencingCamSignal @           AxisSoftLimitMaxExceeded @          AxisSoftLimitMinExceeded @          AXSCOM @            F_GetCompensationElementAt @          F_GetLeftIndex @          F_GetVersionTcNC @           F_IsCompensationDirection @       '   F_LinearInterpolationCompensation @          FB_AxisNewTargPosAndVelo @           FB_GetAxisAmsAddr @          FB_PositionCompensation @          FB_RegisterComKL25xx @       /   FB_RegisterComKL25xx.ActCheckTerminalType @       1   FB_RegisterComKL25xx.ActNcTerminalMappingIn @       2   FB_RegisterComKL25xx.ActNcTerminalMappingOut @       8   FB_RegisterComKL25xx.ActReadNcTerminalProcessImage @       9   FB_RegisterComKL25xx.ActWriteNcTerminalProcessImage @           FB_WritePositionCorrection @          Get_TcNcUtilities_Version @              Global_Variables @        /  	  ARG_TO_CSVFIELD @?      ADSDATATYPEID       E_AmsLoggerMode    	   E_ArgType       E_DbgContext       E_DbgDirection       E_EnumCmdType       E_FileRBufferCmd       E_HashPrefixTypes       E_MIB_IF_Type       E_NumGroupTypes       E_PersistentMode       E_PrefixFlagParam       E_RegValueType       E_RouteTransportType    
   E_SBCSType       E_ScopeServerState       E_TimeZoneID       E_TypeFieldParam       E_UTILITIES_ERRORCODES       OTSTRUCT       PROFILERSTRUCT       REMOTEPC       REMOTEPCINFOSTRUCT       ST_AmsFindFileSystemEntry       ST_AmsGetTimeZoneInformation       ST_AmsLoggerReq       ST_AmsRouteEntry       ST_AmsRouteEntryHead       ST_AmsRouterInfoEntry       ST_AmsRouteSystemEntry       ST_AmsStartProcessReq       ST_AmsSymbolInfoEntry       ST_DeviceIdentification       ST_DeviceIdentificationEx       ST_FileAttributes       ST_FileRBufferHead       ST_FindFileEntry       ST_FormatParameters       ST_HKeySrvRead       ST_HKeySrvWrite       ST_IP_ADAPTER_INFO       ST_IP_ADDR_STRING       ST_IPAdapterHwAddr       ST_IPAdapterInfo       ST_SBCSTable    #   ST_ScopeServerRecordModeDescription       ST_TcRouterStatusInfo       ST_TimeZoneInformation       SYMINFO_BUFFER       SYMINFOSTRUCT       T_Arg    
   T_FILETIME       T_FIX16    
   T_FloatRec       T_HashTableEntry       T_HHASHTABLE       T_HLINKEDLIST       T_HUGE_INTEGER       T_LARGE_INTEGER       T_LinkedListEntry       T_UHUGE_INTEGER       T_ULARGE_INTEGER    
   TIMESTRUCT                  BCD_TO_DEC @           BE128_TO_HOST @          BE16_TO_HOST @          BE32_TO_HOST @          BE64_TO_HOST @          BYTEARR_TO_MAXSTRING @          CSVFIELD_TO_ARG @          CSVFIELD_TO_STRING @          DATA_TO_HEXSTR @          DCF77_TIME @          DCF77_TIME_EX @          DEC_TO_BCD @           DEG_TO_RAD @           DINT_TO_DECSTR @          DT_TO_FILETIME @          DT_TO_SYSTEMTIME @           DWORD_TO_BINSTR @          DWORD_TO_DECSTR @          DWORD_TO_HEXSTR @          DWORD_TO_LREALEX @          DWORD_TO_OCTSTR @          F_ARGCMP @          F_ARGCPY @          F_ARGIsZero @          F_BIGTYPE @          F_BOOL @          F_BYTE @           F_BYTE_TO_CRC16_CCITT @          F_CheckSum16 @           F_CRC16_CCITT @           F_CreateHashTableHnd @          F_CreateLinkedListHnd @          F_DATA_TO_CRC16_CCITT @          F_DINT @           F_DWORD @           F_FormatArgToStr @          F_GetDayOfMonthEx @          F_GetDayOfWeek @          F_GetDOYOfYearMonthDay @          F_GetFloatRec @          F_GetMaxMonthDays @          F_GetMonthOfDOY @          F_GetVersionTcUtilities @           F_GetWeekOfTheYear @          F_HUGE @          F_INT @           F_LARGE @          F_LREAL @           F_LTrim @          F_REAL @           F_RTrim @          F_SINT @           F_STRING @           F_SwapReal @           F_SwapRealEx @          F_ToLCase @          F_ToUCase @          F_TranslateFileTimeBias @          F_UDINT @           F_UHUGE @          F_UINT @           F_ULARGE @          F_USINT @           F_WORD @           F_YearIsLeapYear @          FB_AddRouteEntry @          FB_AmsLogger @          FB_BasicPID @           FB_BufferedTextFileWriter @       '   FB_BufferedTextFileWriter.A_Reset @          FB_ConnectScopeServer @          FB_CSVMemBufferReader @          FB_CSVMemBufferWriter @          FB_DbgOutputCtrl @          FB_DbgOutputCtrl.A_Log @          FB_DbgOutputCtrl.A_LogHex @          FB_DbgOutputCtrl.A_Reset @          FB_DisconnectScopeServer @          FB_EnumFindFileEntry @          FB_EnumFindFileList @          FB_EnumRouteEntry @          FB_EnumStringNumbers @          FB_FileRingBuffer @       !   FB_FileRingBuffer.A_AddTail @          FB_FileRingBuffer.A_Close @           FB_FileRingBuffer.A_Create @       !   FB_FileRingBuffer.A_GetHead @          FB_FileRingBuffer.A_Open @       $   FB_FileRingBuffer.A_RemoveHead @          FB_FileRingBuffer.A_Reset @       &   FB_FileTimeToTzSpecificLocalTime @       .   FB_FileTimeToTzSpecificLocalTime.A_Reset @          FB_FormatString @           FB_GetAdaptersInfo @           FB_GetDeviceIdentification @       "   FB_GetDeviceIdentificationEx @          FB_GetHostAddrByName @          FB_GetHostName @          FB_GetLocalAmsNetId @          FB_GetRouterStatusInfo @          FB_GetTimeZoneInformation @          FB_HashTableCtrl @          FB_HashTableCtrl.A_Add @       !   FB_HashTableCtrl.A_GetFirst @       )   FB_HashTableCtrl.A_GetIndexAtPosPtr @           FB_HashTableCtrl.A_GetNext @          FB_HashTableCtrl.A_Lookup @          FB_HashTableCtrl.A_Remove @       "   FB_HashTableCtrl.A_RemoveAll @       $   FB_HashTableCtrl.A_RemoveFirst @          FB_HashTableCtrl.A_Reset @          FB_LinkedListCtrl @       &   FB_LinkedListCtrl.A_AddHeadValue @       &   FB_LinkedListCtrl.A_AddTailValue @       "   FB_LinkedListCtrl.A_FindNext @       "   FB_LinkedListCtrl.A_FindPrev @       !   FB_LinkedListCtrl.A_GetHead @       *   FB_LinkedListCtrl.A_GetIndexAtPosPtr @       !   FB_LinkedListCtrl.A_GetNext @       !   FB_LinkedListCtrl.A_GetPrev @       !   FB_LinkedListCtrl.A_GetTail @       )   FB_LinkedListCtrl.A_RemoveHeadValue @       )   FB_LinkedListCtrl.A_RemoveTailValue @       -   FB_LinkedListCtrl.A_RemoveValueAtPosPtr @          FB_LinkedListCtrl.A_Reset @       *   FB_LinkedListCtrl.A_SetValueAtPosPtr @          FB_LocalSystemTime @          FB_MemBufferMerge @          FB_MemBufferSplit @          FB_MemRingBuffer @           FB_MemRingBuffer.A_AddTail @           FB_MemRingBuffer.A_GetHead @       #   FB_MemRingBuffer.A_RemoveHead @          FB_MemRingBuffer.A_Reset @          FB_MemRingBufferEx @       "   FB_MemRingBufferEx.A_AddTail @       #   FB_MemRingBufferEx.A_FreeHead @       &   FB_MemRingBufferEx.A_GetFreeSize @       "   FB_MemRingBufferEx.A_GetHead @           FB_MemRingBufferEx.A_Reset @          FB_MemStackBuffer @          FB_MemStackBuffer.A_Pop @          FB_MemStackBuffer.A_Push @          FB_MemStackBuffer.A_Reset @          FB_MemStackBuffer.A_Top @          FB_RegQueryValue @           FB_RegSetValue @           FB_RemoveRouteEntry @           FB_ResetScopeServerControl @          FB_SaveScopeServerData @          FB_ScopeServerControl @          FB_SetTimeZoneInformation @          FB_StartScopeServer @          FB_StopScopeServer @          FB_StringRingBuffer @       #   FB_StringRingBuffer.A_AddTail @       #   FB_StringRingBuffer.A_GetHead @       &   FB_StringRingBuffer.A_RemoveHead @       !   FB_StringRingBuffer.A_Reset @       (   FB_SystemTimeToTzSpecificLocalTime @       0   FB_SystemTimeToTzSpecificLocalTime.A_Reset @          FB_TextFileRingBuffer @       %   FB_TextFileRingBuffer.A_AddTail @       #   FB_TextFileRingBuffer.A_Close @       "   FB_TextFileRingBuffer.A_Open @       #   FB_TextFileRingBuffer.A_Reset @       (   FB_TranslateLocalTimeToUtcByZoneID @       0   FB_TranslateLocalTimeToUtcByZoneID.A_Reset @       (   FB_TranslateUtcToLocalTimeByZoneID @       0   FB_TranslateUtcToLocalTimeByZoneID.A_Reset @       &   FB_TzSpecificLocalTimeToFileTime @       .   FB_TzSpecificLocalTimeToFileTime.A_Reset @       (   FB_TzSpecificLocalTimeToSystemTime @       0   FB_TzSpecificLocalTimeToSystemTime.A_Reset @          FB_WritePersistentData @          FILETIME_TO_DT @          FILETIME_TO_SYSTEMTIME @          FIX16_TO_LREAL @          FIX16_TO_WORD @          FIX16Add @          FIX16Align @          FIX16Div @          FIX16Mul @          FIX16Sub @          GetRemotePCInfo @           HEXSTR_TO_DATA @          HOST_TO_BE128 @          HOST_TO_BE16 @          HOST_TO_BE32 @          HOST_TO_BE64 @          INT64_TO_LREAL @          Int64Add64 @          Int64Add64Ex @          Int64Cmp64 @          Int64Div64Ex @          Int64IsZero @          Int64Negate @          Int64Not @          Int64Sub64 @          IsFinite @          LARGE_INTEGER @          LARGE_TO_ULARGE @          LREAL_TO_FIX16 @          LREAL_TO_FMTSTR @          LREAL_TO_INT64 @          LREAL_TO_UINT64 @          MAXSTRING_TO_BYTEARR @          NT_AbortShutdown @           NT_GetTime @           NT_Reboot @           NT_SetLocalTime @          NT_SetTimeToRTCTime @           NT_Shutdown @           NT_StartProcess @           OTSTRUCT_TO_TIME @           PBOOL_TO_BOOL @          PBYTE_TO_BYTE @          PDATE_TO_DATE @          PDINT_TO_DINT @          PDT_TO_DT @          PDWORD_TO_DWORD @          PHUGE_TO_HUGE @          PINT_TO_INT @          PLARGE_TO_LARGE @          PLC_ReadSymInfo @           PLC_ReadSymInfoByName @           PLC_ReadSymInfoByNameEx @           PLC_Reset @           PLC_Start @           PLC_Stop @           PLREAL_TO_LREAL @          PMAXSTRING_TO_MAXSTRING @          PREAL_TO_REAL @          Profiler @           PSINT_TO_SINT @          PSTRING_TO_STRING @          PTIME_TO_TIME @          PTOD_TO_TOD @          PUDINT_TO_UDINT @          PUHUGE_TO_UHUGE @          PUINT64_TO_UINT64 @          PUINT_TO_UINT @          PULARGE_TO_ULARGE @          PUSINT_TO_USINT @          PWORD_TO_WORD @          RAD_TO_DEG @           ROUTETRANSPORT_TO_STRING @       	   RTC @          RTC_EX @          RTC_EX2 @          ScopeASCIIExport @           ScopeExit @          ScopeGetRecordLen @           ScopeGetState @           ScopeLoadFile @           ScopeManualTrigger @           ScopeSaveAs @          ScopeSetOffline @           ScopeSetOnline @           ScopeSetRecordLen @           ScopeViewExport @           STRING_TO_CSVFIELD @          STRING_TO_SYSTEMTIME @          STRING_TO_UINT64 @          SYSTEMTIME_TO_DT @           SYSTEMTIME_TO_FILETIME @          SYSTEMTIME_TO_STRING @          TC_Config @          TC_CpuUsage @           TC_Restart @           TC_Stop @           TC_SysLatency @           TIME_TO_OTSTRUCT @           UInt32x32To64 @          UINT64_TO_LREAL @          UINT64_TO_STRING @          UInt64Add64 @          UInt64Add64Ex @          UInt64And @          UInt64Cmp64 @          UInt64Div16Ex @          UInt64Div64 @          UInt64Div64Ex @          UInt64isZero @          UInt64Limit @          UInt64Max @          UInt64Min @          UInt64Mod64 @          UInt64Mul64 @          UInt64Mul64Ex @          UInt64Not @          UInt64Or @          UInt64Rol @          UInt64Ror @          UInt64Shl @          UInt64Shr @          UInt64Sub64 @          UInt64Xor @          ULARGE_INTEGER @          ULARGE_TO_LARGE @          WORD_TO_FIX16 @          WritePersistentData @              Global_Variables @        1   &   BeginPaint @      Bitmap                   CalcRotation @          ChangePassword @           ChangeUserLevel @           CreateBitmap @           CreateUserdefinedControl @          DeleteBitmap @           DrawBitmap @           DrawBitmapByString @          DrawButton @           DrawEditC @           DrawPie @           DrawPolygon @           DrawRect @           DrawText @           EndPaint @           EnumToString @          ExecuteCommand @       #   ExecuteUserdefinedControlCall @          GetSurroundRect @          GetText @          GetTextByStringId @          GetUnicodeText @          GetUnicodeTextByStringId @          IsClickedEditC @           IsClickedPolygon @           IsClickedRect @           IsClosedEditC @           IsKeyPressed @           IsMovedInPolygon @          IsMovedInRect @          MovePolygon @          PopTransformation @           Printf @           PrintfInput @          PushTransformation @           RefreshUserdefinedControl @          RegisterVariable @          ReturnEnteredValue @           RGBColor @           SendBitmap @           SendEnum @          SetFill @           SetFont @           SetLine @           StopVisu @           StringToEnum @          TransformPoint @          Version2326 @             Globale_Variablen @           "    @      VisualObjectType                  Globale_Variablen @                                             2                џџџџџџџџџџџџџџџџ  
             њџџџ  PPјPhQ        јџџџ, Џ Џ \                      POUs                 arduinoCalculation  *                  ArduinoConnect  д                  ArduinoDisconnect  ж                  ArduinoReceiveData  з                  extendedKalmanFilter  р               	   jsConnect  )                  jsDisconnect  (                  jsReceiveData  '                  kalmanFilter  и                  localization  м                 MAIN                ActHaltAxis1  к                 ActHaltAxis2  л                 ActHaltAxis3  о                 ActHaltAxis4  п                 ActMove  й                 ActPower  И                 ActReset  К                      MainFast  е                  ROS_connect_receiveData  З                  ROS_connect_sendData  Л                  ROS_convertSendData  М                  ROS_disconnect  Н                  ROS_receiveData  О                  ROS_sendData  П               
   WP_connect  +                  WP_Disconnect  ,                  WP_ReceiveData  -  џџџџ           
   Data types                MoveState_NC  Х  џџџџ              Visualizations                MAINGUI  г  џџџџ              Global Variables                Globale_Variablen                     TwinCAT_Configuration  Ж                  Variablen_Konfiguration  	   џџџџ                                                            лvS                         	   localhost            P      	   localhost            P      	   localhost            P             PЖ