.class public Lcom/iot/engine/WifiAPController;
.super Landroid/app/Activity;
.source "WifiAPController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iot/engine/WifiAPController$wifiControllerTask;
    }
.end annotation


# static fields
.field private static g:I

.field private static h:I

.field private static i:I

.field private static j:I


# instance fields
.field public APname:Ljava/lang/String;

.field public a:I

.field public b:I

.field private logTAG:Ljava/lang/String;

.field private o:Z

.field public password:Ljava/lang/String;

.field private wifiManager:Landroid/net/wifi/WifiManager;

.field private wifiState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 101
    sput v0, Lcom/iot/engine/WifiAPController;->g:I

    .line 102
    sput v0, Lcom/iot/engine/WifiAPController;->h:I

    .line 103
    const/4 v0, 0x1

    sput v0, Lcom/iot/engine/WifiAPController;->i:I

    .line 104
    const/4 v0, 0x4

    sput v0, Lcom/iot/engine/WifiAPController;->j:I

    .line 105
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 107
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 108
    const/4 v0, 0x2

    iput v0, p0, Lcom/iot/engine/WifiAPController;->a:I

    .line 109
    const/4 v0, 0x3

    iput v0, p0, Lcom/iot/engine/WifiAPController;->b:I

    .line 110
    const-string v0, "WifiAP"

    iput-object v0, p0, Lcom/iot/engine/WifiAPController;->logTAG:Ljava/lang/String;

    .line 111
    const/4 v0, -0x1

    iput v0, p0, Lcom/iot/engine/WifiAPController;->wifiState:I

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iot/engine/WifiAPController;->o:Z

    .line 113
    return-void
.end method

