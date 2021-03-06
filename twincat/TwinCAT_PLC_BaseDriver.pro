CoDeSys+р                     @        @   2.3.9.41    @/    @                             цЈS +    @                           лvS          @   n   C:\TWINCAT\PLC\LIB\TcpIp.lib @                                                                                          F_GETVERSIONTCPIP               nVersionElement           §џ                 F_GetVersionTcpIp                                     цЈS     џџџџ           FB_SOCKETACCEPT        
   fbAdsRdWrt       _    ( PORT := AMSPORT_TCPIPSRV, IDXGRP := TCPADS_IGR_CONLIST, IDXOFFS := TCPADSCONLST_IOF_ACCEPT )              	   T_AmsPort                           ADSRDWRT `§џ              fbRTrig                 R_TRIG `§џ              nStep         ` §џ              response                ST_TcIpConnSvrResponse `§џ              request                ST_SockAddr `§џ              	   sSrvNetId           ''    
   T_AmsNetId  §џ       Y    The network address of the TcpIpserver.exe. If empty string=>server runs on local system	   hListener              	   T_HSOCKET  §џ       x    Listener handle identifying a socket that has been placed in a listening state with the FB_SocketListen function block    bExecute            §џ       F    Function block execution is triggered by a rising edge at this input.   tTimeout         §џ       3    States the time before the function is cancelled.    	   bAccepted            §џ
       ;    TRUE = new connection is made. FALSE = no new connection.    bBusy            §џ              bError            §џ              nErrId           §џ              hSocket              	   T_HSOCKET  §џ       V   This returned value is a handle for the socket on which the actual connection is made.            цЈS     џџџџ           FB_SOCKETCLOSE        
   fbAdsWrite       V    ( PORT := AMSPORT_TCPIPSRV, IDXGRP := TCPADS_IGR_CLOSEBYHDL, SRCADDR := 0, LEN := 0 )              	   T_AmsPort                              ADSWRITE `§џ              fbRTrig                 R_TRIG `§џ              nStep         ` §џ              	   sSrvNetId           ''    
   T_AmsNetId  §џ       Y    The network address of the TcpIpserver.exe. If empty string=>server runs on local system   hSocket              	   T_HSOCKET  §џ       4    Local or remote client or listener socket to close.   bExecute            §џ       F    Function block execution is triggered by a rising edge at this input.   tTimeout         §џ       3    States the time before the function is cancelled.       bBusy            §џ              bError            §џ              nErrId           §џ                       цЈS     џџџџ           FB_SOCKETCLOSEALL        
   fbAdsWrite       y    ( PORT := AMSPORT_TCPIPSRV, IDXGRP := TCPADS_IGR_CONLIST, IDXOFFS := TCPADSCONLST_IOF_CLOSEALL, SRCADDR := 0, LEN := 0 )              	   T_AmsPort                                 ADSWRITE `§џ              fbRTrig                 R_TRIG `§џ              nStep         ` §џ              	   sSrvNetId           ''    
   T_AmsNetId  §џ       Y    The network address of the TcpIpserver.exe. If empty string=>server runs on local system   bExecute            §џ       F    Function block execution is triggered by a rising edge at this input.   tTimeout         §џ       3    States the time before the function is cancelled.       bBusy            §џ	              bError            §џ
              nErrId           §џ                       цЈS     џџџџ           FB_SOCKETCONNECT        
   fbAdsRdWrt       _    ( PORT := AMSPORT_TCPIPSRV, IDXGRP :=TCPADS_IGR_CONLIST, IDXOFFS := TCPADSCONLST_IOF_CONNECT )              	   T_AmsPort                           ADSRDWRT `§џ              fbRTrig                 R_TRIG `§џ              nStep         ` §џ              request                ST_SockAddr `§џ              response                ST_TcIpConnSvrResponse `§џ              	   sSrvNetId           ''    
   T_AmsNetId  §џ       Y    The network address of the TcpIpserver.exe. If empty string=>server runs on local system   sRemoteHost               §џ       X    Remote (server) address. String containing an (Ipv4) Internet Protocol dotted address.    nRemotePort           §џ       .    Remote (server) Internet Protocol (IP) port.    bExecute            §џ       F    Function block execution is triggered by a rising edge at this input.   tTimeout    ШЏ     §џ       3    States the time before the function is cancelled.       bBusy            §џ              bError            §џ              nErrId           §џ              hSocket              	   T_HSOCKET  §џ       V   This returned value is a handle for the socket on which the actual connection is made.            цЈS     џџџџ           FB_SOCKETLISTEN        
   fbAdsRdWrt       ]    ( PORT := AMSPORT_TCPIPSRV, IDXGRP :=TCPADS_IGR_CONLIST, IDXOFFS :=TCPADSCONLST_IOF_LISTEN )              	   T_AmsPort                           ADSRDWRT `§џ              fbRTrig                 R_TRIG `§џ              nStep         ` §џ              request                ST_SockAddr `§џ              response                ST_TcIpConnSvrResponse `§џ              	   sSrvNetId           ''    
   T_AmsNetId  §џ       Y    The network address of the TcpIpserver.exe. If empty string=>server runs on local system
   sLocalHost               §џ       W    Local (server) address. String containing an (Ipv4) Internet Protocol dotted address. 
   nLocalPort           §џ       -    Local (server) Internet Protocol (IP) port.    bExecute            §џ       F    Function block execution is triggered by a rising edge at this input.   tTimeout         §џ	       3    States the time before the function is cancelled.       bBusy            §џ              bError            §џ              nErrId           §џ           	   hListener              	   T_HSOCKET  §џ       _   This returned value is a handle for the listener socket on which the actual connection is made.            цЈS     џџџџ           FB_SOCKETRECEIVE           fbAdsReadEx       <    ( PORT := AMSPORT_TCPIPSRV, IDXGRP :=TCPADS_IGR_RECVBYHDL )              	   T_AmsPort                    	   ADSREADEX `§џ              fbRTrig                 R_TRIG `§џ              nStep         ` §џ              	   sSrvNetId           ''    
   T_AmsNetId  §џ       Y    The network address of the TcpIpserver.exe. If empty string=>server runs on local system   hSocket              	   T_HSOCKET  §џ       ?    Handle for the socket on which the actual connection is made.    cbLen           §џ       3    Contains the max. number of bytes to be received.    pDest           §џ       ;    Contains the address of the buffer for the received data.    bExecute            §џ       F    Function block execution is triggered by a rising edge at this input.   tTimeout         §џ	       3    States the time before the function is cancelled.       bBusy            §џ              bError            §џ              nErrId           §џ           	   nRecBytes           §џ       2    Contains the number of bytes currently received.             цЈS     џџџџ           FB_SOCKETSEND        
   fbAdsWrite       >    ( PORT :=  AMSPORT_TCPIPSRV, IDXGRP := TCPADS_IGR_SENDBYHDL )              	   T_AmsPort                      ADSWRITE `§џ              fbRTrig                 R_TRIG `§џ              nStep         ` §џ              	   sSrvNetId           ''    
   T_AmsNetId  §џ       Y    The network address of the TcpIpserver.exe. If empty string=>server runs on local system   hSocket              	   T_HSOCKET  §џ       ?    Handle for the socket on which the actual connection is made.    cbLen           §џ       *    Contains the number of bytes to be send.    pSrc           §џ       D    Contains the address of the buffer containing the data to be send.    bExecute            §џ       F    Function block execution is triggered by a rising edge at this input.   tTimeout         §џ	       3    States the time before the function is cancelled.       bBusy            §џ              bError            §џ              nErrId           §џ                       цЈS     џџџџ           FB_SOCKETUDPADDMULTICASTADDRESS        
   fbAdsWrite       E    ( PORT := AMSPORT_TCPIPSRV, IDXGRP :=TCPADS_IGR_MULTICAST_ADDBYHDL )              	   T_AmsPort                      ADSWRITE `§џ              fbRTrig                 R_TRIG `§џ              nStep         ` §џ              	   sSrvNetId           ''    
   T_AmsNetId  §џ       Y    The network address of the TcpIpserver.exe. If empty string=>server runs on local system   hSocket              	   T_HSOCKET  §џ       )    udp socket to add multicast address  to.   sMulticastAddr               §џ          Multicast address to add   bExecute            §џ       F    Function block execution is triggered by a rising edge at this input.   tTimeout         §џ       3    States the time before the function is cancelled.       bBusy            §џ              bError            §џ              nErrId           §џ                       цЈS     џџџџ           FB_SOCKETUDPCREATE        
   fbAdsRdWrt       ^    ( PORT := AMSPORT_TCPIPSRV, IDXGRP :=TCPADS_IGR_CONLIST, IDXOFFS :=TCPADSCONLST_IOF_UDPBIND )              	   T_AmsPort                           ADSRDWRT `§џ              fbRTrig                 R_TRIG `§џ              nStep         ` §џ              request                ST_SockAddr `§џ              response                ST_TcIpConnSvrResponse `§џ              	   sSrvNetId           ''    
   T_AmsNetId  §џ       Y    The network address of the TcpIpserver.exe. If empty string=>server runs on local system
   sLocalHost               §џ       N    Local address. String containing an (Ipv4) Internet Protocol dotted address. 
   nLocalPort           §џ	       $    Local Internet Protocol (IP) port.    bExecute            §џ
       F    Function block execution is triggered by a rising edge at this input.   tTimeout         §џ       3    States the time before the function is cancelled.       bBusy            §џ              bError            §џ              nErrId           §џ              hSocket              	   T_HSOCKET  §џ       ?   This returned value is a handle for the bind (reserved) socket.            цЈS     џџџџ            FB_SOCKETUDPDROPMULTICASTADDRESS        
   fbAdsWrite       F    ( PORT := AMSPORT_TCPIPSRV, IDXGRP :=TCPADS_IGR_MULTICAST_DROPBYHDL )              	   T_AmsPort         	             ADSWRITE `§џ              fbRTrig                 R_TRIG `§џ              nStep         ` §џ              	   sSrvNetId           ''    
   T_AmsNetId  §џ       Y    The network address of the TcpIpserver.exe. If empty string=>server runs on local system   hSocket              	   T_HSOCKET  §џ       .    udp socket to remove multicast address  from.   sMulticastAddr               §џ          Multicast address to remove   bExecute            §џ       F    Function block execution is triggered by a rising edge at this input.   tTimeout         §џ       3    States the time before the function is cancelled.       bBusy            §џ              bError            §џ              nErrId           §џ                       цЈS     џџџџ           FB_SOCKETUDPRECEIVEFROM           fbAdsReadEx       @    ( PORT := AMSPORT_TCPIPSRV, IDXGRP :=TCPADS_IGR_RECVFROMBYHDL )              	   T_AmsPort                    	   ADSREADEX `§џ              fbRTrig                 R_TRIG `§џ              nStep         ` §џ              buffer                ST_TcIpConnSvrUdpBuffer `§џ              	   sSrvNetId           ''    
   T_AmsNetId  §џ       Y    The network address of the TcpIpserver.exe. If empty string=>server runs on local system   hSocket              	   T_HSOCKET  §џ       ?    Handle for the socket on which the actual connection is made.    cbLen           §џ       3    Contains the max. number of bytes to be received.    pDest           §џ       ;    Contains the address of the buffer for the received data.    bExecute            §џ       F    Function block execution is triggered by a rising edge at this input.   tTimeout         §џ	       3    States the time before the function is cancelled.       bBusy            §џ              bError            §џ              nErrId           §џ              sRemoteHost               §џ       p    Remote address from which the data was received. String containing an (Ipv4) Internet Protocol dotted address.    nRemotePort           §џ       G    Remote Internet Protocol (IP) port  from which the data was received. 	   nRecBytes           §џ       2    Contains the number of bytes currently received.             цЈS     џџџџ           FB_SOCKETUDPSENDTO        
   fbAdsWrite       @    ( PORT :=  AMSPORT_TCPIPSRV, IDXGRP := TCPADS_IGR_SENDTOBYHDL )              	   T_AmsPort                      ADSWRITE `§џ              fbRTrig                 R_TRIG `§џ              nStep         ` §џ              buffer                ST_TcIpConnSvrUdpBuffer `§џ              	   sSrvNetId           ''    
   T_AmsNetId  §џ       Y    The network address of the TcpIpserver.exe. If empty string=>server runs on local system   hSocket              	   T_HSOCKET  §џ       ?    Handle for the socket on which the actual connection is made.    sRemoteHost               §џ       d    Remote address of the target socket. String containing an (Ipv4) Internet Protocol dotted address.    nRemotePort           §џ       :    Remote Internet Protocol (IP) port of the target socket.    cbLen           §џ       *    Contains the number of bytes to be send.    pSrc           §џ	       D    Contains the address of the buffer containing the data to be send.    bExecute            §џ
       F    Function block execution is triggered by a rising edge at this input.   tTimeout         §џ       3    States the time before the function is cancelled.       bBusy            §џ              bError            §џ              nErrId           §џ                       цЈS     џџџџ    o   C:\TWINCAT\PLC\LIB\TcBase.lib @                                                                                          FW_ADSCLEAREVENTS           STAMP_I            §џ              ACCESSCNT_I            §џ              BUSY_I             §џ              ERR_I             §џ              ERRID_I            §џ           
   READ_SAV_I             §џ              TICKSTART_I            §џ                 sNetId               §џ              bClear            §џ              nMode           §џ              tTimeout           §џ                 bBusy            §џ	              bError            §џ
              nErrId           §џ                       цЈS     џџџџ           FW_ADSLOGDINT            	   nCtrlMask           §џ              sMsgFmt               §џ              nArg           §џ                 FW_AdsLogDINT                                     цЈS     џџџџ           FW_ADSLOGEVENT        
   STAMPREQ_I            §џ           
   STAMPRES_I            §џ           
   STAMPSIG_I            §џ           
   STAMPCON_I            §џ              ACCESSCNT_I            §џ           	   AMSADDR_I   	                         §џ              EVENT_I                      
   FW_TcEvent   §џ              pTCEVENTSTREAM_I            §џ              CBEVENTSTREAM_I            §џ              nSTATE_I            §џ              nSTATEREQ_I            §џ              nSTATERES_I            §џ              nSTATESIG_I            §џ               nSTATECON_I            §џ!              ERR_I             §џ"              ERRID_I            §џ#              bEVENT_SAV_I             §џ$              bEVENTQUIT_SAV_I             §џ%              TICKSTART_I            §џ&           	      sNetId               §џ              nPort           §џ              bEvent            §џ           
   bEventQuit            §џ              stEventConfigData                      
   FW_TcEvent  §џ              pEventDataAddress           §џ       	    pointer    cbEventDataLength           §џ	           
   bFbCleanup            §џ
              tTimeout           §џ                 nEventState           §џ              bError            §џ              nErrId           §џ              bQuit            §џ                       цЈS     џџџџ           FW_ADSLOGLREAL            	   nCtrlMask           §џ              sMsgFmt               §џ              fArg                        §џ                 FW_AdsLogLREAL                                     цЈS     џџџџ           FW_ADSLOGSTR            	   nCtrlMask           §џ              sMsgFmt               §џ              sArg               §џ                 FW_AdsLogSTR                                     цЈS     џџџџ           FW_ADSRDWRT           STAMP_I            §џ              ACCESSCNT_I            §џ              BUSY_I             §џ              ERR_I             §џ              ERRID_I            §џ              WRTRD_SAV_I             §џ              PDESTADDR_I            §џ              TICKSTART_I            §џ           
      sNetId               §џ              nPort           §џ              nIdxGrp           §џ              nIdxOffs           §џ           
   cbWriteLen           §џ           	   cbReadLen           §џ           
   pWriteBuff           §џ	           	   pReadBuff           §џ
              bExecute            §џ              tTimeout           §џ                 bBusy            §џ              bError            §џ              nErrId           §џ              cbRead           §џ           count of bytes actually read             цЈS     џџџџ           FW_ADSRDWRTIND           CLEAR_I             §џ                 bClear            §џ           	      bValid            §џ              sNetId               §џ              nPort           §џ           	   nInvokeId           §џ	              nIdxGrp           §џ
              nIdxOffs           §џ           	   cbReadLen           §џ           
   cbWriteLen           §џ           
   pWriteBuff           §џ                       цЈS     џџџџ           FW_ADSRDWRTRES        	   RESPOND_I             §џ                 sNetId               §џ              nPort           §џ           	   nInvokeId           §џ              nErrId           §џ           	   cbReadLen           §џ           	   pReadBuff           §џ              bRespond            §џ	                           цЈS     џџџџ        
   FW_ADSREAD           STAMP_I            §џ              ACCESSCNT_I            §џ              BUSY_I             §џ              ERR_I             §џ              ERRID_I            §џ           
   READ_SAV_I             §џ              TICKSTART_I            §џ                 sNetId               §џ              nPort           §џ              nIdxGrp           §џ              nIdxOffs           §џ           	   cbReadLen           §џ           	   pReadBuff           §џ              bExecute            §џ	              tTimeout           §џ
                 bBusy            §џ              bError            §џ              nErrId           §џ              cbRead           §џ           count of bytes actually read             цЈS     џџџџ           FW_ADSREADDEVICEINFO           STAMP_I            §џ              ACCESSCNT_I            §џ              BUSY_I             §џ              ERR_I             §џ              ERRID_I            §џ              RDINFO_SAV_I             §џ              TICKSTART_I            §џ                 sNetId               §џ              nPort           §џ              bExecute            §џ              tTimeout           §џ                 bBusy            §џ	              bError            §џ
              nErrId           §џ              sDevName               §џ              nDevVersion           §џ                       цЈS     џџџџ           FW_ADSREADIND           CLEAR_I             §џ                 bClear            §џ                 bValid            §џ              sNetId               §џ              nPort           §џ           	   nInvokeId           §џ	              nIdxGrp           §џ
              nIdxOffs           §џ           	   cbReadLen           §џ                       цЈS     џџџџ           FW_ADSREADRES        	   RESPOND_I             §џ                 sNetId               §џ              nPort           §џ           	   nInvokeId           §џ              nErrId           §џ           	   cbReadLen           §џ           	   pReadBuff           §џ              bRespond            §џ	                           цЈS     џџџџ           FW_ADSREADSTATE           STAMP_I            §џ              ACCESSCNT_I            §џ              BUSY_I             §џ              ERR_I             §џ              ERRID_I            §џ              RDSTATE_SAV_I             §џ              TICKSTART_I            §џ                 sNetId               §џ              nPort           §џ              bExecute            §џ              tTimeout           §џ                 bBusy            §џ	              bError            §џ
              nErrId           §џ           	   nAdsState           §џ           	   nDevState           §џ                       цЈS     џџџџ           FW_ADSWRITE           STAMP_I            §џ              ACCESSCNT_I            §џ              BUSY_I             §џ              ERR_I             §џ              ERRID_I            §џ              WRITE_SAV_I             §џ              TICKSTART_I            §џ                 sNetId               §џ              nPort           §џ              nIdxGrp           §џ              nIdxOffs           §џ           
   cbWriteLen           §џ           
   pWriteBuff           §џ              bExecute            §џ	              tTimeout           §џ
                 bBusy            §џ              bError            §џ              nErrId           §џ                       цЈS     џџџџ           FW_ADSWRITECONTROL           STAMP_I            §џ              ACCESSCNT_I            §џ              BUSY_I             §џ              ERR_I             §џ              ERRID_I            §џ              WRITE_SAV_I             §џ              TICKSTART_I            §џ                 sNetId               §џ              nPort           §џ           	   nAdsState           §џ           	   nDevState           §џ           
   cbWriteLen           §џ           
   pWriteBuff           §џ              bExecute            §џ	              tTimeout           §џ
                 bBusy            §џ              bError            §џ              nErrId           §џ                       цЈS     џџџџ           FW_ADSWRITEIND           CLEAR_I             §џ                 bClear            §џ                 bValid            §џ              sNetId               §џ              nPort           §џ           	   nInvokeId           §џ	              nIdxGrp           §џ
              nIdxOffs           §џ           
   cbWriteLen           §џ           
   pWriteBuff           §џ                       цЈS     џџџџ           FW_ADSWRITERES        	   RESPOND_I             §џ                 sNetId               §џ              nPort           §џ           	   nInvokeId           §џ              nErrId           §џ              bRespond            §џ                           цЈS     џџџџ           FW_DRAND           FirstCall_i             §џ	           
   HoldRand_i            §џ
              R250_Buffer_i   	  љ                        §џ           
   R250_Index            §џ                 nSeed           §џ                 fRndNum                        §џ                       цЈS     џџџџ           FW_GETCPUACCOUNT                   dwCpuAccount           §џ                       цЈS     џџџџ           FW_GETCPUCOUNTER                
   dwCpuCntLo           §џ           
   dwCpuCntHi           §џ                       цЈS     џџџџ           FW_GETCURTASKINDEX                   nIndex           §џ                       цЈS     џџџџ           FW_GETSYSTEMTIME                   dwTimeLo           §џ              dwTimeHi           §џ                       цЈS     џџџџ           FW_GETVERSIONTCBASE               nVersionElement           §џ                 FW_GetVersionTcBase                                     цЈS     џџџџ           FW_LPTSIGNAL            	   nPortAddr           §џ              nPinNo           §џ              bOnOff            §џ	                 FW_LptSignal                                      цЈS     џџџџ        	   FW_MEMCMP               pBuf1           §џ           First buffer    pBuf2           §џ           Second buffer    cbLen           §џ           Number of characters    	   FW_MemCmp                                     цЈS     џџџџ        	   FW_MEMCPY               pDest           §џ           New buffer    pSrc           §џ           Buffer to copy from    cbLen           §џ           Number of characters to copy    	   FW_MemCpy                                     цЈS     џџџџ        
   FW_MEMMOVE               pDest           §џ           New buffer    pSrc           §џ           Buffer to copy from    cbLen           §џ           Number of characters to copy    
   FW_MemMove                                     цЈS     џџџџ        	   FW_MEMSET               pDest           §џ           Pointer to destination 	   nFillByte           §џ           Character to set    cbLen           §џ           Number of characters    	   FW_MemSet                                     цЈS     џџџџ           FW_PORTREAD            	   nPortAddr           §џ           	   eNoOfByte               FW_NoOfByte  §џ                 FW_PortRead                                     цЈS     џџџџ           FW_PORTWRITE            	   nPortAddr           §џ           	   eNoOfByte               FW_NoOfByte  §џ              nValue           §џ                 FW_PortWrite                                      цЈS     џџџџ    q   C:\TWINCAT\PLC\LIB\TcSystem.lib @                                                                                P          ADSCLEAREVENTS           fbAdsClearEvents                            FW_AdsClearEvents `§џ                 NetID            
   T_AmsNetId  §џ              bClear            §џ              iMode           §џ              tTimeout         §џ                 bBusy            §џ	              bErr            §џ
              iErrId           §џ                       цЈS     џџџџ        
   ADSLOGDINT               msgCtrlMask           §џ           	   msgFmtStr               T_MaxString  §џ              dintArg           §џ              
   ADSLOGDINT                                     цЈS     џџџџ           ADSLOGEVENT           fbAdsLogEvent                                               FW_AdsLogEvent `§џ           	      NETID            
   T_AmsNetId  §џ              PORT           §џ              Event            §џ           	   EventQuit            §џ              EventConfigData               TcEvent  §џ              EventDataAddress           §џ       	    pointer    EventDataLength           §џ	           	   FbCleanup            §џ
              TMOUT         §џ              
   EventState           §џ              Err            §џ              ErrId           §џ              Quit            §џ                       цЈS     џџџџ           ADSLOGLREAL               msgCtrlMask           §џ           	   msgFmtStr               T_MaxString  §џ              lrealArg                        §џ                 ADSLOGLREAL                                     цЈS     џџџџ        	   ADSLOGSTR               msgCtrlMask           §џ           	   msgFmtStr               T_MaxString  §џ              strArg               T_MaxString  §џ              	   ADSLOGSTR                                     цЈS     џџџџ           ADSRDDEVINFO           fbAdsReadDeviceInfo                              FW_AdsReadDeviceInfo   §џ                 NETID            
   T_AmsNetId  §џ              PORT            	   T_AmsPort  §џ              RDINFO            §џ              TMOUT         §џ                 BUSY            §џ	              ERR            §џ
              ERRID           §џ              DEVNAME               §џ              DEVVER           §џ                       цЈS     џџџџ        
   ADSRDSTATE           fbAdsReadState                              FW_AdsReadState   §џ                 NETID            
   T_AmsNetId  §џ              PORT            	   T_AmsPort  §џ              RDSTATE            §џ              TMOUT         §џ                 BUSY            §џ	              ERR            §џ
              ERRID           §џ              ADSSTATE           §џ              DEVSTATE           §џ                       цЈS     џџџџ           ADSRDWRT        
   fbAdsRdWrt                                    FW_AdsRdWrt   §џ           
      NETID            
   T_AmsNetId  §џ              PORT            	   T_AmsPort  §џ              IDXGRP           §џ              IDXOFFS           §џ              WRITELEN           §џ              READLEN           §џ              SRCADDR           §џ	              DESTADDR           §џ
              WRTRD            §џ              TMOUT         §џ                 BUSY            §џ              ERR            §џ              ERRID           §џ                       цЈS     џџџџ        
   ADSRDWRTEX        
   fbAdsRdWrt                                    FW_AdsRdWrt   §џ           
      NETID            
   T_AmsNetId  §џ              PORT            	   T_AmsPort  §џ              IDXGRP           §џ              IDXOFFS           §џ              WRITELEN           §џ              READLEN           §џ              SRCADDR           §џ	              DESTADDR           §џ
              WRTRD            §џ              TMOUT         §џ                 BUSY            §џ              ERR            §џ              ERRID           §џ              COUNT_R           §џ           count of bytes actually read             цЈS     џџџџ           ADSRDWRTIND           fbAdsRdWrtInd                         FW_AdsRdWrtInd   §џ                 CLEAR            §џ           	      VALID            §џ              NETID            
   T_AmsNetId  §џ              PORT            	   T_AmsPort  §џ              INVOKEID           §џ	              IDXGRP           §џ
              IDXOFFS           §џ              RDLENGTH           §џ           	   WRTLENGTH           §џ              DATAADDR           §џ                       цЈS     џџџџ           ADSRDWRTRES           fbAdsRdWrtRes                      FW_AdsRdWrtRes   §џ                 NETID            
   T_AmsNetId  §џ              PORT            	   T_AmsPort  §џ              INVOKEID           §џ              RESULT           §џ              LEN           §џ              DATAADDR           §џ              RESPOND            §џ	                           цЈS     џџџџ           ADSREAD        	   fbAdsRead                              
   FW_AdsRead   §џ                 NETID            
   T_AmsNetId  §џ              PORT            	   T_AmsPort  §џ              IDXGRP           §џ              IDXOFFS           §џ              LEN           §џ              DESTADDR           §џ              READ            §џ	              TMOUT         §џ
                 BUSY            §џ              ERR            §џ              ERRID           §џ                       цЈS     џџџџ        	   ADSREADEX        	   fbAdsRead                              
   FW_AdsRead   §џ                 NETID            
   T_AmsNetId  §џ              PORT            	   T_AmsPort  §џ              IDXGRP           §џ              IDXOFFS           §џ              LEN           §џ              DESTADDR           §џ              READ            §џ	              TMOUT         §џ
                 BUSY            §џ              ERR            §џ              ERRID           §џ              COUNT_R           §џ           count of bytes actually read             цЈS     џџџџ        
   ADSREADIND           fbAdsReadInd        	               FW_AdsReadInd   §џ                 CLEAR            §џ                 VALID            §џ              NETID            
   T_AmsNetId  §џ              PORT            	   T_AmsPort  §џ              INVOKEID           §џ	              IDXGRP           §џ
              IDXOFFS           §џ              LENGTH           §џ                       цЈS     џџџџ        
   ADSREADRES           fbAdsReadRes                      FW_AdsReadRes   §џ                 NETID            
   T_AmsNetId  §џ              PORT            	   T_AmsPort  §џ              INVOKEID           §џ              RESULT           §џ              LEN           §џ              DATAADDR           §џ              RESPOND            §џ	                           цЈS     џџџџ           ADSWRITE        
   fbAdsWrite                                FW_AdsWrite   §џ                 NETID            
   T_AmsNetId  §џ              PORT            	   T_AmsPort  §џ              IDXGRP           §џ              IDXOFFS           §џ              LEN           §џ              SRCADDR           §џ              WRITE            §џ	              TMOUT         §џ
                 BUSY            §џ              ERR            §џ              ERRID           §џ                       цЈS     џџџџ           ADSWRITEIND           fbAdsWriteInd        
                FW_AdsWriteInd   §џ                 CLEAR            §џ                 VALID            §џ              NETID            
   T_AmsNetId  §џ              PORT            	   T_AmsPort  §џ              INVOKEID           §џ	              IDXGRP           §џ
              IDXOFFS           §џ              LENGTH           §џ              DATAADDR           §џ                       цЈS     џџџџ           ADSWRITERES           fbAdsWriteRes                    FW_AdsWriteRes   §џ                 NETID            
   T_AmsNetId  §џ              PORT            	   T_AmsPort  §џ              INVOKEID           §џ              RESULT           §џ              RESPOND            §џ                           цЈS     џџџџ        	   ADSWRTCTL           fbAdsWriteControl                                FW_AdsWriteControl   §џ                 NETID            
   T_AmsNetId  §џ              PORT            	   T_AmsPort  §џ              ADSSTATE           §џ              DEVSTATE           §џ              LEN           §џ              SRCADDR           §џ              WRITE            §џ	              TMOUT         §џ
                 BUSY            §џ              ERR            §џ              ERRID           §џ                       цЈS     џџџџ           ANALYZEEXPRESSION               InputExp            §џ           	   DoAnalyze            §џ              	   ExpResult            §џ           	   OutString               §џ                       цЈS     џџџџ           ANALYZEEXPRESSIONCOMBINED           Index            §џ                 InputExp            §џ           	   DoAnalyze            §џ              	   ExpResult            §џ              OutTable   	                        ExpressionResult          §џ           	   OutString               §џ	                       цЈS     џџџџ           ANALYZEEXPRESSIONTABLE           Index            §џ                 InputExp            §џ           	   DoAnalyze            §џ              	   ExpResult            §џ              OutTable   	                        ExpressionResult          §џ                       цЈS     џџџџ           APPENDERRORSTRING               strOld               §џ              strNew               §џ                 AppendErrorString                                         цЈS     џџџџ           BAVERSION_TO_DWORD               nVersion         ` §џ           	   nRevision         ` §џ	              nBuild         ` §џ
                 BAVERSION_TO_DWORD                                     цЈS     џџџџ        
   CLEARBIT32           dwConst        ` §џ                 inVal32           §џ              bitNo           §џ              
   CLEARBIT32                                     цЈS     џџџџ        	   CSETBIT32           dwConst        ` §џ	                 inVal32           §џ              bitNo           §џ              bitVal            §џ       &    value to which the bit should be set    	   CSETBIT32                                     цЈS     џџџџ           DRAND           fbDRand                    FW_DRand `§џ
                 Seed           §џ                 Num                        §џ                       цЈS     џџџџ           F_COMPAREFWVERSION           soll         ` §џ              ist         ` §џ                 major         ` §џ           requiered major version    minor         ` §џ	           requiered minor version    revision         ` §џ
       )    requiered revision/service pack version    patch         ` §џ       0    required patch version (reserved, default = 0 )      F_CompareFwVersion                                      цЈS     џџџџ           F_CREATEAMSNETID           idx         ` §џ                 nIds               T_AmsNetIdArr  §џ           Ams Net ID as array of bytes.       F_CreateAmsNetId            
   T_AmsNetId                            цЈS     џџџџ           F_CREATEIPV4ADDR           idx         ` §џ                 nIds               T_IPv4AddrArr  §џ       <    Internet Protocol dotted address (ipv4) as array of bytes.       F_CreateIPv4Addr            
   T_IPv4Addr                            цЈS     џџџџ           F_GETSTRUCTMEMBERALIGNMENT           tmp                ST_StructMemberAlignmentProbe `§џ                     F_GetStructMemberAlignment                                     цЈS     џџџџ           F_GETVERSIONTCSYSTEM               nVersionElement           §џ                 F_GetVersionTcSystem                                     цЈS     џџџџ           F_IOPORTREAD               nAddr           §џ           Port address    eSize               E_IOAccessSize  §џ           Number of bytes to read       F_IOPortRead                                     цЈS     џџџџ           F_IOPORTWRITE               nAddr           §џ           Port address    eSize               E_IOAccessSize  §џ           Number of bytes to write    nValue           §џ           Value to write       F_IOPortWrite                                      цЈS     џџџџ           F_SCANAMSNETIDS           pNetID               ` §џ              b               T_AmsNetIdArr `§џ              w         ` §џ	              id         ` §џ
           	   Index7001                            sNetID            
   T_AmsNetID  §џ       :    String containing the Ams Net ID. E.g. '127.16.17.3.1.1'       F_ScanAmsNetIds               T_AmsNetIdArr                            цЈS     џџџџ           F_SCANIPV4ADDRIDS           b               T_AmsNetIdArr `§џ           	   Index7001                            sIPv4            
   T_IPv4Addr  §џ       M    String containing the Internet Protocol dotted address. E.g. '172.16.7.199'       F_ScanIPv4AddrIds               T_IPv4AddrArr                            цЈS     џџџџ           F_SPLITPATHNAME           pPath               ` §џ              pSlash               ` §џ              pDot               ` §џ              p               ` §џ              length         ` §џ              	   sPathName               T_MaxString  §џ                 F_SplitPathName                                sDrive               §џ              sDir                T_MaxString §џ           	   sFileName                T_MaxString §џ              sExt                T_MaxString §џ	                   цЈS     џџџџ           F_TOASC           pChar               ` §џ                 str    Q       Q    §џ                 F_ToASC                                     цЈS     џџџџ           F_TOCHR           pChar    	                            ` §џ                 c           §џ                 F_ToCHR    Q       Q                              цЈS     џџџџ           FB_BADEVICEIOCONTROL           fbRW       O    ( PORT := AMSPORT_R3_SYSSERV, IDXGRP := SYSTEMSERVICE_BADEVAPI, IDXOFFS := 0 )              	   T_AmsPort         L                 
   ADSRDWRTEX `§џ              req                ST_AdsBaDevApiReq `§џ              state         ` §џ              rtrig                 R_TRIG `§џ                 sNetID           ''    
   T_AmsNetID `§џ           Ams net id    affinity           ( lower :=0, higher := 0 )                T_U64KAFFINITY `§џ       )    Affinity mask (default  = 0 = not used) 	   nModifier         ` §џ       +    Optional command modifier (0 == not used)    nIdxGrp         ` §џ           Api function group    nIdxOffs         ` §џ           Api function offset 
   cbWriteLen         ` §џ	           Input data byte size 	   cbReadLen         ` §џ
           Output data byte size 
   pWriteBuff         ` §џ           Pointer to input data buffer 	   pReadBuff         ` §џ           Pointer to output data buffer    bExecute          ` §џ       &    Rising edge starts command execution    tTimeout       ` §џ                 bBusy          ` §џ              bError          ` §џ              nErrID         ` §џ              cbRead         ` §џ           Count of bytes actually read             цЈS     џџџџ           FB_BAGENGETVERSION           fbCtrl           ( nModifier := 0, affinity := ( lower := 0, higher := 0 ), nIdxGrp := BADEVAPIIGRP_GENERAL, nIdxOffs := BADEVAPIIOFFS_GENERAL_VERSION )                ( lower :=0, higher := 0 )                T_U64KAFFINITY                                             FB_BaDeviceIoControl `§џ              rtrig                 R_TRIG `§џ              state         ` §џ              rsp         ` §џ                 sNetID           ''    
   T_AmsNetID `§џ           ams net id    bExecute          ` §џ       &    rising edge starts command execution    tTimeout       ` §џ                 bBusy          ` §џ	              bError          ` §џ
              nErrID         ` §џ              nVersion         ` §џ           	   nRevision         ` §џ              nBuild         ` §џ                       цЈS     џџџџ           FB_CREATEDIR        
   fbAdsRdWrt       ]    ( nPort:= AMSPORT_R3_SYSSERV, nIdxGrp:= SYSTEMSERVICE_MKDIR, cbReadLen := 0, pReadBuff:= 0 )             '                            FW_AdsRdWrt `§џ                 sNetId            
   T_AmsNetId  §џ           ams net id 	   sPathName               T_MaxString  §џ           max directory length = 255    ePath           PATH_GENERIC    
   E_OpenPath  §џ       +    Default: Create directory at generic path    bExecute            §џ       %    rising edge start command execution    tTimeout         §џ                 bBusy            §џ
              bError            §џ              nErrId           §џ                       цЈS     џџџџ           FB_EOF        
   fbAdsRdWrt       `    (nPort := AMSPORT_R3_SYSSERV, nIdxGrp := SYSTEMSERVICE_FEOF, cbWriteLen := 0, pWriteBuff := 0 )             '                            FW_AdsRdWrt `§џ              iEOF         ` §џ           	   fbTrigger                 R_TRIG `§џ              state         ` §џ                 sNetId            
   T_AmsNetId  §џ           ams net id    hFile           §џ           file handle    bExecute            §џ           control input    tTimeout         §џ                 bBusy            §џ	              bError            §џ
              nErrId           §џ              bEOF            §џ                       цЈS     џџџџ           FB_FILECLOSE        
   fbAdsRdWrt           ( nPort := AMSPORT_R3_SYSSERV, nIdxGrp := SYSTEMSERVICE_FCLOSE, cbWriteLen := 0,	cbReadLen := 0,	pWriteBuff := 0, pReadBuff := 0 )             '   y                                 FW_AdsRdWrt `§џ                 sNetId            
   T_AmsNetId  §џ           ams net id    hFile           §џ       %    file handle obtained through 'open'    bExecute            §џ           close control input    tTimeout         §џ                 bBusy            §џ	              bError            §џ
              nErrId           §џ                       цЈS     џџџџ           FB_FILEDELETE        
   fbAdsRdWrt       a    (nPort := AMSPORT_R3_SYSSERV, nIdxGrp := SYSTEMSERVICE_FDELETE, cbReadLen := 0, pReadBuff := 0 )             '                            FW_AdsRdWrt `§џ              tmpOpenMode         ` §џ                 sNetId            
   T_AmsNetId  §џ           ams net id 	   sPathName               T_MaxString  §џ           file path and name    ePath           PATH_GENERIC    
   E_OpenPath  §џ           Default: Open generic file    bExecute            §џ           open control input    tTimeout         §џ                 bBusy            §џ
              bError            §џ              nErrId           §џ                       цЈS     џџџџ           FB_FILEGETS        
   fbAdsRdWrt       b    ( nPort := AMSPORT_R3_SYSSERV, nIdxGrp := SYSTEMSERVICE_FGETS, cbWriteLen := 0, pWriteBuff := 0 )             '   ~                         FW_AdsRdWrt `§џ           	   fbTrigger                 R_TRIG `§џ              state         ` §џ                 sNetId            
   T_AmsNetId  §џ           ams net id    hFile           §џ           file handle    bExecute            §џ           control input    tTimeout         §џ                 bBusy            §џ	              bError            §џ
              nErrId           §џ              sLine               T_MaxString  §џ              bEOF            §џ                       цЈS     џџџџ           FB_FILEOPEN        
   fbAdsRdWrt       @    ( nPort := AMSPORT_R3_SYSSERV, nIdxGrp := SYSTEMSERVICE_FOPEN )             '   x                 FW_AdsRdWrt `§џ              tmpOpenMode         ` §џ              tmpHndl         ` §џ           	   fbTrigger                 R_TRIG `§џ              state         ` §џ                 sNetId            
   T_AmsNetId  §џ           ams net id 	   sPathName               T_MaxString  §џ           max filename length = 255    nMode           §џ           open mode flags    ePath           PATH_GENERIC    
   E_OpenPath  §џ           Default: Open generic file    bExecute            §џ           open control input    tTimeout         §џ                 bBusy            §џ              bError            §џ              nErrId           §џ              hFile           §џ           file handle             цЈS     џџџџ           FB_FILEPUTS        
   fbAdsRdWrt       `    ( nPort := AMSPORT_R3_SYSSERV, nIdxGrp := SYSTEMSERVICE_FPUTS, cbReadLen := 0, pReadBuff := 0 )             '                            FW_AdsRdWrt `§џ                 sNetId            
   T_AmsNetId  §џ           ams net id    hFile           §џ           file handle    sLine               T_MaxString  §џ           string to write    bExecute            §џ           control input    tTimeout         §џ                 bBusy            §џ
              bError            §џ              nErrId           §џ                       цЈS     џџџџ           FB_FILEREAD        
   fbAdsRdWrt       b    ( nPort := AMSPORT_R3_SYSSERV, nIdxGrp := SYSTEMSERVICE_FREAD, cbWriteLen := 0, pWriteBuff := 0 )             '   z                         FW_AdsRdWrt `§џ           	   fbTrigger                 R_TRIG `§џ              state         ` §џ                 sNetId            
   T_AmsNetId  §џ           ams net id    hFile           §џ           file handle 	   pReadBuff           §џ           buffer address for read 	   cbReadLen           §џ           count of bytes for read    bExecute            §џ           read control input    tTimeout         §џ                 bBusy            §џ              bError            §џ              nErrId           §џ              cbRead           §џ           count of bytes actually read    bEOF            §џ                       цЈS     џџџџ           FB_FILERENAME        
   fbAdsRdWrt       b    ( nPort := AMSPORT_R3_SYSSERV, nIdxGrp := SYSTEMSERVICE_FRENAME, cbReadLen := 0, pReadBuff := 0 )             '                            FW_AdsRdWrt `§џ              tmpOpenMode         ` §џ           
   sBothNames   	                    T_MaxString         `§џ           = SIZEOF( T_MaxString ) * 2    nOldLen         ` §џ              nNewLen         ` §џ           	   fbTrigger                 R_TRIG `§џ              state         ` §џ                 sNetId            
   T_AmsNetId  §џ           ams net id    sOldName               T_MaxString  §џ           max filename length = 255    sNewName               T_MaxString  §џ           max filename length = 255    ePath           PATH_GENERIC    
   E_OpenPath  §џ           Default: generic file path   bExecute            §џ           open control input    tTimeout         §џ                 bBusy            §џ              bError            §џ              nErrId           §џ                       цЈS     џџџџ           FB_FILESEEK        
   fbAdsRdWrt       `    ( nPort := AMSPORT_R3_SYSSERV, nIdxGrp := SYSTEMSERVICE_FSEEK, cbReadLen := 0, pReadBuff := 0 )             '   |                         FW_AdsRdWrt `§џ           
   tmpSeekPos   	                       ` §џ                 sNetId            
   T_AmsNetId  §џ           ams net id    hFile           §џ	           file handle    nSeekPos           §џ
           new seek pointer position    eOrigin       	    SEEK_SET       E_SeekOrigin  §џ              bExecute            §џ           seek control input    tTimeout         §џ                 bBusy            §џ              bError            §џ              nErrId           §џ                       цЈS     џџџџ           FB_FILETELL        
   fbAdsRdWrt       b    ( nPort := AMSPORT_R3_SYSSERV, nIdxGrp := SYSTEMSERVICE_FTELL, cbWriteLen := 0, pWriteBuff := 0 )             '   }                         FW_AdsRdWrt `§џ                 sNetId            
   T_AmsNetId  §џ           ams net id    hFile           §џ           file handle    bExecute            §џ           control input    tTimeout         §џ                 bBusy            §џ	              bError            §џ
              nErrId           §џ              nSeekPos           §џ          	On error, nSEEKPOS returns -1             цЈS     џџџџ           FB_FILEWRITE        
   fbAdsRdWrt       A    ( nPort := AMSPORT_R3_SYSSERV, nIdxGrp := SYSTEMSERVICE_FWRITE )             '   {                 FW_AdsRdWrt `§џ           	   fbTrigger                 R_TRIG `§џ              state         ` §џ                 sNetId            
   T_AmsNetId  §џ           ams net id    hFile           §џ           file handle 
   pWriteBuff           §џ           buffer address for write 
   cbWriteLen           §џ           count of bytes for write    bExecute            §џ           write control input    tTimeout         §џ                 bBusy            §џ              bError            §џ              nErrId           §џ              cbWrite           §џ       !    count of bytes actually written             цЈS     џџџџ           FB_PCWATCHDOG           bRetVal          ` §џ              iTime         ` §џ              iIdx         ` §џ              iPortArr   	                 >    16#2E, 16#2E, 16#2E, 16#2F, 16#2E, 16#2F, 16#2E, 16#2F, 16#2E	      .      .      .      /      .      /      .      /      .    ` §џ              iArrEn   	                 >    16#87, 16#87, 16#07, 16#08, 16#F6, 16#05, 16#30, 16#01, 16#AA	                              і            0            Њ    ` §џ              iArrDis   	                 >    16#87, 16#87, 16#07, 16#08, 16#F6, 16#00, 16#30, 16#00, 16#AA	                              і             0             Њ    ` §џ                 tTimeOut           §џ       ;    Watchdog TimeOut Time 1s..255s, disabled if tTimeOut < 1s    bEnable            §џ           Enable / Disable Watchdog       bEnabled            §џ       2    TRUE: Watchdog Enabled; FALSE: Watchdog Disabled    bBusy            §џ           FB still busy    bError            §џ	           FB has error     nErrId           §џ
           FB error ID               цЈS     џџџџ           FB_REMOVEDIR        
   fbAdsRdWrt       `    ( nPort := AMSPORT_R3_SYSSERV, nIdxGrp := SYSTEMSERVICE_RMDIR, cbReadLen := 0, pReadBuff := 0 )             '                            FW_AdsRdWrt `§џ                 sNetId            
   T_AmsNetId  §џ           ams net id 	   sPathName               T_MaxString  §џ           max filename length = 255    ePath           PATH_GENERIC    
   E_OpenPath  §џ       +    Default: Delete directory at generic path    bExecute            §џ       &    rising edge starts command execution    tTimeout         §џ                 bBusy            §џ
              bError            §џ              nErrId           §џ                       цЈS     џџџџ           FB_SIMPLEADSLOGEVENT           fbEvent       9    ( NETID := '', PORT := AMSPORT_EVENTLOG, TMOUT:= t#15s )             
   T_AmsNetId         n          :         ADSLOGEVENT `§џ              cfgEvent               TcEvent `§џ              bInit         ` §џ                 SourceID           §џ              EventID           §џ           	   bSetEvent           §џ              bQuit            §џ                 ErrId           §џ	              Error            §џ
                       цЈS     џџџџ        	   FILECLOSE        
   fbAdsWrite                                FW_AdsWrite   §џ                 NETID            
   T_AmsNetId  §џ           ams net id    HFILE           §џ       )    file handle obtained through 'FILEOPEN'    CLOSE            §џ           close control input    TMOUT         §џ                 BUSY            §џ	              ERR            §џ
              ERRID           §џ                       цЈS     џџџџ           FILEOPEN        
   fbAdsWrite                                FW_AdsWrite   §џ           
   RisingEdge                 R_TRIG   §џ              FallingEdge                 F_TRIG   §џ                 NETID            
   T_AmsNetId  §џ           ams net id 	   FPATHNAME               T_MaxString  §џ       #    default max filename length = 255    OPENMODE           §џ           open mode flags    OPEN            §џ           open control input    TMOUT         §џ                 BUSY            §џ
              ERR            §џ              ERRID           §џ              HFILE           §џ           file handle             цЈS     џџџџ           FILEREAD        	   fbAdsRead                              
   FW_AdsRead   §џ                 NETID            
   T_AmsNetId  §џ           ams net id    HFILE           §џ           file handle    BUFADDR           §џ           buffer address for read    COUNT           §џ           count of bytes for read    READ            §џ           read control input    TMOUT         §џ                 BUSY            §џ              ERR            §џ              ERRID           §џ              COUNT_R           §џ           count of bytes actually read             цЈS     џџџџ           FILESEEK        
   fbAdsWrite                                FW_AdsWrite   §џ                 NETID            
   T_AmsNetId  §џ           ams net id    HFILE           §џ           file handle    SEEKPOS           §џ           new seek pointer position    SEEK            §џ           seek control input    TMOUT         §џ                 BUSY            §џ
              ERR            §џ              ERRID           §џ                       цЈS     џџџџ        	   FILEWRITE        
   fbAdsWrite                                FW_AdsWrite   §џ           
   RisingEdge                 R_TRIG   §џ              FallingEdge                 F_TRIG   §џ              tmpCount            §џ                 NETID            
   T_AmsNetId  §џ           ams net id    HFILE           §џ           file handle    BUFADDR           §џ           buffer address for write    COUNT           §џ           count of bytes for write    WRITE            §џ           write control input    TMOUT         §џ                 BUSY            §џ              ERR            §џ              ERRID           §џ              COUNT_W           §џ       !    count of bytes actually written             цЈS     џџџџ           FW_CALLGENERICFB           fbCall       w    ( 	sNetID := '', nPort := 16#1234,
								bExecute := FALSE, tTimeout := T#0s,
								ACCESSCNT_I := 16#0000BEC1 )     СО                 4                          FW_AdsRdWrt `§џ                 funGrp         ` §џ       #    Function block group (identifier)    funNum         ` §џ       $    Function block number (identifier)    pWrite         ` §џ       +    Byte length of output parameter structure    cbWrite         ` §џ       *    Byte length of input parameter structure    pRead         ` §џ	           Points ot output buffer    cbRead         ` §џ
           Points to input buffer       nErrID         ` §џ           0 => no error, <> 0 => error
   cbReturned         ` §џ       ,    Number of successfully returned data bytes             цЈS     џџџџ           FW_CALLGENERICFUN           fbCall       y    ( 	sNetID := '', nPort := 16#1234,
									bExecute := FALSE, tTimeout := T#0s,
									ACCESSCNT_I := 16#0000BEC2 )     ТО                 4                          FW_AdsRdWrt `§џ           don't use it!        funGrp         ` §џ           Function group (identifier)    funNum         ` §џ       $    Function block number (identifier)    pWrite         ` §џ       +    Byte length of output parameter structure    cbWrite         ` §џ	       *    Byte length of input parameter structure    pRead         ` §џ
           Points ot output buffer    cbRead         ` §џ           Points to input buffer    pcbReturned               ` §џ       ,    Number of successfully returned data bytes       FW_CallGenericFun                                     цЈS     џџџџ           GETBIT32           dwConst        ` §џ                 inVal32           §џ              bitNo           §џ                 GETBIT32                                      цЈS     џџџџ           GETCPUACCOUNT           fbGetCpuAccount               FW_GetCpuAccount `§џ                     cpuAccountDW           §џ                       цЈS     џџџџ           GETCPUCOUNTER           fbGetCpuCounter                FW_GetCpuCounter `§џ                  
   cpuCntLoDW           §џ           
   cpuCntHiDW           §џ                       цЈS     џџџџ           GETCURTASKINDEX           fbGetCurTaskIndex               FW_GetCurTaskIndex `§џ                     index           §џ           Task index [1..4]             цЈS     џџџџ           GETSYSTEMTIME           fbGetSystemTime                FW_GetSystemTime `§џ                     timeLoDW           §џ              timeHiDW           §џ                       цЈS     џџџџ           GETTASKTIME           out   	                       ` §џ	           
   cbReturned         ` §џ
                     timeLoDW           §џ              timeHiDW           §џ                       цЈS     џџџџ        	   LPTSIGNAL               PortAddr           §џ              PinNo           §џ              OnOff            §џ	              	   LPTSIGNAL                                      цЈS     џџџџ           MEMCMP               pBuf1           §џ           First buffer    pBuf2           §џ           Second buffer    n           §џ           Number of characters       MEMCMP                                     цЈS     џџџџ           MEMCPY               destAddr           §џ           New buffer    srcAddr           §џ           Buffer to copy from    n           §џ           Number of characters to copy       MEMCPY                                     цЈS     џџџџ           MEMMOVE               destAddr           §џ           New buffer    srcAddr           §џ           Buffer to copy from    n           §џ           Number of characters to copy       MEMMOVE                                     цЈS     џџџџ           MEMSET               destAddr           §џ           Pointer to destination    fillByte           §џ           Character to set    n           §џ           Number of characters       MEMSET                                     цЈS     џџџџ           ROL32               inVal32           §џ              n           §џ                 ROL32                                     цЈS     џџџџ           ROR32               inVal32           §џ              n           §џ                 ROR32                                     цЈS     џџџџ           SETBIT32           dwConst        ` §џ                 inVal32           §џ              bitNo           §џ                 SETBIT32                                     цЈS     џџџџ           SFCACTIONCONTROL     
      S_FF                 RS   §џ              L_TMR                    TON   §џ              D_TMR                    TON   §џ              P_TRIG                 R_TRIG   §џ              SD_TMR                    TON   §џ              SD_FF                 RS   §џ              DS_FF                 RS   §џ              DS_TMR                    TON   §џ              SL_FF                 RS   §џ              SL_TMR                    TON   §џ           
      N            §џ              R0            §џ              S0            §џ              L            §џ              D            §џ              P            §џ              SD            §џ	              DS            §џ
              SL            §џ              T           §џ                 Q            §џ                       цЈS     џџџџ           SHL32               inVal32           §џ              n           §џ                 SHL32                                     цЈS     џџџџ           SHR32               inVal32           §џ              n           §џ                 SHR32                                     цЈS     џџџџ    s   C:\TWINCAT\PLC\LIB\TcBaseMath.lib @                                                                                          FW_FLOOR               lr_in                        §џ                 FW_Floor                                                  цЈS     џџџџ           FW_LREALFRAC               lr_in                        §џ                 FW_LrealFrac                                                  цЈS     џџџџ           FW_LREALMODP               lr_val                        §џ              lr_mod                        §џ                 FW_LrealModP                                                  цЈS     џџџџ           FW_LREALTRUNC               lr_in                        §џ                 FW_LrealTrunc                                                  цЈS     џџџџ    o   C:\TWINCAT\PLC\LIB\TcMath.lib @                                                                                          F_GETVERSIONTCMATH               nVersionElement           §џ                 F_GetVersionTcMath                                     цЈS     џџџџ           FLOOR               lr_in                        §џ                 FLOOR                                                  цЈS     џџџџ           FRAC               lr_in                        §џ                 FRAC                                                  цЈS     џџџџ           LMOD               lr_Value                        §џ              lr_Arg                        §џ                 LMOD                                                  цЈS     џџџџ           LTRUNC               lr_in                        §џ                 LTRUNC                                                  цЈS     џџџџ           MODABS               lr_Value                        §џ              lr_Arg                        §џ                 MODABS                                                  цЈS     џџџџ           MODTURNS           lr_Tmp                         §џ                 lr_Value                        §џ              lr_Arg                        §џ                 MODTURNS                                     цЈS     џџџџ    n   C:\TWINCAT\PLC\LIB\TcMC2.lib @                                                                                a          _F_AXISSTATE                   _F_AxisState               MC_AxisStates                      NcToPlc                                        NCTOPLC_AXIS_REF`§џ              PlcToNc                                   PLCTONC_AXIS_REF`§џ                   цЈS     џџџџ           _F_GETINDEXGROUP        
   IndexGroup         ` §џ              IndexOffset         ` §џ	              nType               _E_ParameterType `§џ
              lrValue                      ` §џ              
   ParaNumber         ` §џ              Mode         ` §џ           read/write       _F_GetIndexGroup                   _ST_ParaStruct                            цЈS     џџџџ           _F_NCCYCLECOUNTERUPDATED           pData                   _InternalAxisRefData        §џ	              NcCycleCounter            §џ
                 LastNcCycleCounter           §џ                 _F_NcCycleCounterUpdated                                Axis                AXIS_REF §џ                   цЈS     џџџџ           _F_READSTATUS           GetTaskIndex                GETCURTASKINDEX `§џ                 ForceTaskIndexUpdate          ` §џ       `    force update of the taskindex with GETCURTASKINDEX - otherwise update only once - 20100416 KSt       _F_ReadStatus        1                                                       ST_AxisStatus                      NcToPlc                                        NCTOPLC_AXIS_REF`§џ              PlcToNc                                   PLCTONC_AXIS_REF`§џ           
   LastStatus         1                                                       ST_AxisStatus`§џ	                   цЈS     џџџџ           _F_TCMC_DWORD_TO_HEXSTR           str1             ` §џ              pstr               ` §џ	              i         ` §џ
              digit         ` §џ                 in         ` §џ                 _F_TcMC_DWORD_TO_HEXSTR                                         цЈS     џџџџ           _F_TCMC_ROUND           n                      ` §џ                 value                      ` §џ              digits         ` §џ                 _F_TcMC_Round                                                  цЈS     џџџџ           _F_UPDATENCCYCLECOUNTER                   _F_UpdateNcCycleCounter                               Axis                AXIS_REF §џ                   цЈS     џџџџ           _FB_MOVEUNIVERSALGENERIC           iState           STATE_INITIALIZATION       _E_TcMC_STATES   §џ               sStartRequest                      !   _ST_TcNC_UnversalAxisStartRequest   §џ!              sStartResponse             "   _ST_TcNC_UnversalAxisStartResponse   §џ"              fbAdsReadWrite                          
   ADSRDWRTEX   §џ#              ContinousMode             §џ$           
   InVelocity             §џ%              DiffCycleCounter            §џ&       5    last recent PLC cycle counter difference while Busy    EmptyStartResponse             "   _ST_TcNC_UnversalAxisStartResponse `§џ*              COUNT_R         ` §џ+              CounterCmdNoZero         ` §џ,              CounterCmdNotStarted         ` §џ-           	   DiffCmdNo         ` §џ.              NcCycleCounter         ` §џ/              LastNcCycleCounter         ` §џ0              NcMappingCounter         ` §џ1              NcCycleCounterAvailable          ` §џ2              NcCycleCounterNotAvailable          ` §џ3              NcCyclicFeedbackExpected          ` §џ4              PlcDebugCode         ` §џ5       a    additional information for debugging purposes will be added to debug messages (ActErrorMessage)    AxisIsSlave          ` §џ6              GetTaskIndex                GETCURTASKINDEX `§џ7              CycleCounter         ` §џ8       *    last recent PLC cycle counter while Busy 	   fbTimeOut                    TON `§џ9              fbStopMonitoringTimeOut                    TON `§џ:              fbTimeOutMappingCounter                    TON `§џ;              fbOnTrigger                 R_TRIG `§џ<              sTempMsg             ` §џ=              OpMode                  _ST_TcNc_OperationModes `§џ@                 Execute            §џ          	StartType		: 	UDINT; 	   StartType               _E_TCNC_StartPosType  §џ	       #    20110511 KSt type changed for Tc3    Position                        §џ
              Velocity                        §џ              Acceleration                        §џ              Deceleration                        §џ              Jerk                        §џ       6   	Direction			:	MC_Direction := MC_Positive_Direction;	
   BufferMode               MC_BufferMode  §џ              Options                  ST_MoveOptions  §џ              Reset            §џ           for internal use only    GotoRunState            §џ           for internal use only       Done            §џ       :    Same meaning as InVelocity for continous motion commands    Busy            §џ              Active            §џ              CommandAborted            §џ              Error            §џ              ErrorID           §џ              CmdNo           §џ              ADSbusy            §џ                 Axis                AXIS_REF §џ              LastExecutionResult                   _ST_FunctionBlockResults §џ                   цЈS     џџџџ           _FB_PHASINGGENERIC           LastExecutionResult                  _ST_FunctionBlockResults   §џ              ADSbusy             §џ              iState           STATE_INITIALIZATION       _E_TcMC_STATES   §џ          	fbAdsReadWrite	: 	ADSRDWRTEX;
   fbAdsWrite                          ADSWRITE   §џ!           
   sNcPhasing                           _ST_TcNC_PhasingRequest   §џ"              PhasingStarted             §џ#           	   fbTrigger                 R_TRIG `§џ'           	   fbTimeOut                    TON `§џ(           
      Execute            §џ           B 	   StartType               _E_TcNC_StartPosType  §џ	           command type start, stop etc, 
   PhaseShift                        §џ
           B    PhasingType               E_PhasingType  §џ       1    type of phase shift value, absolute or relative    Velocity                        §џ           E    Acceleration                        §џ           E    Deceleration                        §џ           E    Jerk                        §џ           E 
   BufferMode               MC_BufferMode  §џ           E    Options               ST_PhasingOptions  §џ           V       Done            §џ           B    Busy            §џ           E    Active            §џ           E    CommandAborted            §џ           E    Error            §џ           B    ErrorID           §џ           E    PhaseShiftFeedback                        §џ           E       Master                AXIS_REF §џ              Slave                AXIS_REF §џ                   цЈS     џџџџ        !   _FB_POSITIONCORRECTIONTABLELOOKUP           nState            §џ              dwSize            §џ              eActiveDirection           WorkDirectionNone       E_WorkDirection   §џ           	   bExecCalc             §џ           
   stElement1             #   ST_PositionCompensationTableElement   §џ           
   stElement2             #   ST_PositionCompensationTableElement   §џ            
   nLeftIndex            §џ!       #    Index starting from 0 up to (N-1)    fSetPos                         §џ"       A    position setpoint (absolute linear position or modulo position) 	   pTmpTable              #   ST_PositionCompensationTableElement        §џ$       0    helper variable: pointer to table of this type    fTmpStep                         §џ%           helper variable    fTmpA                         §џ&           helper variable    fTmpB                         §џ'           helper variable 
   fTmpDelta1                         §џ(           helper variable 
   fTmpDelta2                         §џ)           helper variable    ERRORCODE_PARAMSIZE    CK     §џ,              ERRORCODE_PARAMPOS    DK     §џ-       +   	ERRORCODE_TCNCNOTIMPL	: UDINT := 16#4B45;       Enable            §џ       )    rising edge triggers initialize routine    pTable              #   ST_PositionCompensationTableElement       §џ           pointer to table of this type 	   TableSize           §џ       +    size of data in bytes related to 'pTable'    TableParameter                %   ST_PositionCompensationTableParameter  §џ       1    position compensation table parameter structure       Compensation                        §џ              Error            §џ              ErrorID           §џ              Active            §џ                 Axis                Axis_Ref §џ                   цЈS     џџџџ           _FB_READWRITEPARAMETER           iState           STATE_INITIALIZATION       _E_TcMC_STATES `§џ           	   fbAdsRead                          ADSREAD `§џ           
   fbAdsWrite                          ADSWRITE `§џ              dwValue         ` §џ              lrValue   	  
                                 ` §џ              NcBoolValue         ` §џ              bStarted          ` §џ!              stParaStruct                   _ST_ParaStruct `§џ"              n         ` §џ#              i         ` §џ$           	   ParaLREAL        ` §џ(          	ParaBOOL		:	INT := 3;      Enable          ` §џ              ParameterNumber               MC_AxisParameter `§џ              Mode         ` §џ	           read/write    ParameterType         ` §џ
           bool/ not  bool       Done          ` §џ              Busy          ` §џ              Error          ` §џ              ErrorID         ` §џ              ADSbusy          ` §џ                 Axis                AXIS_REF`§џ           
   ValueLreal                      ` §џ           
   ValueDword         ` §џ           	   ValueBool          ` §џ                   цЈS     џџџџ           _FBAXIS_REF        	   _internal                  _InternalAxisRefData `§џ              Storage   	                       ` §џ       $    universal storage for internal use       PlcToNc                                  PLCTONC_AXIS_REF  §џ                 NcToPlc                                       NCTOPLC_AXIS_REF §џ              ADS                 ST_AdsAddress  §џ              Status        1                                                       ST_AxisStatus  §џ                       цЈS    џџџџ           _MC_HALTPHASING           PhasingGeneric                                         _FB_PhasingGeneric   §џ                 Execute            §џ           B    Deceleration                        §џ           E    Jerk                        §џ	           E 
   BufferMode               MC_BufferMode  §џ
           E    Options               ST_PhasingOptions  §џ           V       Done            §џ           B    Busy            §џ           E    Active            §џ           E    CommandAborted            §џ           E    Error            §џ           B    ErrorID           §џ           E       Master                AXIS_REF §џ              Slave                AXIS_REF §џ                   цЈS     џџџџ           _MC_PHASINGABSOLUTE           PhasingGeneric                                         _FB_PhasingGeneric   §џ$                 Execute            §џ           B 
   PhaseShift                        §џ           B    Velocity                        §џ           E    Acceleration                        §џ           E    Deceleration                        §џ           E    Jerk                        §џ           E 
   BufferMode               MC_BufferMode  §џ           E    Options               ST_PhasingOptions  §џ           V       Done            §џ           B    Busy            §џ           E    Active            §џ           E    CommandAborted            §џ           E    Error            §џ           B    ErrorID           §џ            E    AbsolutePhaseShift                        §џ!           E       Master                AXIS_REF §џ              Slave                AXIS_REF §џ                   цЈS     џџџџ           _MC_PHASINGRELATIVE           PhasingGeneric                                         _FB_PhasingGeneric   §џ&                 Execute            §џ           B 
   PhaseShift                        §џ           B    Velocity                        §џ           E    Acceleration                        §џ           E    Deceleration                        §џ           E    Jerk                        §џ           E 
   BufferMode               MC_BufferMode  §џ           E    Options               ST_PhasingOptions  §џ           V       Done            §џ           B    Busy            §џ           E    Active            §џ           E    CommandAborted            §џ            E    Error            §џ!           B    ErrorID           §џ"           E    CoveredPhaseShift                        §џ#           E       Master                AXIS_REF §џ              Slave                AXIS_REF §џ                   цЈS     џџџџ           _TCMC_ADSRDWRT        
   fbAdsRdWrt                                    FW_AdsRdWrt   §џ              NcCycleCounter            §џ              NcCycleCounterAdsEnd            §џ              UpdateCounter            §џ               NoUpdateCounter            §џ!           used for timeout detection    state            §џ"           
      NETID            
   T_AmsNetId  §џ              PORT            	   T_AmsPort  §џ              IDXGRP           §џ              IDXOFFS           §џ              WRITELEN           §џ              READLEN           §џ              SRCADDR           §џ              DESTADDR           §џ              WRTRD            §џ              TMOUT         §џ                 BUSY            §џ              ERR            §џ              ERRID           §џ              COUNT_R           §џ           count of bytes actually read       Axis                AXIS_REF §џ                   цЈS     џџџџ           _TCMC_ADSREAD        	   fbAdsRead                              
   FW_AdsRead   §џ              NcCycleCounter            §џ              NcCycleCounterAdsEnd            §џ              UpdateCounter            §џ              NoUpdateCounter            §џ           used for timeout detection    state            §џ                  NETID            
   T_AmsNetId  §џ              PORT            	   T_AmsPort  §џ              IDXGRP           §џ              IDXOFFS           §џ              LEN           §џ              DESTADDR           §џ              READ            §џ              TMOUT         §џ                 BUSY            §џ              ERR            §џ              ERRID           §џ              COUNT_R           §џ           count of bytes actually read       Axis                AXIS_REF §џ                   цЈS     џџџџ           _TCMC_ADSWRITE        
   fbAdsWrite                                FW_AdsWrite   §џ              NcCycleCounter            §џ              NcCycleCounterAdsEnd            §џ              UpdateCounter            §џ              NoUpdateCounter            §џ           used for timeout detection    state            §џ                 NETID            
   T_AmsNetId  §џ              PORT            	   T_AmsPort  §џ              IDXGRP           §џ              IDXOFFS           §џ              LEN           §џ              SRCADDR           §џ              WRITE            §џ              TMOUT         §џ                 BUSY            §џ              ERR            §џ              ERRID           §џ                 Axis                AXIS_REF §џ                   цЈS     џџџџ           _TCMCGLOBAL     	      Axis                 _ST_NCADS_Axis  §џ       A    IDXGRP and IDXOFFS constants of axis parameter/status/functions    Table                _ST_NCADS_Table  §џ       B    IDXGRP and IDXOFFS constants of table parameter/status/functions     NCPORT_TCNCCAMMING_TABLEFUNCTION    є     §џ       	    timeout    tTargetPosTimeOut    p     §џ       T    20050128 KSt - changed from 5 sec to 6 sec to be later than a NC PEH error (5 sec)    tADSTimeOut    ш     §џ              tStopMonitoringTimeOut    d      §џ       C    20111208 KSt - new for stop monitoring (axis in standstill window    NCTOPLC_FEEDBACK_MAXWAITCYCLES    
      §џ       \    maximum number of PLC cycles to wait for a cyclic feedback in NcToPlc after an ADS command    fbADSRDDEVINFO        
                ADSRDDEVINFO   §џ              DeviceVersion            §џ                  NCPORT_TCMC    є     §џ       (    20110511 type changed from INT to UINT    NCPORT_TCMC_COUPLING    є     §џ       6    used with all axis coupling commands - 12.7.2006 KSt    NCNETID_TCMC           ''    
   T_AmsNetId  §џ              NCPORT_TCMC_CAM    є     §џ       (    20110511 type changed from INT to UINT    NCNETID_TCMC_CAM           ''    
   T_AmsNetId  §џ                 NcDeviceInfoTcMainVersion           §џ              NcDeviceInfoTcSubVersion           §џ              NcDeviceInfoNcDriverVersion           §џ              NcDeviceInfoNcVersion           §џ              NcDeviceInfoNcName               §џ                       цЈS     џџџџ           F_AXISCAMDATAQUEUED            
   StateDWord           §џ
                 F_AxisCamDataQueued                                      цЈS     џџџџ           F_AXISCAMSCALINGPENDING            
   StateDWord           §џ                 F_AxisCamScalingPending                                      цЈS     џџџџ           F_AXISCAMTABLEQUEUED            
   StateDWord           §џ
                 F_AxisCamTableQueued                                      цЈS     џџџџ           F_AXISCONTROLLOOPCLOSED            
   StateDWord           §џ                 F_AxisControlLoopClosed                                      цЈS     џџџџ           F_AXISEXTERNALLATCHVALID            
   StateDWord           §џ                 F_AxisExternalLatchValid                                      цЈS     џџџџ           F_AXISGOTNEWTARGETPOSITION            
   StateDWord           §џ
                 F_AxisGotNewTargetPosition                                      цЈS     џџџџ           F_AXISHASBEENSTOPPED            
   StateDWord           §џ                 F_AxisHasBeenStopped                                      цЈS     џџџџ           F_AXISHASEXTSETPOINTGEN            
   StateDWord           §џ                 F_AxisHasExtSetPointGen                                      цЈS     џџџџ           F_AXISHASJOB            
   StateDWord           §џ                 F_AxisHasJob                                      цЈS     џџџџ           F_AXISINERRORSTATE            
   StateDWord           §џ                 F_AxisInErrorState                                      цЈS     џџџџ           F_AXISINPOSITIONWINDOW            
   StateDWord           §џ                 F_AxisInPositionWindow                                      цЈS     џџџџ           F_AXISINPROTECTEDMODE            
   StateDWord           §џ                 F_AxisInProtectedMode                                      цЈS     џџџџ           F_AXISINPTPMODE            
   StateDWord           §џ
                 F_AxisInPTPmode                                      цЈS     џџџџ           F_AXISIODATAISINVALID            
   StateDWord           §џ                 F_AxisIoDataIsInvalid                                      цЈS     џџџџ           F_AXISISATTARGETPOSITION            
   StateDWord           §џ                 F_AxisIsAtTargetPosition                                      цЈS     џџџџ           F_AXISISCALIBRATED            
   StateDWord           §џ                 F_AxisIsCalibrated                                      цЈS     џџџџ           F_AXISISCALIBRATING            
   StateDWord           §џ                 F_AxisIsCalibrating                                      цЈS     џџџџ           F_AXISISCOMPENSATING            
   StateDWord           §џ                 F_AxisIsCompensating                                      цЈS     џџџџ           F_AXISISCOUPLED               nCoupleState           §џ                 F_AxisIsCoupled                                      цЈS     џџџџ           F_AXISISMOVING            
   StateDWord           §џ                 F_AxisIsMoving                                      цЈS     џџџџ           F_AXISISMOVINGBACKWARDS            
   StateDWord           §џ                 F_AxisIsMovingBackwards                                      цЈS     џџџџ           F_AXISISMOVINGENDLESS            
   StateDWord           §џ                 F_AxisIsMovingEndless                                      цЈS     џџџџ           F_AXISISMOVINGFORWARD            
   StateDWord           §џ                 F_AxisIsMovingForward                                      цЈS     џџџџ           F_AXISISNOTMOVING            
   StateDWord           §џ                 F_AxisIsNotMoving                                      цЈS     џџџџ           F_AXISISREADY            
   StateDWord           §џ                 F_AxisIsReady                                      цЈS     џџџџ           F_AXISJOBPENDING            
   StateDWord           §џ
                 F_AxisJobPending                                      цЈS     џџџџ           F_AXISMOTIONCOMMANDSLOCKED            
   StateDWord           §џ                 F_AxisMotionCommandsLocked                                      цЈS     џџџџ           F_AXISPHASINGACTIVE            
   StateDWord           §џ                 F_AxisPhasingActive                                      цЈS     џџџџ           F_AXISREACHEDCONSTANTVELOCITY            
   StateDWord           §џ                 F_AxisReachedConstantVelocity                                      цЈS     џџџџ           F_GETVERSION_TCMC2               nVersionElement           §џ                 F_GetVersion_TcMC2                                     цЈS     џџџџ           MC_ABORTSUPERPOSITION           LastExecutionResult                  _ST_FunctionBlockResults   §џ              ADSbusy             §џ              fbOnTrigger                 R_TRIG   §џ           
   fbADSwrite                          ADSWRITE   §џ              iState           STATE_INITIALIZATION       _E_TcMC_STATES   §џ                 Execute            §џ           Starts touch probe recording       Done            §џ           move completed    Busy            §џ       "    function block is currently Busy    Error            §џ       6    Signals that error has occured within Function Block    ErrorID           §џ	           Error identification       Axis                AXIS_REF §џ       f    Identifies the axis of which the position should be recorded at a defined event at the trigger input         цЈS     џџџџ           MC_ABORTTRIGGER           ADSbusy             §џ           
   fbADSwrite                          ADSWRITE   §џ              OLDADSINTERFACE         ` §џ       A    temporary flag to test old and new NC ADS touch probe interface    LatchID         ` §џ              fbOnTrigger                 R_TRIG `§џ                 Execute            §џ
           B       Done            §џ           B    Busy            §џ           E    Error            §џ           B    ErrorID           §џ           E       Axis                AXIS_REF §џ           B    TriggerInput                       TRIGGER_REF §џ           E         цЈS     џџџџ           MC_ABORTTRIGGER_V2_00           ADSbusy             §џ           
   fbADSwrite                          ADSWRITE   §џ              i            §џ              iState           STATE_INITIALIZATION       _E_TcMC_STATES   §џ              LatchID         ` §џ              fbOnTrigger                 R_TRIG `§џ              stTouchProbeDeactivation                 _ST_TcNc_TouchProbeDeactivation `§џ                 Execute            §џ
           B       Done            §џ           B    Busy            §џ           E    Error            §џ           B    ErrorID           §џ           E       Axis                AXIS_REF §џ           B    TriggerInput                       TRIGGER_REF §џ           E         цЈS     џџџџ           MC_BACKLASHCOMPENSATION           InternalEnable             §џ&            trick for internal FB handling    state            §џ'              GetThisTaskIndex                GETCURTASKINDEX   §џ(           	   CycleTime                         §џ)           task cycle time [s]    fbCalcBacklashCorrection                                    !   _FB_PositionCorrectionTableLookup   §џ*       4    based on old 'FB_PositionCompensation' in TcNc.lib    fbFeedBacklashCorrection                                    MC_PositionCorrectionLimiter   §џ+       N    s.TcMC2.lib (original based on old 'FB_WritePositionCorrection' in TcNc.lib)    CalcBacklashCorrOut                    ST_McOutputs   §џ,              FeedBacklashCorrOut                    ST_McOutputs   §џ-              ReadParameter                              MC_ReadParameter   §џ.           	   iBacklash                         §џ/              InternalAcceleration                         §џ0       E    input of FB 'MC_PositionCorrectionLimiter': 'Acceleration' [mm/s^2]    InternalBacklashValue                         §џ1       M    output of FB 'MC_PositionCorrectionLimiter': 'PositionCorrectionValue' [mm]    InternalLimitingActive             §џ2       ?    output of FB 'MC_PositionCorrectionLimiter': 'Limiting' [0/1]    stPosCompParameter       w   
								( MinPosition := -1.0E+12, MaxPosition :=1.0E+12, NoOfTableElements :=2, Direction := WorkDirectionNegative )       ЂmТ   -1.0E+12    ЂmB   1.0E+12            WorkDirectionBoth       E_WorkDirection         %   ST_PositionCompensationTableParameter   §џ4              stPosCompTable   	                   #   ST_PositionCompensationTableElement   o   
								( Position := -1.0E+12,	Compensation := 0.0 ),
								( Position := +1.0E+12,	Compensation := 0.0 )                 ЂmТ   -1.0E+12            0.0              ЂmB   1.0E+12            0.0   §џ7                 Enable            §џ       *    switch to activate backlash compensation    Backlash    3tЌ<{Ќ   1.0E3073tЌ<{Ќ   §џ       ~    signed backlash value [mm] (when using default value the internal nc backlash value will be read by ADS and used in this FB)    CompensationInPositiveDirection            §џ       @    compensation is just working in the selected working direction    Ramp                        §џ           velocity limit for feeded backlash compensation (constant velocity and linear position sub profile for backlash compensation) [mm/s] (default:=0.0)    DisableMode               E_DisableMode  §џ       S    disable mode defines whow to react in case of disabling: (0)=HOLD, (1)=RESET, ...    Options               ST_BacklashCompensationOptions  §џ       $    optional parameters (NOT USED YET)       Enabled            §џ              Busy            §џ              Error            §џ               ErrorID           §џ!              CurrentBacklash                        §џ"       $    current actual backlash value [mm]    Limiting            §џ#       >    function block is currently limiting the Backlash Correction       Axis                Axis_Ref §џ                   цЈS     џџџџ           MC_EXTSETPOINTGENDISABLE           LastExecutionResult                  _ST_FunctionBlockResults   §џ              iState           STATE_INITIALIZATION       _E_TcMC_STATES   §џ              ADSbusy             §џ           
   fbADSwrite                          ADSWRITE   §џ              fbOnTrigger                 R_TRIG `§џ              TimerStateFeedback                    TON `§џ                 Execute            §џ                 Done            §џ	              Busy            §џ
              Error            §џ              ErrorID           §џ              Enabled            §џ                 Axis                AXIS_REF §џ                   цЈS     џџџџ           MC_EXTSETPOINTGENENABLE           LastExecutionResult                  _ST_FunctionBlockResults   §џ              iState           STATE_INITIALIZATION       _E_TcMC_STATES   §џ              ADSbusy             §џ              sExtSetPointGen                _ST_TcNC_SetPos   §џ           
   fbADSwrite                          ADSWRITE   §џ              fbOnTrigger                 R_TRIG `§џ              TimerStateFeedback                    TON `§џ                 Execute            §џ              Position                        §џ              PositionType               E_PositionType  §џ                 Done            §џ              Busy            §џ              Error            §џ              ErrorID           §џ              Enabled            §џ                 Axis                AXIS_REF §џ                   цЈS     џџџџ           MC_EXTSETPOINTGENFEED           GetTaskIndex                GETCURTASKINDEX   §џ                 Position                        §џ              Velocity                        §џ              Acceleration                        §џ           	   Direction           §џ	                 MC_ExtSetPointGenFeed                                Axis                AXIS_REF §џ                   цЈS     џџџџ        	   MC_GEARIN           LastExecutionResult                  _ST_FunctionBlockResults   §џ              ADSbusy             §џ              iState           STATE_INITIALIZATION       _E_TcMC_STATES   §џ           
   fbAdsWrite                          ADSWRITE   §џ              sCouple                      _ST_TcNC_CoupleSlave   §џ               fbOptGearInDyn                                         MC_GearInDyn   §џ!              fbOnTrigger                 R_TRIG `§џ%              TimerStateFeedback                    TON `§џ&                 Execute            §џ           B    RatioNumerator          №?   1      №?   §џ
       %    changed from INT (PLCopen) to LREAL    RatioDenominator          §џ           	MasterValueSource :	MC_SOURCE;    Acceleration                        §џ           E    Deceleration                        §џ           E    Jerk                        §џ           E 
   BufferMode               MC_BufferMode  §џ           E    Options               ST_GearInOptions  §џ           V       InGear            §џ           B    Busy            §џ           E    Active            §џ           E    CommandAborted            §џ           E    Error            §џ           B    ErrorID           §џ           E       Master                AXIS_REF §џ           B    Slave                AXIS_REF §џ           B         цЈS     џџџџ           MC_GEARINDYN           LastExecutionResult                  _ST_FunctionBlockResults   §џ              ADSbusy             §џ               iState           STATE_INITIALIZATION       _E_TcMC_STATES   §џ!           	   iSubState            §џ"           
   fbAdsWrite                          ADSWRITE   §џ#           	   fbAdsRead                          ADSREAD   §џ$              sCouple                      _ST_TcNC_CoupleSlave   §џ%              v_max                         §џ&              pa_limit                         §џ'           	   WasInGear             §џ(              iAcceleration                      ` §џ,              TimerStateFeedback                    TON `§џ-                 Enable            §џ           	   GearRatio          №?   1.0      №?   §џ              Acceleration                        §џ              Deceleration                        §џ       
    not used    Jerk                        §џ       
    not used 
   BufferMode               MC_BufferMode  §џ           E    Options               ST_GearInDynOptions  §џ           V       InGear            §џ              Busy            §џ              Active            §џ              CommandAborted            §џ              Error            §џ              ErrorID           §џ                 Master                AXIS_REF §џ
              Slave                AXIS_REF §џ                   цЈS     џџџџ           MC_GEARINMULTIMASTER           ADSbusy             §џ%              iState           STATE_INITIALIZATION       _E_TcMC_STATES   §џ&           
   fbAdsWrite                          ADSWRITE   §џ'              sCouple                           _ST_TcNC_CoupleSlaveMultiMaster   §џ(           	   sCoupleV2                                  _ST_TcNC_CoupleSlaveMultiMaster2   §џ)              LastExecutionResult                  _ST_FunctionBlockResults   §џ*           	   IsCoupled             §џ+              TimerStateFeedback                    TON `§џ/              iAdvancedSlaveDynamics          ` §џ0              iAcceleration                      ` §џ1              iDeceleration                      ` §џ2           just used in version 2 mode    iJerk                      ` §џ3           just used in version 2 mode 	   WasInGear          ` §џ4              ParameterChanged          ` §џ5           
      Enable            §џ           
   GearRatio1          №?   1.0      №?   §џ           
   GearRatio2          №?   1.0      №?   §џ           
   GearRatio3          №?   1.0      №?   §џ           
   GearRatio4          №?   1.0      №?   §џ              Acceleration                        §џ              Deceleration                        §џ       5    just used in version 2 mode (AdvancedSlaveDynamics)    Jerk                        §џ       5    just used in version 2 mode (AdvancedSlaveDynamics) 
   BufferMode               MC_BufferMode  §џ           E    Options                ST_GearInMultiMasterOptions  §џ           V       InGear            §џ              Busy            §џ              Active            §џ              CommandAborted            §џ               Error            §џ!              ErrorID           §џ"                 Master1                AXIS_REF §џ
              Master2                AXIS_REF §џ              Master3                AXIS_REF §џ              Master4                AXIS_REF §џ              Slave                AXIS_REF §џ                   цЈS     џџџџ        
   MC_GEAROUT           LastExecutionResult                  _ST_FunctionBlockResults   §џ              ADSbusy             §џ              iState           STATE_INITIALIZATION       _E_TcMC_STATES   §џ           
   fbAdsWrite                          ADSWRITE   §џ              fbOnTrigger                 R_TRIG `§џ              TimerStateFeedback                    TON `§џ                 Execute            §џ           B    Options               ST_GearOutOptions  §џ           V       Done            §џ           B    Busy            §џ           E    Error            §џ           B    ErrorID           §џ           E       Slave                AXIS_REF §џ	           B         цЈS     џџџџ           MC_HALT           LastExecutionResult                  _ST_FunctionBlockResults   §џ$              ADSbusy             §џ%              MoveGeneric        1                                                       _FB_MoveUniversalGeneric   §џ&              CmdNo            §џ'                 Execute            §џ           B    Deceleration                        §џ           E    Jerk                        §џ           E 
   BufferMode               MC_BufferMode  §џ           E    Options                  ST_MoveOptions  §џ           V       Done            §џ           B    Busy            §џ           E    Active            §џ           E    CommandAborted            §џ           E    Error            §џ            B    ErrorID           §џ!           E       Axis                AXIS_REF §џ           B         цЈS     џџџџ           MC_HOME           LastExecutionResult                  _ST_FunctionBlockResults   §џ              ADSbusy             §џ              iState           STATE_INITIALIZATION       _E_TcMC_STATES   §џ            	   iSubState            §џ!              fbAdsWriteCmd                          ADSWRITE   §џ"              fbAdsWriteRefPos                          ADSWRITE   §џ#              fbAdsReadRefPos                          ADSREAD   §џ$              ReferenceFlagValue            §џ%              fbSetPosition                            MC_SetPosition   §џ&              NcHomePosition                         §џ'           	   fbTrigger                 R_TRIG `§џ+           	   fbTimeOut                    TON `§џ,                 Execute            §џ           B    Position    3tЌ<{Ќ   1.0E3073tЌ<{Ќ   §џ           
   HomingMode               MC_HomingMode  §џ           V 
   BufferMode               MC_BufferMode  §џ           E    Options               ST_HomingOptions  §џ           V    bCalibrationCam            §џ           V       Done            §џ           B    Busy            §џ           E    Active            §џ           E    CommandAborted            §џ           E    Error            §џ           B    ErrorID           §џ           E       Axis                AXIS_REF §џ           B         цЈS     џџџџ           MC_JOG           state            §џ              LastExecutionResult                  _ST_FunctionBlockResults   §џ           
   StateDWord             §џ              ExecuteMoveVelocity          ` §џ               MoveVelocity                                 MC_MoveVelocity `§џ!              MoveVelocityOut                    ST_McOutputs `§џ"           	   Direction               MC_Direction `§џ#              ExecuteHalt          ` §џ%              Halt                              MC_Halt `§џ&              HaltOut                    ST_McOutputs `§џ'              ExecuteMoveAbsolute          ` §џ)              MoveAbsolute                                 MC_MoveAbsolute `§џ*              MoveAbsoluteOut                    ST_McOutputs `§џ+              ExecuteMoveRelative          ` §џ-              MoveRelative                                 MC_MoveRelative `§џ.              MoveRelativeOut                    ST_McOutputs `§џ/              JogMove        1                                                       _FB_MoveUniversalGeneric `§џ1              LastJogMoveResult                  _ST_FunctionBlockResults `§џ2              ExecuteJogMove          ` §џ3           	   StartType               _E_TCNC_StartPosType `§џ4           
   JogMoveOut                    ST_McOutputs `§џ5              JogEnd          ` §џ7              TargetPosition                      ` §џ8              modulo                      ` §џ9              
   JogForward            §џ              JogBackwards            §џ              Mode            	   E_JogMode  §џ	              Position                        §џ
              Velocity                        §џ              Acceleration                        §џ              Deceleration                        §џ              Jerk                        §џ          	BufferMode		:	MC_BufferMode;      Done            §џ              Busy            §џ              Active            §џ              CommandAborted            §џ              Error            §џ              ErrorID           §џ                 Axis                AXIS_REF §џ                   цЈS     џџџџ           MC_MOVEABSOLUTE           LastExecutionResult                  _ST_FunctionBlockResults   §џ              ADSbusy             §џ              MoveGeneric        1                                                       _FB_MoveUniversalGeneric   §џ              CmdNo            §џ                 Execute            §џ           B    Position                        §џ	           B    Velocity                        §џ
           E    Acceleration                        §џ           E    Deceleration                        §џ           E    Jerk                        §џ           E 
   BufferMode               MC_BufferMode  §џ           E    Options                  ST_MoveOptions  §џ           V       Done            §џ           B    Busy            §џ           E    Active            §џ           E    CommandAborted            §џ           E    Error            §џ           B    ErrorID           §џ           E       Axis                AXIS_REF §џ           B         цЈS     џџџџ           MC_MOVEADDITIVE           LastExecutionResult                  _ST_FunctionBlockResults   §џ%              ADSbusy             §џ&              MoveGeneric        1                                                       _FB_MoveUniversalGeneric   §џ'              CmdNo            §џ(                 Execute            §џ           B    Distance                        §џ           B    Velocity                        §џ           E    Acceleration                        §џ           E    Deceleration                        §џ           E    Jerk                        §џ           E 
   BufferMode               MC_BufferMode  §џ           E    Options                  ST_MoveOptions  §џ           V       Done            §џ           B    Busy            §џ           E    Active            §џ           E    CommandAborted            §џ            E    Error            §џ!           B    ErrorID           §џ"           E       Axis                AXIS_REF §џ           B         цЈS     џџџџ           MC_MOVECONTINUOUSABSOLUTE           LastExecutionResult                  _ST_FunctionBlockResults   §џ+              ADSbusy             §џ,              MoveGeneric        1                                                       _FB_MoveUniversalGeneric   §џ-              CmdNo            §џ.           	      Execute            §џ           B    Position                        §џ           B    Velocity                        §џ           B    EndVelocity                        §џ           B    Acceleration                        §џ           E    Deceleration                        §џ           E    Jerk                        §џ           E 
   BufferMode               MC_BufferMode  §џ           E    Options                  ST_MoveOptions  §џ                  InEndVelocity            §џ#           B    Busy            §џ$           E    Active            §џ%           E    CommandAborted            §џ&           E    Error            §џ'           B    ErrorID           §џ(           E       Axis                AXIS_REF §џ           B         цЈS     џџџџ           MC_MOVECONTINUOUSRELATIVE           LastExecutionResult                  _ST_FunctionBlockResults   §џ*              ADSbusy             §џ+              MoveGeneric        1                                                       _FB_MoveUniversalGeneric   §џ,              CmdNo            §џ-           	      Execute            §џ           B    Distance                        §џ           B    Velocity                        §џ           B    EndVelocity                        §џ           B    Acceleration                        §џ           E    Deceleration                        §џ           E    Jerk                        §џ           E 
   BufferMode               MC_BufferMode  §џ           E    Options                  ST_MoveOptions  §џ                 InEndVelocity            §џ"           B    Busy            §џ#           E    Active            §џ$           E    CommandAborted            §џ%           E    Error            §џ&           B    ErrorID           §џ'           E       Axis                AXIS_REF §џ           B         цЈS     џџџџ           MC_MOVEMODULO           LastExecutionResult                  _ST_FunctionBlockResults   §џ              ADSbusy             §џ              MoveGeneric        1                                                       _FB_MoveUniversalGeneric   §џ          	StartType: UDINT;	   StartType               _E_TcNC_StartPosType   §џ       #    20110511 KSt type changed for TC3    CmdNo            §џ              TriggerExecute                 R_TRIG `§џ#           	      Execute            §џ              Position                        §џ              Velocity                        §џ	              Acceleration                        §џ
              Deceleration                        §џ              Jerk                        §џ           	   Direction               MC_Direction  §џ           E 
   BufferMode               MC_BufferMode  §џ           E    Options                  ST_MoveOptions  §џ                 Done            §џ           B    Busy            §џ           E    Active            §џ           E    CommandAborted            §џ           E    Error            §џ           B    ErrorID           §џ           E       Axis                AXIS_REF §џ                   цЈS     џџџџ           MC_MOVERELATIVE           LastExecutionResult                  _ST_FunctionBlockResults   §џ              ADSbusy             §џ              MoveGeneric        1                                                       _FB_MoveUniversalGeneric   §џ              CmdNo            §џ                 Execute            §џ	           B    Distance                        §џ           B    Velocity                        §џ           E    Acceleration                        §џ           E    Deceleration                        §џ           E    Jerk                        §џ           E 
   BufferMode               MC_BufferMode  §џ           E    Options                  ST_MoveOptions  §џ           V       Done            §џ           B    Busy            §џ           E    Active            §џ           E    CommandAborted            §џ           E    Error            §џ           B    ErrorID           §џ           E       Axis                AXIS_REF §џ           B         цЈS     џџџџ           MC_MOVESUPERIMPOSED     
      LastExecutionResult                  _ST_FunctionBlockResults   §џ1              ADSbusy             §џ2              CompensationStarted             §џ3              AxisHasJobAtStartOfCompensation             §џ4       ,    HasJob flag when starting the compensation !   AxisIsMovingAtStartOfCompensation             §џ5       ,    Moving flag when starting the compensation    iState           STATE_INITIALIZATION       _E_TcMC_STATES   §џ6              fbAdsReadWrite                          
   ADSRDWRTEX   §џ7              sNcCompensation                      _ST_TcNC_Compensation2   §џ8           	   fbTrigger                 R_TRIG `§џ<           	   fbTimeOut                    TON `§џ=           
      Execute            §џ           B    Mode               E_SuperpositionMode  §џ           V    Distance                        §џ           B    VelocityDiff                        §џ           E    Acceleration                        §џ           E    Deceleration                        §џ           E    Jerk                        §џ           E    VelocityProcess                        §џ           V    Length                        §џ           V    Options               ST_SuperpositionOptions  §џ           V       Done            §џ!           B    Busy            §џ"           E    Active            §џ#           E    CommandAborted            §џ$           E    Error            §џ%           B    ErrorID           §џ&           E    Warning            §џ(           V 	   WarningId           §џ)           V    ActualVelocityDiff                        §џ*           V    ActualDistance                        §џ+           V    ActualLength                        §џ,           V    ActualAcceleration                        §џ-           V    ActualDeceleration                        §џ.           V       Axis                AXIS_REF §џ           B         цЈS     џџџџ           MC_MOVEVELOCITY           LastExecutionResult                  _ST_FunctionBlockResults   §џ              ADSbusy             §џ              MoveGeneric        1                                                       _FB_MoveUniversalGeneric   §џ              CmdNo            §џ                 Execute            §џ           B    Velocity                        §џ	           E    Acceleration                        §џ
           E    Deceleration                        §џ           E    Jerk                        §џ           E 	   Direction           MC_Positive_Direction       MC_Direction  §џ           E 
   BufferMode               MC_BufferMode  §џ           E    Options                  ST_MoveOptions  §џ           V    
   InVelocity            §џ           B    Busy            §џ           E    Active            §џ           E    CommandAborted            §џ           E    Error            §џ           B    ErrorID           §џ           E       Axis                AXIS_REF §џ           B         цЈS     џџџџ           MC_OVERRIDEFILTER           bFirstCycle            §џ              bThresholdActive            §џ              InternalOverrideValueRaw            §џ              LastOverrideValueRaw    џџ      §џ              OverrideRange            §џ              fbTimer                    TON `§џ                 OverrideValueRaw           §џ           parameter    LowerOverrideThreshold           §џ           0...32767 digits    UpperOverrideThreshold    џ     §џ           0...32767 digits    OverrideSteps    Ш      §џ           200 steps => 0.5 percent    OverrideRecoveryTime          §џ	           150 ms       OverrideValueFiltered           §џ           0...1000000 counts    OverridePercentFiltered                        §џ           0...100 %    Error            §џ              ErrorID           §џ                       цЈS     џџџџ           MC_POSITIONCORRECTIONLIMITER           GetThisTaskIndex                GETCURTASKINDEX   §џ(           	   CycleTime                         §џ)              MaxDeltaVelocity                         §џ*              MaxDeltaPosition                         §џ+              DeltaCorrection                         §џ,              InitialDeltaCorrection                         §џ-              EndOfEnablePhase             §џ.              iCorrectionMode               E_AxisPositionCorrectionMode   §џ/              state            §џ0              NumberOfCycles            §џ1              DeltaCorrectionPerCycle                         §џ2              LastPositionCorrectionValue                         §џ3                 Enable            §џ              PositionCorrectionValue                        §џ              CorrectionMode               E_AxisPositionCorrectionMode  §џ              Acceleration                        §џ              CorrectionLength                        §џ       8    optional length - comparable to 'superposition length'       Busy            §џ"              Error            §џ#              ErrorID           §џ$              Limiting            §џ%       >    function block is currently limiting the Position Correction       Axis                AXIS_REF §џ                   цЈS     џџџџ           MC_POWER           EnableTimeout                    TON `§џ              EnableOffOnDelay                   TP `§џ          	iOverride: DINT;	   iOverride         ` §џ        $    20110511 KSt type adaption for TC3       Enable            §џ           B    Enable_Positive            §џ           E    Enable_Negative            §џ           E    Override          Y@   100.0      Y@   §џ       )    in percent - Beckhoff proprietary input 
   BufferMode               MC_BufferMode  §џ           V       Status            §џ           B    Busy            §џ           V    Active            §џ           V    Error            §џ           B    ErrorID           §џ           E       Axis                AXIS_REF §џ
           B         цЈS     џџџџ           MC_POWERSTEPPER     $      fbPower                            MC_Power   §џ           	   ErrorCode            §џ              fbWriteErrCode                          ADSWRITE   §џ           	   nRefState            §џ              fbWriteNonRef                          ADSWRITE   §џ              fbReadParams                          ADSREAD   §џ              fbWriteInstOvr                          ADSWRITE   §џ              bAdsInitDone             §џ           	   bOverTemp             §џ           
   rtOverTemp                 R_TRIG   §џ               bUnderVoltage             §џ!              rtUnderVoltage                 R_TRIG   §џ"           
   bOpenLoopA             §џ#              rtOpenLoopA                 R_TRIG   §џ$           
   bOpenLoopB             §џ%              rtOpenLoopB                 R_TRIG   §џ&              bOverCurrentA             §џ'              rtOverCurrentA                 R_TRIG   §џ(              bOverCurrentB             §џ)              rtOverCurrentB                 R_TRIG   §џ*              rtStallError                 R_TRIG   §џ+           	   bOldState             §џ,              bLagFilterInit             §џ.              tonLagFilter                    TON   §џ/              tonNoLagFilter                    TON   §џ0              wState2            §џ2              nAngle            §џ3           	   nOldAngle            §џ4           	   AngleDiff            §џ5              bInErrorState             §џ6           	   nParamIdx            §џ8              bParamEnabled             §џ9           	   fLagLimit                         §џ:           
   fLagFilter                         §џ;              nTries            §џ<              tTimeOut                    TON   §џ=                 Enable            §џ              Enable_Positive            §џ              Enable_Negative            §џ              Override          Y@   100.0      Y@   §џ	           in percent    DestallParams                    ST_PowerStepperStruct  §џ
           	   KL_Status           §џ           
   KL_Status2           §џ                 Status            §џ              Error            §џ              ErrorID           §џ              Stalled            §џ           
   StallError            §џ                 Axis                AXIS_REF §џ                   цЈS     џџџџ           MC_READACTUALPOSITION               Enable            §џ           B       Valid            §џ
           B    Busy            §џ           E    Error            §џ           B    ErrorID           §џ           E    Position                        §џ           B       Axis                AXIS_REF §џ           B         цЈS     џџџџ           MC_READACTUALVELOCITY               Enable            §џ           B       Valid            §џ           B    Busy            §џ           E    Error            §џ           B    ErrorID           §џ           E    ActualVelocity                        §џ           B       Axis                AXIS_REF §џ           B         цЈS     џџџџ           MC_READAPPLICATIONREQUEST           TriggerExecute                 R_TRIG   §џ              state           STATE_INITIALIZATION       _E_TcMC_STATES   §џ           	   fbAdsRead                          ADSREAD   §џ                 Execute            §џ                 Done            §џ              Busy            §џ              Error            §џ              ErrorID           §џ              Request            §џ           application request bit [0/1]    RequestType           §џ           application request TYPE/ID       ApplicationRequest                    ST_NcApplicationRequest §џ              Axis                AXIS_REF §џ                   цЈS     џџџџ           MC_READAXISCOMPONENTS           TriggerExecute                 R_TRIG   §џ              state           STATE_INITIALIZATION       _E_TcMC_STATES   §џ           	   fbAdsRead                          ADSREAD   §џ                 Execute            §џ                 Done            §џ
              Busy            §џ              Error            §џ              ErrorID           §џ                 AxisComponents                  ST_AxisComponents §џ              Axis                AXIS_REF §џ                   цЈS     џџџџ           MC_READAXISERROR               Enable            §џ
           B       Valid            §џ           B    Busy            §џ           E    Error            §џ           B    ErrorID           §џ           B    AxisErrorID           §џ           B       Axis                AXIS_REF §џ           B         цЈS     џџџџ           MC_READBOOLPARAMETER           ADSbusy             §џ              fbReadWriteParameter                                      _FB_ReadWriteParameter   §џ           	   nParatype               _E_ParameterType `§џ              dwValue         ` §џ              lrValue                      ` §џ              bStarted          ` §џ           	   fbTrigger                 R_TRIG `§џ                 Enable            §џ           B    ParameterNumber           §џ           B    ReadMode           ReadMode_Once    
   E_ReadMode  §џ	           Beckhoff proprietary input       Valid            §џ           B    Busy            §џ           E    Error            §џ           B    ErrorID           §џ           E    Value            §џ           B       Axis                AXIS_REF §џ           B         цЈS     џџџџ           MC_READDRIVEADDRESS           state           STATE_INITIALIZATION       _E_TcMC_STATES   §џ              TriggerExecute                 R_TRIG   §џ           	   fbAdsRead                          ADSREAD   §џ           
   readBuffer   	  ?                        §џ       H    2013-04-03 KSt - new data structure - size changed from 10 to 64 bytes    i         ` §џ              pDword               ` §џ                 Execute            §џ                 Done            §џ
              Busy            §џ              Error            §џ              ErrorID           §џ              DriveAddress                          ST_DriveAddress  §џ                 Axis                AXIS_REF §џ           B         цЈS     џџџџ           MC_READPARAMETER           ADSbusy             §џ              fbReadWriteParameter                                      _FB_ReadWriteParameter   §џ           	   nParatype               _E_ParameterType `§џ              dwValue         ` §џ              bValue          ` §џ              bStarted          ` §џ           	   fbTrigger                 R_TRIG `§џ                 Enable            §џ           B    ParameterNumber           §џ           B    ReadMode           ReadMode_Once    
   E_ReadMode  §џ	           Beckhoff proprietary input       Valid            §џ           B    Busy            §џ           E    Error            §џ           B    ErrorID           §џ           E    Value                        §џ           B       Axis                AXIS_REF §џ           B         цЈS     џџџџ           MC_READPARAMETERSET           TriggerExecute                 R_TRIG   §џ              state           STATE_INITIALIZATION       _E_TcMC_STATES   §џ           	   fbAdsRead                          ADSREAD   §џ              SizeofPayloadData            §џ                 Execute            §џ                 Done            §џ              Busy            §џ              Error            §џ              ErrorID           §џ              	   Parameter         E                                                                           ST_AxisParameterSet §џ              Axis                AXIS_REF §џ                   цЈS     џџџџ           MC_READSTATUS               Enable            §џ           B       Valid            §џ
           B    Busy            §џ           E    Error            §џ           B    ErrorID           §џ           E 	   ErrorStop            §џ           B    Disabled            §џ           B    Stopping            §џ           B 
   StandStill            §џ           B    DiscreteMotion            §џ           B    ContinuousMotion            §џ           B    SynchronizedMotion            §џ           E    Homing            §џ           E    ConstantVelocity            §џ           V    Accelerating            §џ           V    Decelerating            §џ           V    Status        1                                                       ST_AxisStatus  §џ           V       Axis                AXIS_REF §џ           B         цЈS     џџџџ           MC_READSTOPINFO           TriggerExecute                 R_TRIG   §џ              state           STATE_INITIALIZATION       _E_TcMC_STATES   §џ              stStopInfoRequest                _ST_TcNC_StopInfoRequest   §џ              stStopInfoResponse                _ST_TcNC_StopInfoResponse   §џ              fbAdsReadWrite                            ADSRDWRT   §џ                 Execute            §џ           B    Deceleration                        §џ           E    Jerk                        §џ           E       Done            §џ           B    Busy            §џ           E    Error            §џ           B    ErrorID           §џ           E    StopDistance                        §џ       $    distance required to stop the axis    StopTime                        §џ            time required to stop the axis       Axis                AXIS_REF §џ           B         цЈS     џџџџ           MC_RESET           ADSbusy             §џ              iState           STATE_INITIALIZATION       _E_TcMC_STATES   §џ              LastExecutionResult                  _ST_FunctionBlockResults   §џ           
   fbAdsWrite                                _TcMC_ADSWRITE `§џ           2010-05-31 KSt    fbOnTrigger                 R_TRIG `§џ                 Execute            §џ           B       Done            §џ           B    Busy            §џ           E    Error            §џ           B    ErrorID           §џ           B       Axis                AXIS_REF §џ           B         цЈS     џџџџ           MC_SETACCEPTBLOCKEDDRIVESIGNAL               Enable            §џ                 MC_SetAcceptBlockedDriveSignal                                Axis                AXIS_REF §џ                   цЈS     џџџџ           MC_SETENCODERSCALINGFACTOR           ADSbusy             §џ              stSetEncoderSaclingFactor                  _ST_TcNC_SetEncoderSaclingFactor   §џ               iState           STATE_INITIALIZATION       _E_TcMC_STATES   §џ!           
   fbAdsWrite                          ADSWRITE   §џ"              fbOnTrigger                 R_TRIG `§џ&                 Execute            §џ	           B    ScalingFactor                        §џ
           B    Mode               E_SetScalingFactorMode  §џ           E    Options                ST_SetEncoderScalingOptions  §џ           V       Done            §џ           B    Busy            §џ           E    Error            §џ           B    ErrorID           §џ           E       Axis                AXIS_REF §џ           B         цЈS     џџџџ           MC_SETOVERRIDE               Enable            §џ           B 	   VelFactor          №?   1.0      №?   §џ           1.0 = 100% 	   AccFactor          №?   1.0      №?   §џ           1.0 = 100% 
   JerkFactor          №?   1.0      №?   §џ           1.0 = 100%       Enabled            §џ           B    Busy            §џ           E    Error            §џ           B    ErrorID           §џ           E       Axis                AXIS_REF §џ                   цЈS     џџџџ           MC_SETPOSITION           ADSbusy             §џ)              stSetPos                   _ST_TcNC_SetPosOnTheFly   §џ*              iState           STATE_INITIALIZATION       _E_TcMC_STATES   §џ+           
   fbAdsWrite                          ADSWRITE   §џ,              fbOnTrigger                 R_TRIG `§џ0                 Execute            §џ           B    Position                        §џ           B    Mode            §џ           E    Options                 ST_SetPositionOptions  §џ           V       Done            §џ           B    Busy            §џ           E    Error            §џ           B    ErrorID           §џ           E       Axis                AXIS_REF §џ           B         цЈS     џџџџ           MC_STOP     
      LastExecutionResult                  _ST_FunctionBlockResults   §џ              ADSbusy             §џ               MoveGeneric        1                                                       _FB_MoveUniversalGeneric   §џ!              ReleaseLock                          ADSWRITE   §џ"              CmdNo            §џ#              AxisMotionCommandsLocked             §џ$              iState           STATE_INITIALIZATION       _E_TcMC_STATES   §џ%           
   NoJobTimer                    TON   §џ&              fbOnTrigger                 R_TRIG `§џ*              CounterMotionCommandsLocked         ` §џ+                 Execute            §џ           B    Deceleration                        §џ           E    Jerk                        §џ           E    Options                  ST_MoveOptions  §џ           V       Done            §џ           B    Busy            §џ           E    Active            §џ           E    CommandAborted            §џ           E    Error            §џ           B    ErrorID           §џ           E       Axis                AXIS_REF §џ           B         цЈS     џџџџ        !   MC_TABLEBASEDPOSITIONCOMPENSATION           InternalEnable             §џ#            trick for internal FB handling    state            §џ$              GetThisTaskIndex                GETCURTASKINDEX   §џ%           	   CycleTime                         §џ&           task cycle time [s]    fbCalcPositionCorrection                                    !   _FB_PositionCorrectionTableLookup   §џ'       4    based on old 'FB_PositionCompensation' in TcNc.lib    fbFeedPositionCorrection                                    MC_PositionCorrectionLimiter   §џ(       N    s.TcMC2.lib (original based on old 'FB_WritePositionCorrection' in TcNc.lib)    CalcPosCorrOut                    ST_McOutputs   §џ)              FeedPosCorrOut                    ST_McOutputs   §џ*              InternalAcceleration                         §џ+       E    input of FB 'MC_PositionCorrectionLimiter': 'Acceleration' [mm/s^2]    InternalCorrectionValue                         §џ,       M    output of FB 'MC_PositionCorrectionLimiter': 'PositionCorrectionValue' [mm]    InternalLimitingActive             §џ-       ?    output of FB 'MC_PositionCorrectionLimiter': 'Limiting' [0/1]       Enable            §џ       )    rising edge triggers initialize routine    pTable              #   ST_PositionCompensationTableElement       §џ       R    pointer to equidistant table with strictly monotonous increasing position values 	   TableSize           §џ       +    size of data in bytes related to 'pTable'    TableParameter                %   ST_PositionCompensationTableParameter  §џ       1    position compensation table parameter structure    Ramp                        §џ           velocity limit for feeded position compensation (constant velocity and linear position sub profile for position compensation) [mm/s] (default:=0.0)    DisableMode               E_DisableMode  §џ       S    disable mode defines whow to react in case of disabling: (0)=HOLD, (1)=RESET, ...    Options               ST_PositionCompensationOptions  §џ       $    optional parameters (NOT USED YET)       Enabled            §џ              Busy            §џ              Error            §џ              ErrorID           §џ              CurrentCorrection                        §џ       /    current actual position correction value [mm]    Limiting            §џ        >    function block is currently limiting the Position Correction       Axis                Axis_Ref §џ                   цЈS     џџџџ           MC_TOUCHPROBE           ADSbusy             §џ              iState           STATE_INITIALIZATION       _E_TcMC_STATES   §џ              TouchProbeValid   	                         §џ            valid state of probes 1..4    TouchProbeActive   	                         §џ!       !    activation state of probes 1..4    TouchProbeValue   	                                      §џ"       $    last recorded value of probes 1..4    TouchProbeModuloValue   	                                      §џ#       +    last recorded modulo value of probes 1..4    TouchProbeInactiveCounter   	                         §џ$       O    number of cycles where the probes 1..4 where inactive (activation monitoring)    OLDADSINTERFACE         ` §џ(       A    temporary flag to test old and new NC ADS touch probe interface 
   fbADSwrite                          ADSWRITE `§џ+              fbAdsReadValid                          ADSREAD `§џ,              fbAdsReadValue                          ADSREAD `§џ-              fbAdsReadState                          ADSREAD `§џ.              fbAdsReadModulo                          ADSREAD `§џ/              TimerAdsReadState                    TON `§џ0              RtrigPlcEvent                 R_TRIG `§џ1              FtrigPlcEvent                 F_TRIG `§џ2              fbOnTrigger                 R_TRIG `§џ3              LatchID         ` §џ4              Restart          ` §џ5       H    restart probe sequence when the trigger was outside the defined window    InWindow          ` §џ6       *    probe value is inside the defined window    ModuloFactor                      ` §џ7       &    axis' modulo factor read from the NC    InitDone          ` §џ8       %    initialization on start-up finished    IndexOffset         ` §џ9              i         ` §џ:                 Execute            §џ           B 
   WindowOnly            §џ           E    FirstPosition                        §џ           E    LastPosition                        §џ           E       Done            §џ           B    Busy            §џ           E    CommandAborted            §џ           E    Error            §џ           B    ErrorID           §џ           E    RecordedPosition                        §џ           B       Axis                AXIS_REF §џ           B    TriggerInput                       TRIGGER_REF §џ           B         цЈS     џџџџ           MC_TOUCHPROBE_V2_00            ADSbusy             §џ              iState           STATE_INITIALIZATION       _E_TcMC_STATES   §џ              ExternalLatchValid             §џ              TouchProbeValid   	                         §џ           valid state of probes 1..4    TouchProbeActive   	                         §џ       !    activation state of probes 1..4    TouchProbeValue   	                                      §џ       $    last recorded value of probes 1..4    TouchProbeModuloValue   	                                      §џ       +    last recorded modulo value of probes 1..4    TouchProbeCounter   	                         §џ       ,    last recorded value counter of probes 1..4    TouchProbeInactiveCounter   	                         §џ       O    number of cycles where the probes 1..4 where inactive (activation monitoring)    stTouchProbeActivation                   _ST_TcNc_TouchProbeActivation   §џ               stTouchProbeStatusRequest                 _ST_TcNc_TouchProbeStatusRequest   §џ!              stTouchProbeStatusResponse                      !   _ST_TcNc_TouchProbeStatusResponse   §џ"              stTouchProbeDeactivation                 _ST_TcNc_TouchProbeDeactivation   §џ#              LastTouchProbeValue   	                                   ` §џ'       $    last recorded value of probes 1..4    LastTouchProbeCounter   	                      ` §џ(       ,    last recorded value counter of probes 1..4 
   fbADSwrite                          ADSWRITE `§џ)              fbAdsReadValid                          ADSREAD `§џ*              fbAdsReadValue                          ADSREAD `§џ+              fbAdsReadState                          ADSREAD `§џ,              fbAdsReadModulo                          ADSREAD `§џ-              fbAdsReadLatchStatus                          
   ADSRDWRTEX `§џ.              TimerAdsReadState                    TON `§џ/              RtrigPlcEvent                 R_TRIG `§џ0              FtrigPlcEvent                 F_TRIG `§џ1              fbOnTrigger                 R_TRIG `§џ2              Restart          ` §џ3       H    restart probe sequence when the trigger was outside the defined window    InWindow          ` §џ4       *    probe value is inside the defined window    ModuloFactor                      ` §џ5       &    axis' modulo factor read from the NC    InitDone          ` §џ6       %    initialization on start-up finished    IndexOffset         ` §џ7              iTriggerInput                      TRIGGER_REF `§џ8           B    i         ` §џ9                 Execute            §џ           B 
   WindowOnly            §џ	           E    FirstPosition                        §џ
           E    LastPosition                        §џ           E       Done            §џ           B    Busy            §џ           E    CommandAborted            §џ           E    Error            §џ           B    ErrorID           §џ           E    RecordedPosition                        §џ           B    RecordedData                  MC_TouchProbeRecordedData  §џ           V       Axis                AXIS_REF §џ           B    TriggerInput                       TRIGGER_REF §џ           B         цЈS     џџџџ           MC_WRITEBOOLPARAMETER           ADSbusy             §џ              fbReadWriteParameter                                      _FB_ReadWriteParameter   §џ           	   nParatype               _E_ParameterType `§џ              dwValue         ` §џ              lrValue                      ` §џ           	   fbTrigger                 R_TRIG `§џ                 Execute            §џ           B    ParameterNumber           §џ           B    Value            §џ	           B       Done            §џ           B    Busy            §џ           E    Error            §џ           B    ErrorID           §џ           E       Axis                AXIS_REF §џ           B         цЈS     џџџџ           MC_WRITEPARAMETER           ADSbusy             §џ              fbReadWriteParameter                                      _FB_ReadWriteParameter   §џ           	   nParatype               _E_ParameterType `§џ              dwValue         ` §џ              bValue          ` §џ           	   fbTrigger                 R_TRIG `§џ                 Execute            §џ           B    ParameterNumber           §џ           B    Value                        §џ	           B       Done            §џ           B    Busy            §џ           E    Error            §џ           B    ErrorID           §џ           E       Axis                AXIS_REF §џ           B         цЈS     џџџџ    q   C:\TWINCAT\PLC\LIB\STANDARD.LIB @                                                                                          CONCAT               STR1               §џ              STR2               §џ                 CONCAT                                         цЈS     џџџџ           CTD           M             §џ           Variable for CD Edge Detection      CD            §џ           Count Down on rising edge    LOAD            §џ           Load Start Value    PV           §џ           Start Value       Q            §џ           Counter reached 0    CV           §џ           Current Counter Value             цЈS     џџџџ           CTU           M             §џ            Variable for CU Edge Detection       CU            §џ       
    Count Up    RESET            §џ           Reset Counter to 0    PV           §џ           Counter Limit       Q            §џ           Counter reached the Limit    CV           §џ           Current Counter Value             цЈS     џџџџ           CTUD           MU             §џ            Variable for CU Edge Detection    MD             §џ            Variable for CD Edge Detection       CU            §џ	       
    Count Up    CD            §џ
           Count Down    RESET            §џ           Reset Counter to Null    LOAD            §џ           Load Start Value    PV           §џ           Start Value / Counter Limit       QU            §џ           Counter reached Limit    QD            §џ           Counter reached Null    CV           §џ           Current Counter Value             цЈS     џџџџ           DELETE               STR               §џ              LEN           §џ              POS           §џ                 DELETE                                         цЈS     џџџџ           F_TRIG           M             §џ
                 CLK            §џ           Signal to detect       Q            §џ           Edge detected             цЈS     џџџџ           FIND               STR1               §џ              STR2               §џ                 FIND                                     цЈS     џџџџ           INSERT               STR1               §џ              STR2               §џ              POS           §џ                 INSERT                                         цЈS     џџџџ           LEFT               STR               §џ              SIZE           §џ                 LEFT                                         цЈS     џџџџ           LEN               STR               §џ                 LEN                                     цЈS     џџџџ           MID               STR               §џ              LEN           §џ              POS           §џ                 MID                                         цЈS     џџџџ           R_TRIG           M             §џ
                 CLK            §џ           Signal to detect       Q            §џ           Edge detected             цЈS     џџџџ           REPLACE               STR1               §џ              STR2               §џ              L           §џ              P           §џ                 REPLACE                                         цЈS     џџџџ           RIGHT               STR               §џ              SIZE           §џ                 RIGHT                                         цЈS     џџџџ           RS               SET            §џ              RESET1            §џ                 Q1            §џ
                       цЈS     џџџџ           SEMA           X             §џ                 CLAIM            §џ	              RELEASE            §џ
                 BUSY            §џ                       цЈS     џџџџ           SR               SET1            §џ              RESET            §џ                 Q1            §џ	                       цЈS     џџџџ           TOF           M             §џ           internal variable 	   StartTime            §џ           internal variable       IN            §џ       ?    starts timer with falling edge, resets timer with rising edge    PT           §џ           time to pass, before Q is set       Q            §џ	       2    is FALSE, PT seconds after IN had a falling edge    ET           §џ
           elapsed time             цЈS     џџџџ           TON           M             §џ           internal variable 	   StartTime            §џ           internal variable       IN            §џ       ?    starts timer with rising edge, resets timer with falling edge    PT           §џ           time to pass, before Q is set       Q            §џ	       0    is TRUE, PT seconds after IN had a rising edge    ET           §џ
           elapsed time             цЈS     џџџџ           TP        	   StartTime            §џ           internal variable       IN            §џ       !    Trigger for Start of the Signal    PT           §џ       '    The length of the High-Signal in 10ms       Q            §џ	           The pulse    ET           §џ
       &    The current phase of the High-Signal             цЈS     џџџџ    R    @                                                                                          LOCALIZATION                	   robotPosX                        е           	   robotPosY                        е              robotPosTheta                        е           	   robotVelX                        е	           	   robotVelY                        е
              robotVelTheta                        е                       цЈS  @   џџџџ           MAIN     @      myROS_connect_receiveData                                        ROS_connect_receiveData     	              myROS_connect_sendData                                        ROS_connect_sendData     
              myROS_disconnect                 ROS_disconnect                   myROS_receiveData                                     ROS_receiveData                   myROS_sendData                   ROS_sendData                   myROS_convertSendData                                       ROS_convertSendData                   ROS_tcpSocketReceiveData              	   T_HSOCKET                   ROS_connectionOpenReceiveData                             ROS_tcpSocketSendData              	   T_HSOCKET                   ROS_connectionOpenSendData                             ROS_closeConnection                            ROS_velAxis1               0                            ROS_velAxis2               0                            ROS_velAxis3               0                            ROS_velAxis4               0                            ROS_RobotPosX               0                            ROS_RobotPosY               0                            ROS_RobotPosTheta               0                            ROS_RobotVelX               0                             ROS_RobotVelY               0              !              ROS_RobotVelTheta               0              "              sendBufferREAL               0              $           
   sendBuffer    Q       Q       %              sendTakt               0              &          #END# ROS variables   state_NC               MoveState_NC     .              Axis1               AXIS_REF     0           
   PowerAxis1                            MC_Power     1           	   MoveAxis1                                 MC_MoveVelocity     2           
   MoveAxis12                                 MC_MoveVelocity     3           
   ResetAxis1                         MC_Reset     4       "    debug function block output data 	   HaltAxis1                              MC_Halt     5              Axis2               AXIS_REF     7           
   PowerAxis2                            MC_Power     8           	   MoveAxis2                                 MC_MoveVelocity     9           
   MoveAxis22                                 MC_MoveVelocity     :           
   ResetAxis2                         MC_Reset     ;       "    debug function block output data 	   HaltAxis2                              MC_Halt     <              Axis3               AXIS_REF     >           
   PowerAxis3                            MC_Power     ?           	   MoveAxis3                                 MC_MoveVelocity     @           
   MoveAxis32                                 MC_MoveVelocity     A           
   ResetAxis3                         MC_Reset     B       "    debug function block output data 	   HaltAxis3                              MC_Halt     C              Axis4               AXIS_REF     E           
   PowerAxis4                            MC_Power     F           	   MoveAxis4                                 MC_MoveVelocity     G           
   MoveAxis42                                 MC_MoveVelocity     H           
   ResetAxis4                         MC_Reset     I       "    debug function block output data 	   HaltAxis4                              MC_Halt     J           	   vel_last1                           L              vel_current1                           M           	   vel_last2                           N              vel_current2                           O           	   vel_last3                           P              vel_current3                           Q           	   vel_last4                           R              vel_current4                           S       6   
###################
ODOMETRY
###################
   fblocalization                    localization     \           	   robotPosX                           ^           	   robotPosY                           _              robotPosTheta                           `           	   robotVelX                           a           	   robotVelY                           b              robotVelTheta                           c                               цЈS  @   џџџџ           ROS_CONNECT_RECEIVEDATA        
   openSocket             З           	   fb_listen                            FB_SocketListen   З           	   fb_accept                            FB_SocketAccept   З          Timers   fbAcceptTON                    TON   З
          TCP socket variables   activeSocketHandle              	   T_HSOCKET   З              socketHandle              	   T_HSOCKET   З          Error variables   listenError            З              acceptError            З              listenErrSet             З           
   closeError            З           	   sendError            З              receiveError            З           
   bSendError             З          Trigger Variables	   bCloseAll            З          Connection information
   portNumber    Ч      З            	   bAccepted             З!       	   Constants   PLCPRJ_ACCEPT_POLLING_TIME    ш      З$              display                         З&              heading                         З'              state            З)              xDist                         З+              yDist                         З,              zDist                         З-           	   listening             З0                     RosConnected            З3              socketToUse              	   T_HSOCKET  З4                       цЈS  @   џџџџ           ROS_CONNECT_SENDDATA        
   openSocket             Л           	   fb_listen                            FB_SocketListen   Л           	   fb_accept                            FB_SocketAccept   Л          Timers   fbAcceptTON                    TON   Л
          TCP socket variables   activeSocketHandle              	   T_HSOCKET   Л              socketHandle              	   T_HSOCKET   Л          Error variables   listenError            Л              acceptError            Л              listenErrSet             Л           
   closeError            Л           	   sendError            Л              receiveError            Л           
   bSendError             Л          Trigger Variables	   bCloseAll            Л          Connection information
   portNumber    Ш      Л            	   bAccepted             Л!       	   Constants   PLCPRJ_ACCEPT_POLLING_TIME    ш      Л$              display                         Л&              heading                         Л'              state            Л)              xDist                         Л+              yDist                         Л,              zDist                         Л-           	   listening             Л0                     RosConnected            Л3              socketToUse              	   T_HSOCKET  Л4                       цЈS  @   џџџџ           ROS_CONVERTSENDDATA           robotPosXsign                         М              robotPosYsign                         М              robotPosThetasign                         М              robotVelXsign                         М              robotVelYsign                         М              robotVelThetasign                         М           
   posXString    Q       Q     М           
   posYString    Q       Q     М              posThetaString    Q       Q     М           
   velXString    Q       Q     М           
   velYString    Q       Q     М              velThetaString    Q       Q     М              robotPosXsignString    Q       Q     М              robotPosYsignString    Q       Q     М              robotPosThetasignString    Q       Q     М              robotVelXsignString    Q       Q     М              robotVelYsignString    Q       Q     М               robotVelThetasignString    Q       Q     М!              	   robotPosX                        М           	   robotPosY                        М              robotPosTheta                        М           	   robotVelX                        М           	   robotVelY                        М              robotVelTheta                        М                 send_message    Q       Q    М                       цЈS  @   џџџџ           ROS_DISCONNECT           fb_closeAll        	               FB_SocketCloseAll   Н	              	   bCloseAll            Н                 connectionClosed            Н                       цЈS  @   џџџџ           ROS_RECEIVEDATA           fbReceiveTON                    TON   О       	   Functions
   fb_receive                           FB_SocketReceive   О       #   Send and receive data and variables   receiveBuffer   	                          О              bytesReceived            О           
   sendBuffer    Q       Q     О              sendBufferAddress            О           
   cbReceived            О              startPos            О              endPos            О              idx            О              cbFrame            О              sFromClient               T_MaxString   О              overflow             О              endFound             О          Error variables   acceptError            О              receiveError            О               state           О"                 socketToUse              	   T_HSOCKET  О                 dataReceived            О              velAxis1                        О              velAxis2                        О              velAxis3                        О	              velAxis4                        О
                       цЈS  @   џџџџ           ROS_SENDDATA           fb_send1                          FB_SocketSend   П
          Send data and variables   sendBufferAddress1            П           
   sendError1            П              
   sendBuffer    Q       Q    П              socketToUse              	   T_HSOCKET  П                           цЈS  @   џџџџ            
 $  єџџџЖ  Х     	   §џџџО      к  л  о  п  К  И  З  й  Н  е  М  Л  П  ( 8     K   F    K   T    K   b    K   w                        +     КЛlocalhost uкпv   lј     `ЙH u`u Ф@u@д јг фе е эрswJ) ўџџџч/ww.wwlј           lј       з Uя    HЖЬд ш,wwPЖF  фе фе u>§ џџџџ    №xІ8е             ,е lј          lј       з Uя з фе Uя Шчbџџџџ№е  я     ,   ,                                                        K         @   цЈSY /*BECKCONFI3*/
        !       @   @           3               
   Standard            	цЈS     ECPL               VAR_GLOBAL
END_VAR
                                                                                  "     0X               Standard
         MAINџџџџ           џџџџ цЈS                 $ћџџџ  @                       ј  )            Standard лvS	лvS      щ   xy                         	цЈS        X)           VAR_CONFIG
