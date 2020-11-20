.class Lcom/iot/engine/RouterSetting$WifiReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RouterSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iot/engine/RouterSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WifiReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iot/engine/RouterSetting;


# direct methods
.method constructor <init>(Lcom/iot/engine/RouterSetting;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iot/engine/RouterSetting;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/iot/engine/RouterSetting$WifiReceiver;->this$0:Lcom/iot/engine/RouterSetting;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 194
    iget-object v8, p0, Lcom/iot/engine/RouterSetting$WifiReceiver;->this$0:Lcom/iot/engine/RouterSetting;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v9, v8, Lcom/iot/engine/RouterSetting;->sb:Ljava/lang/StringBuilder;

    .line 195
    iget-object v8, p0, Lcom/iot/engine/RouterSetting$WifiReceiver;->this$0:Lcom/iot/engine/RouterSetting;

    iget-object v9, p0, Lcom/iot/engine/RouterSetting$WifiReceiver;->this$0:Lcom/iot/engine/RouterSetting;

    invoke-static {v9}, Lcom/iot/engine/RouterSetting;->access$000(Lcom/iot/engine/RouterSetting;)Landroid/net/wifi/WifiManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v9

    iput-object v9, v8, Lcom/iot/engine/RouterSetting;->wifiList:Ljava/util/List;

    .line 196
    iget-object v8, p0, Lcom/iot/engine/RouterSetting$WifiReceiver;->this$0:Lcom/iot/engine/RouterSetting;

    iget-object v8, v8, Lcom/iot/engine/RouterSetting;->sb:Ljava/lang/StringBuilder;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\n        Number Of Wifi connections :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/iot/engine/RouterSetting$WifiReceiver;->this$0:Lcom/iot/engine/RouterSetting;

    iget-object v10, v10, Lcom/iot/engine/RouterSetting;->wifiList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 198
    .local v0, "ArraList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v8, p0, Lcom/iot/engine/RouterSetting$WifiReceiver;->this$0:Lcom/iot/engine/RouterSetting;

    iget-object v8, v8, Lcom/iot/engine/RouterSetting;->wifiList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_0

    .line 199
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 200
    .local v4, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/iot/engine/RouterSetting$WifiReceiver;->this$0:Lcom/iot/engine/RouterSetting;

    iget-object v8, v8, Lcom/iot/engine/RouterSetting;->sb:Ljava/lang/StringBuilder;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v10, Ljava/lang/Integer;

    add-int/lit8 v11, v3, 0x1

    invoke-direct {v10, v11}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v10}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ". "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    iget-object v8, p0, Lcom/iot/engine/RouterSetting$WifiReceiver;->this$0:Lcom/iot/engine/RouterSetting;

    iget-object v9, v8, Lcom/iot/engine/RouterSetting;->sb:Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/iot/engine/RouterSetting$WifiReceiver;->this$0:Lcom/iot/engine/RouterSetting;

    iget-object v8, v8, Lcom/iot/engine/RouterSetting;->wifiList:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/ScanResult;

    invoke-virtual {v8}, Landroid/net/wifi/ScanResult;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    iget-object v8, p0, Lcom/iot/engine/RouterSetting$WifiReceiver;->this$0:Lcom/iot/engine/RouterSetting;

    iget-object v8, v8, Lcom/iot/engine/RouterSetting;->sb:Ljava/lang/StringBuilder;

    const-string v9, "\n\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    const-string v9, "NAME"

    iget-object v8, p0, Lcom/iot/engine/RouterSetting$WifiReceiver;->this$0:Lcom/iot/engine/RouterSetting;

    iget-object v8, v8, Lcom/iot/engine/RouterSetting;->wifiList:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/ScanResult;

    iget-object v8, v8, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const-string v8, "ID"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 209
    .end local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    iget-object v8, p0, Lcom/iot/engine/RouterSetting$WifiReceiver;->this$0:Lcom/iot/engine/RouterSetting;

    invoke-static {v8}, Lcom/iot/engine/RouterSetting;->access$000(Lcom/iot/engine/RouterSetting;)Landroid/net/wifi/WifiManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v7

    .line 210
    .local v7, "wifiinfo":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v8

    int-to-long v8, v8

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v5

    .line 211
    .local v5, "myIPAddress":[B
    const/4 v6, 0x0

    .line 214
    .local v6, "myInetIP":Ljava/net/InetAddress;
    :try_start_0
    invoke-static {v5}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 224
    :goto_1
    new-instance v1, LAdapter/CustomSpinnerAdapter;

    iget-object v8, p0, Lcom/iot/engine/RouterSetting$WifiReceiver;->this$0:Lcom/iot/engine/RouterSetting;

    invoke-direct {v1, v8, v0}, LAdapter/CustomSpinnerAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 225
    .local v1, "customSpinnerAdapter":LAdapter/CustomSpinnerAdapter;
    iget-object v8, p0, Lcom/iot/engine/RouterSetting$WifiReceiver;->this$0:Lcom/iot/engine/RouterSetting;

    invoke-static {v8}, Lcom/iot/engine/RouterSetting;->access$100(Lcom/iot/engine/RouterSetting;)Landroid/widget/Spinner;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 227
    return-void

    .line 216
    .end local v1    # "customSpinnerAdapter":LAdapter/CustomSpinnerAdapter;
    :catch_0
    move-exception v2

    .line 218
    .local v2, "e":Ljava/net/UnknownHostException;
    invoke-virtual {v2}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto :goto_1
.end method