.method private initWifiAPConfig(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .param p1, "wifiConfiguration"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v1, 0x0

    .line 121
    iget-object v0, p0, Lcom/iot/engine/WifiAPController;->APname:Ljava/lang/String;

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 122
    iget-object v0, p0, Lcom/iot/engine/WifiAPController;->password:Ljava/lang/String;

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 123
    iput-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 124
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 125
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 126
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 127
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 128
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 129
    return-void
.end method

.method static wifiToggle(Lcom/iot/engine/WifiAPController;Z)I
    .locals 1
    .param p0, "wifiAPController"    # Lcom/iot/engine/WifiAPController;
    .param p1, "wifiToggleFlag"    # Z

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/iot/engine/WifiAPController;->wifiToggle(Z)I

    move-result v0

    return v0
.end method

.method private wifiToggle(Z)I
    .locals 19
    .param p1, "wifiToggleFlag"    # Z

    .prologue
    .line 134
    const-wide/16 v8, 0x1f4

    .line 135
    .local v8, "sleepTimeout":J
    const/16 v4, 0x1e

    .line 136
    .local v4, "maxAttemptCount":I
    const/4 v3, -0x1

    .line 137
    .local v3, "errorState":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iot/engine/WifiAPController;->logTAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "*** setWifiApEnabled CALLED **** "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    new-instance v11, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v11}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 139
    .local v11, "wifiConfiguration":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/iot/engine/WifiAPController;->initWifiAPConfig(Landroid/net/wifi/WifiConfiguration;)V

    .line 141
    if-eqz p1, :cond_0

    move-object/from16 v0, p0

    iget v12, v0, Lcom/iot/engine/WifiAPController;->wifiState:I

    if-ne v12, v3, :cond_0

    .line 142
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iot/engine/WifiAPController;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/iot/engine/WifiAPController;->wifiState:I

    .line 145
    :cond_0
    if-eqz p1, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iot/engine/WifiAPController;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v12

    if-eqz v12, :cond_2

    .line 146
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iot/engine/WifiAPController;->logTAG:Ljava/lang/String;

    const-string v13, "disable wifi: calling"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iot/engine/WifiAPController;->wifiManager:Landroid/net/wifi/WifiManager;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 148
    move v2, v4

    .line 150
    .local v2, "attemptCount":I
    :goto_0
    if-lez v2, :cond_1

    .line 151
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iot/engine/WifiAPController;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_7

    .line 167
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iot/engine/WifiAPController;->logTAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "disable wifi: done, pass: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    rsub-int/lit8 v14, v2, 0xa

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    .end local v2    # "attemptCount":I
    :cond_2
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    .local v5, "message":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_8

    const-string v7, "enabling"

    .line 173
    .local v7, "stateString":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iot/engine/WifiAPController;->logTAG:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " wifi ap: calling"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iot/engine/WifiAPController;->logTAG:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iot/engine/WifiAPController;->APname:Ljava/lang/String;

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iot/engine/WifiAPController;->logTAG:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/iot/engine/WifiAPController;->password:Ljava/lang/String;

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iot/engine/WifiAPController;->logTAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/iot/engine/WifiAPController;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    const-string v15, "setWifiApEnabled"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-class v18, Landroid/net/wifi/WifiConfiguration;

    aput-object v18, v16, v17

    const/16 v17, 0x1

    sget-object v18, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v18, v16, v17

    invoke-virtual/range {v14 .. v16}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/iot/engine/WifiAPController;->wifiManager:Landroid/net/wifi/WifiManager;

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v11, v16, v17

    const/16 v17, 0x1

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-virtual/range {v14 .. v16}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iot/engine/WifiAPController;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v12, v11}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v6

    .line 178
    .local v6, "res":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iot/engine/WifiAPController;->logTAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iot/engine/WifiAPController;->logTAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/iot/engine/WifiAPController;->wifiState:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    .end local v5    # "message":Ljava/lang/StringBuilder;
    .end local v6    # "res":I
    .end local v7    # "stateString":Ljava/lang/String;
    :goto_2
    if-lez v4, :cond_3

    .line 189
    invoke-virtual/range {p0 .. p0}, Lcom/iot/engine/WifiAPController;->wifiToggle()I

    move-result v12

    sget v13, Lcom/iot/engine/WifiAPController;->h:I

    if-eq v12, v13, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/iot/engine/WifiAPController;->wifiToggle()I

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/iot/engine/WifiAPController;->b:I

    if-eq v12, v13, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/iot/engine/WifiAPController;->wifiToggle()I

    move-result v12

    sget v13, Lcom/iot/engine/WifiAPController;->j:I

    if-eq v12, v13, :cond_9

    .line 203
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 204
    .restart local v5    # "message":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_b

    const-string v7, "enabling"

    .line 205
    .restart local v7    # "stateString":Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iot/engine/WifiAPController;->logTAG:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " wifi ap: done, pass: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    rsub-int/lit8 v14, v4, 0xa

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    if-nez p1, :cond_c

    .line 208
    move-object/from16 v0, p0

    iget v12, v0, Lcom/iot/engine/WifiAPController;->wifiState:I

    const/4 v13, 0x2

    if-lt v12, v13, :cond_4

    move-object/from16 v0, p0

    iget v12, v0, Lcom/iot/engine/WifiAPController;->wifiState:I

    const/4 v13, 0x4

    if-le v12, v13, :cond_5

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/iot/engine/WifiAPController;->o:Z

    if-eqz v12, :cond_6

    .line 210
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iot/engine/WifiAPController;->logTAG:Ljava/lang/String;

    const-string v13, "enable wifi: calling"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iot/engine/WifiAPController;->wifiManager:Landroid/net/wifi/WifiManager;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 214
    :cond_6
    move-object/from16 v0, p0

    iput v3, v0, Lcom/iot/engine/WifiAPController;->wifiState:I

    .line 215
    move-object/from16 v0, p0

    iget v12, v0, Lcom/iot/engine/WifiAPController;->wifiState:I

    .line 218
    :goto_4
    return v12

    .line 156
    .end local v5    # "message":Ljava/lang/StringBuilder;
    .end local v7    # "stateString":Ljava/lang/String;
    .restart local v2    # "attemptCount":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iot/engine/WifiAPController;->logTAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "disable wifi: waiting, pass: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    rsub-int/lit8 v14, v2, 0xa

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :try_start_1
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 160
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_0

    .line 172
    .end local v2    # "attemptCount":I
    .restart local v5    # "message":Ljava/lang/StringBuilder;
    :cond_8
    :try_start_2
    const-string v7, "disabling"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 182
    .end local v5    # "message":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v10

    .line 183
    .local v10, "v0_1":Ljava/lang/Exception;
    const-string v12, "wifi"

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    move-object/from16 v0, p0

    iput v3, v0, Lcom/iot/engine/WifiAPController;->wifiState:I

    goto/16 :goto_2

    .line 192
    .end local v10    # "v0_1":Ljava/lang/Exception;
    :cond_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    .restart local v5    # "message":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_a

    const-string v7, "enabling"

    .line 194
    .restart local v7    # "stateString":Ljava/lang/String;
    :goto_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/iot/engine/WifiAPController;->logTAG:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " wifi ap: waiting, pass: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    rsub-int/lit8 v14, v4, 0xa

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const-wide/16 v8, 0x1f4

    .line 197
    :try_start_3
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 198
    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_2

    .line 193
    .end local v7    # "stateString":Ljava/lang/String;
    :cond_a
    const-string v7, "disabling"

    goto :goto_5

    .line 204
    :cond_b
    const-string v7, "disabling"

    goto/16 :goto_3

    .line 218
    .restart local v7    # "stateString":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget v12, v0, Lcom/iot/engine/WifiAPController;->wifiState:I

    goto :goto_4

    .line 162
    .end local v5    # "message":Ljava/lang/StringBuilder;
    .end local v7    # "stateString":Ljava/lang/String;
    .restart local v2    # "attemptCount":I
    :catch_1
    move-exception v12

    goto/16 :goto_0

    .line 199
    .end local v2    # "attemptCount":I
    .restart local v5    # "message":Ljava/lang/StringBuilder;
    .restart local v7    # "stateString":Ljava/lang/String;
    :catch_2
    move-exception v12

    goto/16 :goto_2