END_VAR
                                                                                   '              ,              Globale_Variablen цЈS	цЈS     AYоA O         э   VAR_GLOBAL
	virtuosRobotPosX			AT%I*:	LREAL;
	virtuosRobotPosY			AT%I*:	LREAL;
	virtuosRobotPosTheta		AT%I*:	LREAL;
	virtuosRobotVelX			AT%I*:	LREAL;
	virtuosRobotVelY			AT%I*:	LREAL;
	virtuosRobotVelTheta		AT%I*:	LREAL;
END_VAR
                                                                                               '           Ж  , Џ Џ -           TwinCAT_Configuration цЈS	цЈSЖ    ntt\inT\        C  (* Generated automatically by TwinCAT - (read only) *)
VAR_CONFIG
	.virtuosRobotPosX AT %IB1152 : LREAL;
	.virtuosRobotPosY AT %IB1160 : LREAL;
	.virtuosRobotPosTheta AT %IB1168 : LREAL;
	.virtuosRobotVelX AT %IB1176 : LREAL;
	.virtuosRobotVelY AT %IB1184 : LREAL;
	.virtuosRobotVelTheta AT %IB1192 : LREAL;
END_VAR                                                                                               '           	   ,   ЩP           Variablen_Konfiguration цЈS	цЈS	      Kreurbe        я  VAR_CONFIG
	MAIN.Axis1.PlcToNc AT %QB128 : PLCTONC_AXIS_REF;	(*  ~ {LinkedWith:TINC^NC-Task 1 SAF^Achsen^Achse 1^Eingфnge^Achse 1_FromPlc} *)
	MAIN.Axis1.NcToPlc AT %IB128 : NCTOPLC_AXIS_REF;	(*  ~ {LinkedWith:TINC^NC-Task 1 SAF^Achsen^Achse 1^Ausgфnge^Achse 1_ToPlc} *)
	MAIN.Axis2.PlcToNc AT %QB256 : PLCTONC_AXIS_REF;	(*  ~ {LinkedWith:TINC^NC-Task 1 SAF^Achsen^Achse 2^Eingфnge^Achse 2_FromPlc} *)
	MAIN.Axis2.NcToPlc AT %IB256 : NCTOPLC_AXIS_REF;	(*  ~ {LinkedWith:TINC^NC-Task 1 SAF^Achsen^Achse 2^Ausgфnge^Achse 2_ToPlc} *)
	MAIN.Axis3.PlcToNc AT %QB512 : PLCTONC_AXIS_REF;
	MAIN.Axis3.NcToPlc AT %IB512 : NCTOPLC_AXIS_REF;
	MAIN.Axis4.PlcToNc AT %QB1024 : PLCTONC_AXIS_REF;
	MAIN.Axis4.NcToPlc AT %IB1024 : NCTOPLC_AXIS_REF;
