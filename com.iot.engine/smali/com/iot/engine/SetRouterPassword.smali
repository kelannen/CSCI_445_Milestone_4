.class public Lcom/iot/engine/SetRouterPassword;
.super Landroid/app/Activity;
.source "SetRouterPassword.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iot/engine/SetRouterPassword$AsyncGetSSIDPASS;,
        Lcom/iot/engine/SetRouterPassword$AsyncDeviceList;
    }
.end annotation


# static fields
.field private static PASSWORD:Ljava/lang/String; = null

.field private static SSID:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "SetRouterPassword"

.field private static securepassword:Ljava/lang/String;

.field private static securessid:Ljava/lang/String;


# instance fields
.field adapter:LAdapter/DeviceListAdapter;

.field private arrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private imgBack:Landroid/widget/ImageView;

.field private imgRefresh:Landroid/widget/ImageView;

.field private messageType:Ljava/lang/String;

.field private recycler:Landroid/support/v7/widget/RecyclerView;

.field private sessionManager:LSession/SessionManager;

.field private spotDialog:Ldmax/dialog/SpotsDialog;

.field private txtHeading:Landroid/widget/TextView;

.field private wifimanager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-string v0, "gosmart"

    sput-object v0, Lcom/iot/engine/SetRouterPassword;->SSID:Ljava/lang/String;

    .line 46
    const-string v0, "12341234"

    sput-object v0, Lcom/iot/engine/SetRouterPassword;->PASSWORD:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/iot/engine/SetRouterPassword;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/SetRouterPassword;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/iot/engine/SetRouterPassword;->arrayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/iot/engine/SetRouterPassword;)Ldmax/dialog/SpotsDialog;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/SetRouterPassword;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/iot/engine/SetRouterPassword;->spotDialog:Ldmax/dialog/SpotsDialog;

    return-object v0
.end method

.method static synthetic access$202(Lcom/iot/engine/SetRouterPassword;Ldmax/dialog/SpotsDialog;)Ldmax/dialog/SpotsDialog;
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/SetRouterPassword;
    .param p1, "x1"    # Ldmax/dialog/SpotsDialog;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/iot/engine/SetRouterPassword;->spotDialog:Ldmax/dialog/SpotsDialog;

    return-object p1
.end method