.end method


# virtual methods
.method public turnOffHotspot()V
    .locals 10

    .prologue
    const/4 v4, 0x0

    .line 270
    :try_start_0
    iget-object v5, p0, Lcom/iot/engine/WifiAPController;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    .line 271
    .local v3, "wmMethods":[Ljava/lang/reflect/Method;
    new-instance v2, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v2}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 273
    .local v2, "wifiConfiguration":Landroid/net/wifi/WifiConfiguration;
    array-length v5, v3

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v1, v3, v4

    .line 274
    .local v1, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "setWifiApEnabled"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    if-eqz v6, :cond_0

    .line 276
    :try_start_1
    iget-object v6, p0, Lcom/iot/engine/WifiAPController;->wifiManager:Landroid/net/wifi/WifiManager;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v1, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 273
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 287
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v1    # "method":Ljava/lang/reflect/Method;
    .end local v2    # "wifiConfiguration":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "wmMethods":[Ljava/lang/reflect/Method;
    :catch_1
    move-exception v0

    .line 289
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "Hotspot"

    const-string v5, "Hotspot turn off"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return-void

    .line 280
    .restart local v1    # "method":Ljava/lang/reflect/Method;
    .restart local v2    # "wifiConfiguration":Landroid/net/wifi/WifiConfiguration;
    .restart local v3    # "wmMethods":[Ljava/lang/reflect/Method;
    :catch_2
    move-exception v0

    .line 281
    .local v0, "e":Ljava/lang/IllegalAccessException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 282
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 283
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1
.end method