END_VAR
                                                                                                    |0|0 @|    @Z   MS Sans Serif @       HH':'mm':'ss @      dd'-'MM'-'yyyy   dd'-'MM'-'yyyy HH':'mm':'ssѓџџџ                               4     џ   џџџ  Ь3 џџџ   џ џџџ     
    @џ  џџџ     @      DEFAULT             System         |0|0 @|    @Z   MS Sans Serif @       HH':'mm':'ss @      dd'-'MM'-'yyyy   dd'-'MM'-'yyyy HH':'mm':'ssѓџџџ                      )   HH':'mm':'ss @                             dd'-'MM'-'yyyy @       '   Х  , d d            MoveState_NC цЈS	цЈS      9Ѕ Ж §џ        m   TYPE MoveState_NC :
(
	NC_INIT,
	NC_ENABLE,
	NC_MOVE,
	NC_MOVENEXT,
	NC_ERROR,
	NC_RESET
);
END_TYPE              е  , } } ћш           localization цЈS	цЈS      а{HlpTxY        и   FUNCTION_BLOCK localization
VAR_INPUT

END_VAR
VAR_OUTPUT
	robotPosX:	LREAL;
	robotPosY:	LREAL;
	robotPosTheta:	LREAL;
	robotVelX:	LREAL;
	robotVelY:	LREAL;
	robotVelTheta:	LREAL;
END_VAR
VAR


END_VARЮ   robotPosX := virtuosRobotPosX;
robotPosY := virtuosRobotPosY;
robotPosTheta := virtuosRobotPosTheta;
robotVelX := virtuosRobotVelX;
robotVelY := virtuosRobotVelY;
robotVelTheta := virtuosRobotVelTheta;                   , Ћ  )і           MAIN цЈS	цЈS      PШj            р  PROGRAM MAIN
VAR

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