.method static synthetic access$300(Lcom/iot/engine/SetRouterPassword;)LSession/SessionManager;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/SetRouterPassword;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/iot/engine/SetRouterPassword;->sessionManager:LSession/SessionManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/iot/engine/SetRouterPassword;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/SetRouterPassword;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/iot/engine/SetRouterPassword;->createHotspot(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private createHotspot(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 72
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 73
    const-string v1, "App Version"

    const-string v2, "Above Marshmellow"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    new-instance v0, Lcom/iot/engine/WifiAPController;

    invoke-direct {v0}, Lcom/iot/engine/WifiAPController;-><init>()V

    .line 75
    .local v0, "wifiAPController":Lcom/iot/engine/WifiAPController;
    iget-object v1, p0, Lcom/iot/engine/SetRouterPassword;->wifimanager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1, p2, v1, p0}, Lcom/iot/engine/WifiAPController;->wifiToggle(Ljava/lang/String;Ljava/lang/String;Landroid/net/wifi/WifiManager;Landroid/content/Context;)V

    .line 81
    .end local v0    # "wifiAPController":Lcom/iot/engine/WifiAPController;
    :goto_0
    return-void

    .line 78
    :cond_0
    const-string v1, "App Version"

    const-string v2, "Blow Marshmellow"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/iot/engine/SetRouterPassword;->setWifiApState(Landroid/content/Context;Z)Z

    goto :goto_0
.end method

.method public static getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 99
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 100
    .local v0, "netConfig":Landroid/net/wifi/WifiConfiguration;
    sget-object v1, Lcom/iot/engine/SetRouterPassword;->SSID:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 101
    sget-object v1, Lcom/iot/engine/SetRouterPassword;->PASSWORD:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 102
    iput-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 103
    iput v4, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 104
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 105
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 106
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 107
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 108
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 109
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 110
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 111
    return-object v0
.end method

.method private initControl()V
    .locals 3

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/iot/engine/SetRouterPassword;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/iot/engine/SetRouterPassword;->wifimanager:Landroid/net/wifi/WifiManager;

    .line 117
    const v1, 0x7f0d00d5

    invoke-virtual {p0, v1}, Lcom/iot/engine/SetRouterPassword;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, Lcom/iot/engine/SetRouterPassword;->recycler:Landroid/support/v7/widget/RecyclerView;

    .line 118
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/iot/engine/SetRouterPassword;->arrayList:Ljava/util/ArrayList;

    .line 119
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/iot/engine/SetRouterPassword;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 120
    .local v0, "mLayoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    iget-object v1, p0, Lcom/iot/engine/SetRouterPassword;->recycler:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 121
    const v1, 0x7f0d00eb

    invoke-virtual {p0, v1}, Lcom/iot/engine/SetRouterPassword;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/iot/engine/SetRouterPassword;->txtHeading:Landroid/widget/TextView;

    .line 122
    const v1, 0x7f0d0267

    invoke-virtual {p0, v1}, Lcom/iot/engine/SetRouterPassword;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/iot/engine/SetRouterPassword;->imgRefresh:Landroid/widget/ImageView;

    .line 123
    const v1, 0x7f0d0156

    invoke-virtual {p0, v1}, Lcom/iot/engine/SetRouterPassword;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/iot/engine/SetRouterPassword;->imgBack:Landroid/widget/ImageView;

    .line 125
    new-instance v1, LSession/SessionManager;

    invoke-direct {v1, p0}, LSession/SessionManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/iot/engine/SetRouterPassword;->sessionManager:LSession/SessionManager;

    .line 126
    iget-object v1, p0, Lcom/iot/engine/SetRouterPassword;->imgRefresh:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v1, p0, Lcom/iot/engine/SetRouterPassword;->imgBack:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v1, p0, Lcom/iot/engine/SetRouterPassword;->txtHeading:Landroid/widget/TextView;

    const-string v2, "Router Setting"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    return-void
.end method

.method public static setWifiApState(Landroid/content/Context;Z)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    .prologue
    const/4 v4, 0x0

    .line 85
    :try_start_0
    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 86
    .local v2, "mWifiManager":Landroid/net/wifi/WifiManager;
    if-eqz p1, :cond_0

    .line 87
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 89
    :cond_0
    invoke-static {}, Lcom/iot/engine/SetRouterPassword;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 90
    .local v0, "conf":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 92
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v5, "setWifiApEnabled"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/net/wifi/WifiConfiguration;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v6, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 95
    .end local v0    # "conf":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "mWifiManager":Landroid/net/wifi/WifiManager;
    :goto_0
    return v3

    .line 93
    :catch_0
    move-exception v1

    .line 94
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move v3, v4

    .line 95
    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 139
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 148
    :goto_0
    return-void

    .line 141
    :sswitch_0
    iget-object v0, p0, Lcom/iot/engine/SetRouterPassword;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 142
    new-instance v0, Lcom/iot/engine/SetRouterPassword$AsyncDeviceList;

    invoke-direct {v0, p0}, Lcom/iot/engine/SetRouterPassword$AsyncDeviceList;-><init>(Lcom/iot/engine/SetRouterPassword;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/iot/engine/SetRouterPassword$AsyncDeviceList;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 145
    :sswitch_1
    invoke-virtual {p0}, Lcom/iot/engine/SetRouterPassword;->finish()V

    goto :goto_0

    .line 139
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0d0156 -> :sswitch_1
        0x7f0d0267 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const v0, 0x7f0400a7

    invoke-virtual {p0, v0}, Lcom/iot/engine/SetRouterPassword;->setContentView(I)V

    .line 57
    invoke-direct {p0}, Lcom/iot/engine/SetRouterPassword;->initControl()V

    .line 61
    new-instance v0, Lcom/iot/engine/SetRouterPassword$AsyncGetSSIDPASS;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/iot/engine/SetRouterPassword$AsyncGetSSIDPASS;-><init>(Lcom/iot/engine/SetRouterPassword;Lcom/iot/engine/SetRouterPassword$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/iot/engine/SetRouterPassword$AsyncGetSSIDPASS;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 62
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 66
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 69
    return-void
.end method

.method public setAdapter()V
    .locals 2

    .prologue
    .line 133
    new-instance v0, LAdapter/DeviceListAdapter;

    iget-object v1, p0, Lcom/iot/engine/SetRouterPassword;->arrayList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, LAdapter/DeviceListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/iot/engine/SetRouterPassword;->adapter:LAdapter/DeviceListAdapter;

    .line 134
    iget-object v0, p0, Lcom/iot/engine/SetRouterPassword;->recycler:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/iot/engine/SetRouterPassword;->adapter:LAdapter/DeviceListAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 135
    iget-object v0, p0, Lcom/iot/engine/SetRouterPassword;->adapter:LAdapter/DeviceListAdapter;

    invoke-virtual {v0}, LAdapter/DeviceListAdapter;->notifyDataSetChanged()V

    .line 136
    return-void
.end method