.method public wifiToggle()I
    .locals 6

    .prologue
    .line 223
    const/16 v2, 0xa

    .line 226
    .local v2, "v4":I
    :try_start_0
    iget-object v3, p0, Lcom/iot/engine/WifiAPController;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getWifiApState"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iget-object v4, p0, Lcom/iot/engine/WifiAPController;->wifiManager:Landroid/net/wifi/WifiManager;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 231
    .local v0, "result":I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 232
    sput v2, Lcom/iot/engine/WifiAPController;->g:I

    .line 235
    :cond_0
    sget v3, Lcom/iot/engine/WifiAPController;->g:I

    sput v3, Lcom/iot/engine/WifiAPController;->h:I

    .line 236
    sget v3, Lcom/iot/engine/WifiAPController;->g:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/iot/engine/WifiAPController;->i:I

    .line 237
    sget v3, Lcom/iot/engine/WifiAPController;->g:I

    add-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/iot/engine/WifiAPController;->a:I

    .line 238
    sget v3, Lcom/iot/engine/WifiAPController;->g:I

    add-int/lit8 v3, v3, 0x3

    iput v3, p0, Lcom/iot/engine/WifiAPController;->b:I

    .line 239
    sget v3, Lcom/iot/engine/WifiAPController;->g:I

    add-int/lit8 v3, v3, 0x4

    sput v3, Lcom/iot/engine/WifiAPController;->j:I

    .line 240
    return v0

    .line 227
    .end local v0    # "result":I
    :catch_0
    move-exception v1

    .line 228
    .local v1, "v0":Ljava/lang/Exception;
    const/4 v0, -0x1

    .restart local v0    # "result":I
    goto :goto_0
.end method

.method public wifiToggle(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 245
    iget-object v0, p0, Lcom/iot/engine/WifiAPController;->password:Ljava/lang/String;

    const-string v1, "12345678"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    :cond_0
    return-void
.end method

.method public wifiToggle(Ljava/lang/String;Ljava/lang/String;Landroid/net/wifi/WifiManager;Landroid/content/Context;)V
    .locals 7
    .param p1, "apname"    # Ljava/lang/String;
    .param p2, "pass"    # Ljava/lang/String;
    .param p3, "wifiManager"    # Landroid/net/wifi/WifiManager;
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 251
    const/4 v3, 0x1

    .line 252
    .local v3, "v2":Z
    iget-object v0, p0, Lcom/iot/engine/WifiAPController;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    .line 253
    const-string v0, "wifi"

    invoke-virtual {p4, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/iot/engine/WifiAPController;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 256
    :cond_0
    iput-object p1, p0, Lcom/iot/engine/WifiAPController;->APname:Ljava/lang/String;

    .line 257
    iput-object p2, p0, Lcom/iot/engine/WifiAPController;->password:Ljava/lang/String;

    .line 258
    invoke-virtual {p0}, Lcom/iot/engine/WifiAPController;->wifiToggle()I

    move-result v0

    iget v1, p0, Lcom/iot/engine/WifiAPController;->b:I

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/iot/engine/WifiAPController;->wifiToggle()I

    move-result v0

    iget v1, p0, Lcom/iot/engine/WifiAPController;->a:I

    if-ne v0, v1, :cond_3

    :cond_1
    const/4 v6, 0x1

    .line 259
    .local v6, "v0":I
    :goto_0
    if-eqz v6, :cond_2

    .line 260
    const/4 v3, 0x0

    .line 264
    :cond_2
    new-instance v0, Lcom/iot/engine/WifiAPController$wifiControllerTask;

    move-object v1, p0

    move-object v2, p0

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/iot/engine/WifiAPController$wifiControllerTask;-><init>(Lcom/iot/engine/WifiAPController;Lcom/iot/engine/WifiAPController;ZZLandroid/content/Context;)V

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/iot/engine/WifiAPController$wifiControllerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 265
    return-void

    .end local v6    # "v0":I
    :cond_3
    move v6, v4

    .line 258
    goto :goto_0
.end method