(*
###################
TwinCAT NC Achsen
###################
*)
	state_NC : MoveState_NC;

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

(*Localization var*)
	fblocalization:  localization;

	robotPosX:	LREAL;
	robotPosY:	LREAL;
	robotPosTheta:	LREAL;
	robotVelX:	LREAL;
	robotVelY:	LREAL;
	robotVelTheta:	LREAL;

END_VARJ)  (*
###################
ODOMETRY
###################
*)

fblocalization(robotPosX=>robotPosX, robotPosY=>robotPosY,robotPosTheta=>robotPosTheta, robotVelX=>robotVelX, robotVelY=>robotVelY, robotVelTheta=>robotVelTheta);


(*
###################
ROS TCP/IP CONNECTION

(*
##
## This code was built by Christian Scheifele, University of Stuttgart, 2014.
## It contains complete segments from Chris Jarrett, Auckland University, 2014
## and is derived in part from the TCP/IP server example on www.beckhoff.com
##
*)
###################
*)

(*Close TCP port from last time-remove after DEBUG*)
IF ROS_closeConnection THEN
	myROS_disconnect(bCloseAll:=ROS_closeConnection);
	ROS_closeConnection:=FALSE;
END_IF

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
ROS_RobotPosX := robotPosX;
ROS_RobotPosY := robotPosY;
ROS_RobotPosTheta := robotPosTheta;
ROS_RobotVelX := RobotVelX;
ROS_RobotVelY := RobotVelY;
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


