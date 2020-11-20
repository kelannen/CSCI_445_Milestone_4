.class public Lcom/iot/engine/RouterSetting;
.super Landroid/app/Activity;
.source "RouterSetting.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iot/engine/RouterSetting$WifiReceiver;
    }
.end annotation


# instance fields
.field private btnSubmit:Landroid/widget/Button;

.field private edtNewPassword:Landroid/widget/EditText;

.field private imgBack:Landroid/widget/ImageView;

.field private mSSIDName:Ljava/lang/String;

.field private mainWifi:Landroid/net/wifi/WifiManager;

.field private pDialog:Landroid/app/ProgressDialog;

.field private receiverWifi:Lcom/iot/engine/RouterSetting$WifiReceiver;

.field sb:Ljava/lang/StringBuilder;

.field private spSelectWifi:Landroid/widget/Spinner;

.field private txtHeading:Landroid/widget/TextView;

.field wifiList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/iot/engine/RouterSetting;->sb:Ljava/lang/StringBuilder;

    return-void
.end method

.method static synthetic access$000(Lcom/iot/engine/RouterSetting;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/RouterSetting;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/iot/engine/RouterSetting;->mainWifi:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/iot/engine/RouterSetting;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/RouterSetting;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/iot/engine/RouterSetting;->spSelectWifi:Landroid/widget/Spinner;

    return-object v0
.end method

.method private buildAlertMessageNoGps()V
    .locals 5

    .prologue
    .line 131
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 132
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const-string v2, "Your GPS seems to be disabled, do you want to enable it?"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    .line 133
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Yes"

    new-instance v4, Lcom/iot/engine/RouterSetting$2;

    invoke-direct {v4, p0}, Lcom/iot/engine/RouterSetting$2;-><init>(Lcom/iot/engine/RouterSetting;)V

    .line 134
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "No"

    new-instance v4, Lcom/iot/engine/RouterSetting$1;

    invoke-direct {v4, p0}, Lcom/iot/engine/RouterSetting$1;-><init>(Lcom/iot/engine/RouterSetting;)V

    .line 139
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 145
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 146
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 147
    return-void
.end method

.method private onClickOfSubmit()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 160
    iget-object v2, p0, Lcom/iot/engine/RouterSetting;->edtNewPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 161
    const-string v2, "Kindly enter password."

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 174
    :goto_0
    return-void

    .line 163
    :cond_0
    iget-object v2, p0, Lcom/iot/engine/RouterSetting;->edtNewPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8

    if-ge v2, v3, :cond_1

    .line 164
    const-string v2, "Kindly enter 8 digit password."

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 167
    :cond_1
    new-instance v1, LSession/SessionManager;

    invoke-direct {v1, p0}, LSession/SessionManager;-><init>(Landroid/content/Context;)V

    .line 168
    .local v1, "session":LSession/SessionManager;
    iget-object v2, p0, Lcom/iot/engine/RouterSetting;->mSSIDName:Ljava/lang/String;

    invoke-virtual {v1, v2}, LSession/SessionManager;->saveSSID(Ljava/lang/String;)V

    .line 169
    iget-object v2, p0, Lcom/iot/engine/RouterSetting;->edtNewPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, LSession/SessionManager;->saveSPassword(Ljava/lang/String;)V

    .line 171
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/iot/engine/SetRouterPassword;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 172
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/iot/engine/RouterSetting;->startActivity(Landroid/content/Intent;)V

    .line 173
    invoke-virtual {p0}, Lcom/iot/engine/RouterSetting;->finish()V

    goto :goto_0
.end method

.method private permissionsGranted()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 104
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startWifiScanning()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 89
    invoke-direct {p0}, Lcom/iot/engine/RouterSetting;->permissionsGranted()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcom/iot/engine/RouterSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/iot/engine/RouterSetting;->mainWifi:Landroid/net/wifi/WifiManager;

    .line 94
    iget-object v0, p0, Lcom/iot/engine/RouterSetting;->mainWifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 96
    invoke-virtual {p0}, Lcom/iot/engine/RouterSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi is disabled..making it enabled"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 97
    iget-object v0, p0, Lcom/iot/engine/RouterSetting;->mainWifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 99
    :cond_1
    new-instance v0, Lcom/iot/engine/RouterSetting$WifiReceiver;

    invoke-direct {v0, p0}, Lcom/iot/engine/RouterSetting$WifiReceiver;-><init>(Lcom/iot/engine/RouterSetting;)V

    iput-object v0, p0, Lcom/iot/engine/RouterSetting;->receiverWifi:Lcom/iot/engine/RouterSetting$WifiReceiver;

    .line 100
    iget-object v0, p0, Lcom/iot/engine/RouterSetting;->receiverWifi:Lcom/iot/engine/RouterSetting$WifiReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.SCAN_RESULTS"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/iot/engine/RouterSetting;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 101
    iget-object v0, p0, Lcom/iot/engine/RouterSetting;->mainWifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 102
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 150
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 158
    :goto_0
    return-void

    .line 152
    :sswitch_0
    invoke-direct {p0}, Lcom/iot/engine/RouterSetting;->onClickOfSubmit()V

    goto :goto_0

    .line 155
    :sswitch_1
    invoke-virtual {p0}, Lcom/iot/engine/RouterSetting;->finish()V

    goto :goto_0

    .line 150
    :sswitch_data_0
    .sparse-switch
        0x7f0d00ea -> :sswitch_0
        0x7f0d0156 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const v0, 0x7f040097

    invoke-virtual {p0, v0}, Lcom/iot/engine/RouterSetting;->setContentView(I)V

    .line 62
    const v0, 0x7f0d022f

    invoke-virtual {p0, v0}, Lcom/iot/engine/RouterSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/iot/engine/RouterSetting;->spSelectWifi:Landroid/widget/Spinner;

    .line 63
    const v0, 0x7f0d00ea

    invoke-virtual {p0, v0}, Lcom/iot/engine/RouterSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iot/engine/RouterSetting;->btnSubmit:Landroid/widget/Button;

    .line 64
    const v0, 0x7f0d00ed

    invoke-virtual {p0, v0}, Lcom/iot/engine/RouterSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/iot/engine/RouterSetting;->edtNewPassword:Landroid/widget/EditText;

    .line 65
    const v0, 0x7f0d00eb

    invoke-virtual {p0, v0}, Lcom/iot/engine/RouterSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iot/engine/RouterSetting;->txtHeading:Landroid/widget/TextView;

    .line 66
    const v0, 0x7f0d0156

    invoke-virtual {p0, v0}, Lcom/iot/engine/RouterSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/iot/engine/RouterSetting;->imgBack:Landroid/widget/ImageView;

    .line 67
    iget-object v0, p0, Lcom/iot/engine/RouterSetting;->btnSubmit:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object v0, p0, Lcom/iot/engine/RouterSetting;->txtHeading:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object v0, p0, Lcom/iot/engine/RouterSetting;->imgBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v0, p0, Lcom/iot/engine/RouterSetting;->txtHeading:Landroid/widget/TextView;

    const-string v1, "Select WiFi"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v0, p0, Lcom/iot/engine/RouterSetting;->spSelectWifi:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 72
    new-instance v0, Lcom/iot/engine/RouterSetting$WifiReceiver;

    invoke-direct {v0, p0}, Lcom/iot/engine/RouterSetting$WifiReceiver;-><init>(Lcom/iot/engine/RouterSetting;)V

    iput-object v0, p0, Lcom/iot/engine/RouterSetting;->receiverWifi:Lcom/iot/engine/RouterSetting$WifiReceiver;

    .line 84
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 177
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object v1, p1

    check-cast v1, Landroid/widget/Spinner;

    .line 178
    .local v1, "spinner":Landroid/widget/Spinner;
    invoke-virtual {v1}, Landroid/widget/Spinner;->getId()I

    move-result v2

    const v3, 0x7f0d022f

    if-ne v2, v3, :cond_0

    .line 180
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 181
    .local v0, "selectedItem":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "NAME"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/iot/engine/RouterSetting;->mSSIDName:Ljava/lang/String;

    .line 184
    .end local v0    # "selectedItem":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 188
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 114
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 115
    iget-object v0, p0, Lcom/iot/engine/RouterSetting;->receiverWifi:Lcom/iot/engine/RouterSetting$WifiReceiver;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/iot/engine/RouterSetting;->receiverWifi:Lcom/iot/engine/RouterSetting$WifiReceiver;

    invoke-virtual {p0, v0}, Lcom/iot/engine/RouterSetting;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iot/engine/RouterSetting;->receiverWifi:Lcom/iot/engine/RouterSetting$WifiReceiver;

    .line 119
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 108
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 109
    iget-object v0, p0, Lcom/iot/engine/RouterSetting;->receiverWifi:Lcom/iot/engine/RouterSetting$WifiReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.SCAN_RESULTS"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/iot/engine/RouterSetting;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 110
    invoke-virtual {p0}, Lcom/iot/engine/RouterSetting;->statusCheck()V

    .line 111
    return-void
.end method

.method public statusCheck()V
    .locals 3

    .prologue
    .line 121
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    .line 122
    const-string v1, "location"

    invoke-virtual {p0, v1}, Lcom/iot/engine/RouterSetting;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 123
    .local v0, "manager":Landroid/location/LocationManager;
    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 124
    invoke-direct {p0}, Lcom/iot/engine/RouterSetting;->buildAlertMessageNoGps()V

    .line 129
    .end local v0    # "manager":Landroid/location/LocationManager;
    :goto_0
    return-void

    .line 125
    .restart local v0    # "manager":Landroid/location/LocationManager;
    :cond_0
    invoke-direct {p0}, Lcom/iot/engine/RouterSetting;->startWifiScanning()V

    goto :goto_0

    .line 127
    .end local v0    # "manager":Landroid/location/LocationManager;
    :cond_1
    invoke-direct {p0}, Lcom/iot/engine/RouterSetting;->startWifiScanning()V

    goto :goto_0
.end method