(*
###################
TwinCAT NC Achsen

(*
##
## This code was built by Christian Scheifele, University of Stuttgart, 2014.
## It contains complete segments  from the examples on www.beckhoff.com
##
*)
###################
*)
Axis1.ReadStatus;
Axis2.ReadStatus;
Axis3.ReadStatus;
Axis4.ReadStatus;

vel_current1 := ROS_velAxis1;
vel_current2 := -ROS_velAxis2;
vel_current3 := ROS_velAxis3;
vel_current4 := -ROS_velAxis4;

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

 к  , Џ Џ -           ActHaltAxis1 цЈS      	HaltAxis1     AAxis1MC_Halt               d   л  ,   ~Ц           ActHaltAxis2 цЈS      	HaltAxis2     AAxis2MC_Halt               d   о  , 2 2 п           ActHaltAxis3 цЈS      	HaltAxis3     AAxis3MC_Halt               d   п  ,     e­           ActHaltAxis4 цЈS      	HaltAxis4     AAxis4MC_Halt               d   й  ,   ћC           ActMove цЈS      	MoveAxis1        AAxis1MC_MoveVelocity                    	MoveAxis2        AAxis2MC_MoveVelocity                    	MoveAxis4        AAxis4MC_MoveVelocity                    	MoveAxis3        AAxis3MC_MoveVelocity                    
MoveAxis12        AAxis1MC_MoveVelocity                    
MoveAxis22        AAxis2MC_MoveVelocity                    
MoveAxis32        AAxis3MC_MoveVelocity                    
MoveAxis42        AAxis4MC_MoveVelocity               d   И  ,              ActPower цЈS      
PowerAxis1   100 AAxis1MC_Power                  
PowerAxis2   100 AAxis2MC_Power                  
PowerAxis4   100 AAxis4MC_Power                  
PowerAxis3   100 AAxis3MC_Power             d   К  ,     ~k           ActReset цЈS      
ResetAxis1 AAxis1MC_Reset                
ResetAxis2 AAxis2MC_Reset                
ResetAxis3 AAxis2MC_Reset                
ResetAxis4 AAxis2MC_Reset           d                З  , 2 2 А           ROS_connect_receiveData цЈS	цЈS       §џ          R  FUNCTION_BLOCK ROS_connect_receiveData
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

END_CASE;               Л  ,   С           ROS_connect_sendData цЈS	цЈS      иXНРg        O  FUNCTION_BLOCK ROS_connect_sendData
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

END_CASE;               М  ,              ROS_convertSendData цЈS	цЈS      UшVxhЏ        л  FUNCTION_BLOCK ROS_convertSendData
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
	robotPosXsign: LREAL;
	robotPosYsign: LREAL;
	robotPosThetasign: LREAL;
	robotVelXsign: LREAL;
	robotVelYsign: LREAL;
	robotVelThetasign: LREAL;

	posXString: STRING;
	posYString: STRING;
	posThetaString: STRING;
	velXString: STRING;
	velYString: STRING;
	velThetaString: STRING;

	robotPosXsignString: STRING;
	robotPosYsignString: STRING;
	robotPosThetasignString: STRING;
	robotVelXsignString: STRING;
	robotVelYsignString: STRING;
	robotVelThetasignString: STRING;
END_VARч  (*
##
## This code was built by Christian Scheifele, University of Stuttgart, 2014.
##
*)


IF robotPosX >= 0 THEN
robotPosXsign := 0;
ELSE
robotPosXsign := 1;
robotPosX := robotPosX  * (-1);
END_IF;

IF robotPosY >= 0 THEN
robotPosYsign := 0;
ELSE
robotPosYsign := 1;
robotPosY := robotPosY  * (-1);
END_IF;

IF robotPosTheta >= 0 THEN
robotPosThetasign := 0;
ELSE
robotPosThetasign := 1;
robotPosTheta := robotPosTheta  * (-1);
END_IF;

IF robotVelX >= 0 THEN
robotVelXsign := 0;
ELSE
robotVelXsign := 1;
robotVelX := robotVelX  * (-1);
END_IF;

IF robotVelY >= 0 THEN
robotVelYsign := 0;
ELSE
robotVelYsign := 1;
robotVelY := robotVelY  * (-1);
END_IF;

IF robotVelTheta >= 0 THEN
robotVelThetasign := 0;
ELSE
robotVelThetasign := 1;
robotVelTheta := robotVelTheta  * (-1);
END_IF;

(* Eingangsdaten verarbeiten *)
posXString := LREAL_TO_STRING(robotPosX*10);
posYString := LREAL_TO_STRING(robotPosY*10);
posThetaString := LREAL_TO_STRING(robotPosTheta*100);
velXString := LREAL_TO_STRING(robotVelX*10);
velYString := LREAL_TO_STRING(robotVelY*10);
velThetaString := LREAL_TO_STRING(robotVelTheta*100);

robotPosXsignString := LREAL_TO_STRING(robotPosXsign);
robotPosYsignString := LREAL_TO_STRING(robotPosYsign);
robotPosThetasignString := LREAL_TO_STRING(robotPosThetasign);
robotVelXsignString := LREAL_TO_STRING(robotVelXsign);
robotVelYsignString := LREAL_TO_STRING(robotVelYsign);
robotVelThetasignString := LREAL_TO_STRING(robotVelThetasign);

(* posXString bearbeiten *)
posXString := LEFT(posXString, FIND(posXString, '.')-1);
IF LEN(posXString) < 7 THEN
posXString := INSERT(posXString, '0000000',0 );
posXString := RIGHT(posXString, 7);
END_IF;

(* posYString bearbeiten *)
posYString := LEFT(posYString, FIND(posYString, '.')-1);
IF LEN(posYString) < 7 THEN
posYString := INSERT(posYString, '0000000',0 );
posYString := RIGHT(posYString, 7);
END_IF;

(* posThetaString bearbeiten *)
posThetaString := LEFT(posThetaString, FIND(posThetaString, '.')-1);
IF LEN(posThetaString) < 7 THEN
posThetaString := INSERT(posThetaString, '0000000',0 );
posThetaString := RIGHT(posThetaString, 7);
END_IF;

(* velXString bearbeiten *)
velXString := LEFT(velXString, FIND(velXString, '.')-1);
IF LEN(velXString) < 7 THEN
velXString := INSERT(velXString, '0000000',0 );
velXString := RIGHT(velXString, 7);
END_IF;

(* velYString bearbeiten *)
velYString := LEFT(velYString, FIND(velYString, '.')-1);
IF LEN(velYString) < 7 THEN
velYString := INSERT(velYString, '0000000',0 );
velYString := RIGHT(velYString, 7);
END_IF;

(* velThetaString bearbeiten *)
velThetaString := LEFT(velThetaString, FIND(velThetaString, '.')-1);
IF LEN(velThetaString) < 7 THEN
velThetaString := INSERT(velThetaString, '0000000',0 );
velThetaString := RIGHT(velThetaString, 7);
END_IF;

(*bearbeiten *)
robotPosXsignString := LEFT(robotPosXsignString, FIND(robotPosXsignString, '.')-1);
robotPosYsignString := LEFT(robotPosYsignString, FIND(robotPosYsignString, '.')-1);
robotPosThetasignString := LEFT(robotPosThetasignString, FIND(robotPosThetasignString, '.')-1);
robotVelXsignString := LEFT(robotVelXsignString, FIND(robotVelXsignString, '.')-1);
robotVelYsignString := LEFT(robotVelYsignString, FIND(robotVelYsignString, '.')-1);
robotVelThetasignString := LEFT(robotVelThetasignString, FIND(robotVelThetasignString, '.')-1);

(*CONCAT*)
send_message := CONCAT (posXString, posYString);
send_message := CONCAT (send_message, posThetaString);
send_message := CONCAT (send_message, velXString);
send_message := CONCAT (send_message, velYString);
send_message := CONCAT (send_message, velThetaString);
send_message := CONCAT (send_message, robotPosXsignString);
send_message := CONCAT (send_message, robotPosYsignString);
send_message := CONCAT (send_message, robotPosThetasignString);
send_message := CONCAT (send_message, robotVelXsignString);
send_message := CONCAT (send_message, robotVelYsignString);
send_message := CONCAT (send_message, robotVelThetasignString);               Н  , Џ Џ к0           ROS_disconnect цЈS	цЈS      `R ќШ8јV        Ѓ   FUNCTION_BLOCK ROS_disconnect
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
RETURN;               О  , K K ЩЖ           ROS_receiveData цЈS	цЈS      07P(G(Х        Ѕ  FUNCTION_BLOCK ROS_receiveData
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
END_VARЂ  (*
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
END_CASE;               П  , 2 2 ћ           ROS_sendData цЈS	цЈS      оxт`ЉШ        ў   FUNCTION_BLOCK ROS_sendData
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
	fb_send1( bExecute := FALSE );                 §џџџ,     А7             TcpIp.lib 21.3.13 07:03:14 @ђJQ!   TcBase.lib 14.5.09 11:14:08 @@TJ#   TcSystem.lib 27.2.12 14:08:36 @ЄхJO%   TcBaseMath.lib 27.7.04 11:07:56 @ЬA!   TcMath.lib 23.9.04 14:15:30 @Т1RA!   TcMC2.lib 22.11.13 15:10:22 @ЫR"   STANDARD.LIB 5.6.98 11:03:02 @І'w5      F_GetVersionTcpIp @      E_WinsockError       ST_SockAddr       ST_TcIpConnSvrResponse       ST_TcIpConnSvrUdpBuffer    	   T_HSOCKET                  FB_SocketAccept @          FB_SocketClose @          FB_SocketCloseAll @          FB_SocketConnect @          FB_SocketListen @          FB_SocketReceive @          FB_SocketSend @       %   FB_SocketUdpAddMulticastAddress @          FB_SocketUdpCreate @       &   FB_SocketUdpDropMulticastAddress @          FB_SocketUdpReceiveFrom @          FB_SocketUdpSendTo @             Global_Variables @          z   FW_AdsClearEvents @      FW_NoOfByte       FW_SystemInfoType       FW_SystemTaskInfoType    
   FW_TcEvent                   FW_AdsLogDINT @           FW_AdsLogEvent @           FW_AdsLogLREAL @           FW_AdsLogSTR @           FW_AdsRdWrt @           FW_AdsRdWrtInd @           FW_AdsRdWrtRes @           FW_AdsRead @           FW_AdsReadDeviceInfo @           FW_AdsReadInd @           FW_AdsReadRes @           FW_AdsReadState @           FW_AdsWrite @           FW_AdsWriteControl @           FW_AdsWriteInd @           FW_AdsWriteRes @           FW_DRand @           FW_GetCpuAccount @           FW_GetCpuCounter @           FW_GetCurTaskIndex @           FW_GetSystemTime @           FW_GetVersionTcBase @           FW_LptSignal @           FW_MemCmp @           FW_MemCpy @           FW_MemMove @           FW_MemSet @           FW_PortRead @          FW_PortWrite @           P   Q  ADSCLEAREVENTS @      E_IOAccessSize    
   E_OpenPath       E_SeekOrigin       E_TcEventClass       E_TcEventClearModes       E_TcEventPriority       E_TcEventStreamType       ExpressionResult       SFCActionType       SFCStepType       ST_AdsBaDevApiHead       ST_AdsBaDevApiIoCtlModifier       ST_AdsBaDevApiReq    
   ST_AmsAddr       ST_StructMemberAlignmentProbe       SYSTEMINFOTYPE       SYSTEMTASKINFOTYPE    
   T_AmsNetId       T_AmsNetIdArr    	   T_AmsPort    
   T_IPv4Addr       T_IPv4AddrArr       T_MaxString       T_U64KAFFINITY       TcEvent                   ADSLOGDINT @           ADSLOGEVENT @           ADSLOGLREAL @           ADSLOGSTR @           ADSRDDEVINFO @           ADSRDSTATE @           ADSRDWRT @           ADSRDWRTEX @           ADSRDWRTIND @           ADSRDWRTRES @           ADSREAD @           ADSREADEX @           ADSREADIND @           ADSREADRES @           ADSWRITE @           ADSWRITEIND @           ADSWRITERES @           ADSWRTCTL @           AnalyzeExpression @          AnalyzeExpressionCombined @          AnalyzeExpressionTable @          AppendErrorString @          BAVERSION_TO_DWORD @          CLEARBIT32 @           CSETBIT32 @           DRAND @           F_CompareFwVersion @          F_CreateAmsNetId @           F_CreateIPv4Addr @           F_GetStructMemberAlignment @          F_GetVersionTcSystem @           F_IOPortRead @          F_IOPortWrite @          F_ScanAmsNetIds @          F_ScanIPv4AddrIds @          F_SplitPathName @          F_ToASC @          F_ToCHR @          FB_BaDeviceIoControl @          FB_BaGenGetVersion @          FB_CreateDir @          FB_EOF @           FB_FileClose @           FB_FileDelete @           FB_FileGets @           FB_FileOpen @           FB_FilePuts @           FB_FileRead @           FB_FileRename @           FB_FileSeek @           FB_FileTell @           FB_FileWrite @           FB_PcWatchdog @          FB_RemoveDir @          FB_SimpleAdsLogEvent @          FILECLOSE @           FILEOPEN @           FILEREAD @           FILESEEK @           FILEWRITE @           FW_CallGenericFb @          FW_CallGenericFun @          GETBIT32 @           GETCPUACCOUNT @           GETCPUCOUNTER @           GETCURTASKINDEX @           GETSYSTEMTIME @           GETTASKTIME @          LPTSIGNAL @           MEMCMP @           MEMCPY @           MEMMOVE @           MEMSET @           ROL32 @           ROR32 @           SETBIT32 @           SFCActionControl @           SHL32 @           SHR32 @              Global_Variables @              FW_Floor @                  FW_LrealFrac @          FW_LrealModP @          FW_LrealTrunc @                  F_GetVersionTcMath @                   FLOOR @       
   FRAC @       
   LMOD @          LTRUNC @          MODABS @          MODTURNS @           ~   Л
  _F_AxisState @_      _E_ParameterType       _E_ReadWriteParameterMode       _E_TcMC_STATES       _E_TcNC_CmdState        _E_TcNC_CmdTypeNewTargPosAndVelo       _E_TcNC_PosSetType       _E_TcNC_ServoState       _E_TcNC_SlaveTypes       _E_TcNC_StartPosType       _E_TcNC_TargPosType       _E_TouchProbeState       _InternalAxisRefData       _ST_FunctionBlockResults       _ST_NCADS_Axis       _ST_NCADS_AxisFunctions       _ST_NCADS_AxisParameter       _ST_NCADS_AxisState       _ST_NCADS_IDXOFFS_AxisFunctions       _ST_NCADS_IDXOFFS_AxisParameter       _ST_NCADS_IDXOFFS_AxisState        _ST_NCADS_IDXOFFS_TableFunctions        _ST_NCADS_IDXOFFS_TableParameter       _ST_NCADS_Table       _ST_NCADS_TableFunctions       _ST_NCADS_TableParameter       _ST_ParaStruct       _ST_TcNC_Compensation2       _ST_TcNC_CoupleSlave       _ST_TcNC_CoupleSlaveMultiMaster        _ST_TcNC_CoupleSlaveMultiMaster2       _ST_TcNC_DecoupleSlave       _ST_TcNc_OperationModes       _ST_TcNC_PhasingRequest        _ST_TcNC_SetEncoderSaclingFactor       _ST_TcNC_SetPos       _ST_TcNC_SetPosOnTheFly       _ST_TcNC_StopInfoRequest       _ST_TcNC_StopInfoResponse       _ST_TcNc_TouchProbeActivation       _ST_TcNc_TouchProbeDeactivation        _ST_TcNc_TouchProbeStatusRequest    !   _ST_TcNc_TouchProbeStatusResponse    !   _ST_TcNC_UnversalAxisStartRequest    "   _ST_TcNC_UnversalAxisStartResponse       AXIS_REF       E_AxisErrorCodes       E_AxisPositionCorrectionMode       E_DestallDetectMode       E_DestallMode       E_DisableMode    	   E_JogMode       E_PhasingType       E_PositionType    
   E_ReadMode       E_SetScalingFactorMode       E_SignalEdge       E_SignalSource       E_SuperpositionAbortOption       E_SuperpositionMode       E_TouchProbe       E_TouchProbeMode       E_WorkDirection       MC_AxisParameter       MC_AxisStates       MC_BufferMode       MC_Direction       MC_HomingMode       MC_TouchProbeRecordedData       NCTOPLC_AXIS_REF       PLCTONC_AXIS_REF       ST_AdsAddress       ST_AxisComponents       ST_AxisOpModes       ST_AxisParameterSet       ST_AxisStatus       ST_BacklashCompensationOptions       ST_DriveAddress       ST_GearInDynOptions       ST_GearInMultiMasterOptions       ST_GearInOptions       ST_GearOutOptions       ST_HomingOptions       ST_McOutputs       ST_MoveOptions       ST_NcApplicationRequest       ST_PhasingOptions       ST_PositionCompensationOptions    #   ST_PositionCompensationTableElement    %   ST_PositionCompensationTableParameter       ST_PowerStepperStruct       ST_SetEncoderScalingOptions       ST_SetPositionOptions       ST_SuperpositionOptions       ST_TableCharacValues       TRIGGER_REF                  _F_GetIndexGroup @          _F_NcCycleCounterUpdated @          _F_ReadStatus @          _F_TcMC_DWORD_TO_HEXSTR @          _F_TcMC_Round @          _F_UpdateNcCycleCounter @          _FB_MoveUniversalGeneric @       /   _FB_MoveUniversalGeneric.ActCalcDiffCmdNo @       .   _FB_MoveUniversalGeneric.ActErrorMessage @       8   _FB_MoveUniversalGeneric.ActMonitorContinousMotion @       7   _FB_MoveUniversalGeneric.ActMonitorDiscreteMotion @       -   _FB_MoveUniversalGeneric.ActMonitorStop @       0   _FB_MoveUniversalGeneric.ActNcCycleCounter @          _FB_PhasingGeneric @       '   _FB_PositionCorrectionTableLookup @       B   _FB_PositionCorrectionTableLookup.ActIsCompensationDirection @          _FB_ReadWriteParameter @          _FBAXIS_REF @          _FBAXIS_REF.ReadStatus @          _MC_HaltPhasing @          _MC_PhasingAbsolute @          _MC_PhasingRelative @          _TcMC_ADSRDWRT @          _TcMC_ADSREAD @          _TcMC_ADSWRITE @          _TCMCGLOBAL @           _TCMCGLOBAL.ReadDeviceInfo @          F_AxisCamDataQueued @          F_AxisCamScalingPending @          F_AxisCamTableQueued @          F_AxisControlLoopClosed @          F_AxisExternalLatchValid @           F_AxisGotNewTargetPosition @          F_AxisHasBeenStopped @          F_AxisHasExtSetPointGen @          F_AxisHasJob @          F_AxisInErrorState @          F_AxisInPositionWindow @          F_AxisInProtectedMode @          F_AxisInPTPmode @          F_AxisIoDataIsInvalid @          F_AxisIsAtTargetPosition @          F_AxisIsCalibrated @          F_AxisIsCalibrating @          F_AxisIsCompensating @          F_AxisIsCoupled @          F_AxisIsMoving @          F_AxisIsMovingBackwards @          F_AxisIsMovingEndless @          F_AxisIsMovingForward @          F_AxisIsNotMoving @          F_AxisIsReady @          F_AxisJobPending @           F_AxisMotionCommandsLocked @          F_AxisPhasingActive @       #   F_AxisReachedConstantVelocity @          F_GetVersion_TcMC2 @          MC_AbortSuperposition @          MC_AbortTrigger @          MC_AbortTrigger_V2_00 @          MC_BacklashCompensation @          MC_ExtSetPointGenDisable @          MC_ExtSetPointGenEnable @          MC_ExtSetPointGenFeed @          MC_GearIn @          MC_GearIn.ActGearInDyn @          MC_GearIn.WriteGearRatio @          MC_GearInDyn @          MC_GearInMultiMaster @       1   MC_GearInMultiMaster.ActGearInMultiMasterV1 @       1   MC_GearInMultiMaster.ActGearInMultiMasterV2 @          MC_GearOut @          MC_Halt @          MC_Home @          MC_Jog @          MC_Jog.ActCheckJogEnd @          MC_Jog.ActJogMove @          MC_MoveAbsolute @          MC_MoveAdditive @          MC_MoveContinuousAbsolute @          MC_MoveContinuousRelative @          MC_MoveModulo @       %   MC_MoveModulo.MC_MoveModuloCall @          MC_MoveRelative @          MC_MoveSuperImposed @          MC_MoveVelocity @          MC_OverrideFilter @       "   MC_PositionCorrectionLimiter @          MC_Power @          MC_PowerStepper @          MC_ReadActualPosition @          MC_ReadActualVelocity @          MC_ReadApplicationRequest @          MC_ReadAxisComponents @          MC_ReadAxisError @          MC_ReadBoolParameter @          MC_ReadDriveAddress @          MC_ReadParameter @          MC_ReadParameterSet @       2   MC_ReadParameterSet.ActGetSizeOfParameterSet @          MC_ReadStatus @          MC_ReadStopInfo @          MC_Reset @       $   MC_SetAcceptBlockedDriveSignal @           MC_SetEncoderScalingFactor @          MC_SetOverride @          MC_SetPosition @          MC_Stop @          MC_Stop.ActStop @       '   MC_TableBasedPositionCompensation @          MC_TouchProbe @       )   MC_TouchProbe.ActTouchProbeActivate @       0   MC_TouchProbe.ActTouchProbeMonitorActivity @       2   MC_TouchProbe.ActTouchProbeMonitorLatchValid @       0   MC_TouchProbe.ActTouchProbeMonitorPlcEvent @       ,   MC_TouchProbe.ActTouchProbeStartupInit @          MC_TouchProbe_V2_00 @       /   MC_TouchProbe_V2_00.ActTouchProbeActivate @       6   MC_TouchProbe_V2_00.ActTouchProbeMonitorActivity @       1   MC_TouchProbe_V2_00.ActTouchProbeMonitoring @       8   MC_TouchProbe_V2_00.ActTouchProbeMonitorLatchValid @       6   MC_TouchProbe_V2_00.ActTouchProbeMonitorPlcEvent @       2   MC_TouchProbe_V2_00.ActTouchProbeStartupInit @          MC_WriteBoolParameter @          MC_WriteParameter @             TcMC_GlobalConstants @             CONCAT @                	   CTD @        	   CTU @        
   CTUD @           DELETE @           F_TRIG @        
   FIND @           INSERT @        
   LEFT @        	   LEN @        	   MID @           R_TRIG @           REPLACE @           RIGHT @           RS @        
   SEMA @           SR @        	   TOF @        	   TON @           TP @              Global Variables 0 @                                             2                џџџџџџџџџџџџџџџџ  
             њџџџ  PPјPhQ        јџџџ, Џ Џ \                   	   Bausteine                 localization  е                 MAIN                ActHaltAxis1  к                 ActHaltAxis2  л                 ActHaltAxis3  о                 ActHaltAxis4  п                 ActMove  й                 ActPower  И                 ActReset  К                      ROS_connect_receiveData  З                  ROS_connect_sendData  Л                  ROS_convertSendData  М                  ROS_disconnect  Н                  ROS_receiveData  О                 ROS_sendData  П  џџџџ           
   Datentypen                MoveState_NC  Х  џџџџ             Visualisierungen  џџџџ              Globale Variablen                 Globale_Variablen                     TwinCAT_Configuration  Ж                  Variablen_Konfiguration  	   џџџџ                                                            лvS                         	   localhost            P      	   localhost            P      	   localhost            P          sRSЛ